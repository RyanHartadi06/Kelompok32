<?php

class Uji extends CI_Controller
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


        if ($this->form_validation->run() == false) {
            $data['title'] = "Input Buah";
            $data['admin'] = $this->db->get_where('pengguna', ['email' =>
            $this->session->userdata('email')])->row_array();
            $query = $this->db->select('id_buah')->from('data_latih')->get()->last_row();
            if ($query) {
                $data['no'] = (int) $query->id_buah + 1;
            } else {
                $data['no'] = (int) 1;
            }
            $this->load->view("template/sidebar");
            $this->load->view("template/header", $data);
            $this->load->view('Admin/Input_Data_Uji');
            $this->load->view("template/footer");
        } else {

            $nama_buah = $this->input->post('nama_buah');
            $id_buah = $this->input->post('id_buah');
            $berat = $this->input->post('berat');
            $panjang = $this->input->post('panjang');
            $diameter = $this->input->post('diameter');
            $K = $this->input->post('K');

            $query = $this->db->query("SELECT * FROM data_latih")->result_array();
            foreach ($query as $items) {
                $uuid = $items['id_buah'];
                $e_berat = pow(($items['berat'] - $berat), 2);
                $e_panjang = pow(($items['panjang'] - $panjang), 2);
                $e_diameter = pow(($items['diameter'] - $diameter), 2);
                $jarak = sqrt($e_berat + $e_panjang + $e_diameter);
                $klasifikasi = $items['klasifikasi'];
                $data = [
                    'id_data_latih' => $uuid,
                    'id_data_uji' => $this->input->post('id_buah'),
                    'jarak' => number_format($jarak, 4),
                    'klasifikasi' => $klasifikasi,
                ];
                $tambah = $this->db->insert("jarak", $data);
            }
            $qa = $this->db->query("SELECT * FROM jarak WHERE id_data_uji = '$id_buah' ORDER BY jarak ASC LIMIT $K")->result_array();
            foreach ($qa as $key) {
                $data = [
                    'id_data_latih' => $key['id_data_latih'],
                    'id_data_uji' => $key['id_data_uji'],
                    'jarak' => $key['jarak'],
                    'klasifikasi' => $key['klasifikasi'],
                ];
                $add = $this->db->insert("neighbour", $data);
            }

            $qa = $this->db->query("SELECT * FROM neighbour WHERE id_data_uji = '$id_buah' AND klasifikasi = 'A'")->num_rows();
            $qb = $this->db->query("SELECT * FROM neighbour WHERE id_data_uji = '$id_buah' AND klasifikasi = 'B'")->num_rows();
            $qc = $this->db->query("SELECT * FROM neighbour WHERE id_data_uji = '$id_buah' AND klasifikasi = 'C'")->num_rows();

            $neighbour = max($qa, $qb, $qc);
            $hasilKlasifikasi = '';

            if ($neighbour == $qa) {
                $hasilKlasifikasi = 'A';
            } else if ($neighbour == $qb) {
                $hasilKlasifikasi = 'B';
            } else if ($neighbour == $qc) {
                $hasilKlasifikasi = 'C';
            }

            $hasilData = [
                'nama_buah' => $nama_buah,
                'berat' => $berat,
                'panjang' => $panjang,
                'diameter' => $diameter,
                'klasifikasi' => $hasilKlasifikasi,
                'createdDate' => date('Y-m-d H:i:s'),
            ];


            $this->db->insert('data_latih', $hasilData);

            $idTerakhir = $this->db->select('id_buah')->from('data_latih')->get()->last_row();

            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
            Data buah berhasil ditambahkan dan diuji dengan hasil klasifikasi Kelas ' . $hasilKlasifikasi . ' !
            </div>');
            redirect('Uji/detailUji/' . $idTerakhir->id_buah);
        }
    }
    public function detailUji($id)
    {
        if ($id) {
            $data['title'] = "Input Buah";
            $data['buah'] = $this->db->get_where('data_latih', ['id_buah' => $id])->row_array();
            $data['neighbour'] = $this->db->get_where('neighbour', ['id_data_uji' => $id])->result_array();

            $data['admin'] = $this->db->get_where('pengguna', ['email' =>
            $this->session->userdata('email')])->row_array();
            $this->load->view("template/sidebar");
            $this->load->view("template/header", $data);
            $this->load->view('Admin/detail', $data);
            $this->load->view("template/footer");
        } else {
            redirect(base_url());
        }
    }
}
