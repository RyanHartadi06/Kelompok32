<?php

class Input extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Model_Input', 'mi');
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
            $this->load->view("template/sidebar");
            $this->load->view("template/header", $data);
            $this->load->view('Admin/Input_Buah');
            $this->load->view("template/footer");
        } else {
            $nama_buah = $this->input->post('nama_buah');
            $berat = $this->input->post('berat');
            $panjang = $this->input->post('panjang');
            $diameter = $this->input->post('diameter');
            // $setJarak = $jarak * 0.4;
            // $setPenghasilan = $penghasilan * 0.3;
            // $setKehadiran = $kehadiran * 0.3;
            // $setAkhir = $setJarak + $setPenghasilan + $setKehadiran;
            $tambah = $this->mi->insert("buah_naga", array(
                'nama_buah' => $this->input->post('nama_buah'),
                'berat' => $this->input->post('berat'),
                'panjang' => $this->input->post('panjang'),
                'diameter' => $this->input->post('diameter'),
                // 'kelas' => $this->input->post('kelas'),
                // 'tanggal_lahir' => $this->input->post('singleDatePicker'),
                // 'jarak_tempuh_rumah' => $this->input->post('jarak_tempuh'),
                // 'penghasilan' => $this->input->post('penghasilan'),
                // 'kehadiran' => $this->input->post('kehadiran'),
                // 'c1' => '',
                // 'c2' => '',
                // 'c3' => '',
                // 'nilai_akhir' => '',
                // 'createdDate' => date('Y-m-d H:i:s'),

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
}
