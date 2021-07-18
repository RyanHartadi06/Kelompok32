<?php

class Input extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Maksi', 'mi');
        belumlogin();
    }
    public function index()
    {
        $this->form_validation->set_rules('nama_buah', 'Nama Buah', 'required');
        $this->form_validation->set_rules('berat', 'Berat Buah', 'required');
        $this->form_validation->set_rules('panjang', 'panjang Buah', 'required');
        $this->form_validation->set_rules('diameter', 'diameter Buah', 'required');
        $this->form_validation->set_rules('klasifikasi', 'Klasifikasi Buah', 'required');


        if ($this->form_validation->run() == false) {
            $data['title'] = "Input Buah";
            $data['admin'] = $this->db->get_where('pengguna', ['email' =>
            $this->session->userdata('email')])->row_array();
            $this->load->view("template/sidebar");
            $this->load->view("template/header", $data);
            $this->load->view('Admin/Input_Buah');
            $this->load->view("template/footer");
        } else {
            $nama_buah = $this->input->post('nama_buah');
            $berat = $this->input->post('berat');
            $panjang = $this->input->post('panjang');
            $diameter = $this->input->post('diameter');
            $tambah = $this->mi->insert("data_latih", array(
                'nama_buah' => $this->input->post('nama_buah'),
                'berat' => $this->input->post('berat'),
                'panjang' => $this->input->post('panjang'),
                'diameter' => $this->input->post('diameter'),
                'klasifikasi' =>  $this->input->post('klasifikasi'),
                'createdDate' => date('Y-m-d H:i:s'),

            ));
            if ($tambah) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                        Berhasil Menambahkan data buah!
                        </div>');
                redirect('Input');
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                            Gagal Menambahkan data buah!
                        </div>');
                redirect('Input');
            }
        }
    }
    public function proses()
    {
        // $klasifikasiA = $this->db->query("SELECT * FROM buah_naga WHERE klasifikasi_awal = 'A'")->result_array();
        // $klasifikasiB = $this->db->query("SELECT * FROM buah_naga WHERE klasifikasi_awal = '2'")->result_array();
        // $klasifikasiC = $this->db->query("SELECT * FROM buah_naga WHERE klasifikasi_awal = '3'")->result_array();

        $beratA = $this->db->query("SELECT SUM(berat) as berat FROM data_latih WHERE klasifikasi = 'A'")->row();
        $panjangA = $this->db->query("SELECT SUM(panjang) as panjang FROM data_latih WHERE klasifikasi = 'A'")->row();
        $diameterA = $this->db->query("SELECT SUM(diameter) as diameter FROM data_latih WHERE klasifikasi = 'A'")->row();

        $beratB = $this->db->query("SELECT SUM(berat) as berat FROM data_latih WHERE klasifikasi = 'B'")->row();
        $panjangB = $this->db->query("SELECT SUM(panjang) as panjang FROM data_latih WHERE klasifikasi = 'B'")->row();
        $diameterB = $this->db->query("SELECT SUM(diameter) as diameter FROM data_latih WHERE klasifikasi = 'B'")->row();

        $beratC = $this->db->query("SELECT SUM(berat) as berat FROM data_latih WHERE klasifikasi = 'C'")->row();
        $panjangC = $this->db->query("SELECT SUM(panjang) as panjang FROM data_latih WHERE klasifikasi = 'C'")->row();
        $diameterC = $this->db->query("SELECT SUM(diameter) as diameter FROM data_latih WHERE klasifikasi = 'C'")->row();

        $jumA = $this->db->query("SELECT COUNT(id_buah) as id FROM data_latih WHERE klasifikasi = 'A'")->row();
        $jumB = $this->db->query("SELECT COUNT(id_buah) as id FROM data_latih WHERE klasifikasi = 'B'")->row();
        $jumC = $this->db->query("SELECT COUNT(id_buah) as id FROM data_latih WHERE klasifikasi = 'C'")->row();

        $perhitunganA = [
            'berat' => $beratA->berat / $jumA->id,
            'panjang' => $panjangA->panjang / $jumA->id,
            'diameter' => $diameterA->diameter / $jumA->id,
        ];
        $perhitunganB = [
            'berat' => $beratB->berat / $jumB->id,
            'panjang' => $panjangB->panjang / $jumB->id,
            'diameter' => $diameterB->diameter / $jumB->id,
        ];
        $perhitunganC = [
            'berat' => $beratC->berat / $jumC->id,
            'panjang' => $panjangC->panjang / $jumC->id,
            'diameter' => $diameterC->diameter / $jumC->id,
        ];

        $this->db->where('id_centroid', '1');
        $this->db->update('centroid', $perhitunganA);

        $this->db->where('id_centroid', '2');
        $this->db->update('centroid', $perhitunganB);

        $this->db->where('id_centroid', '3');
        $this->db->update('centroid', $perhitunganC);

        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                            Centroid Berhasil Di Update
                        </div>');
        redirect('Input');
    }
}
