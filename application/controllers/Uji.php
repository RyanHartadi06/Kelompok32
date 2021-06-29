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
            $this->load->view("template/sidebar");
            $this->load->view("template/header", $data);
            $this->load->view('Admin/Input_Data_Uji');
            $this->load->view("template/footer");
        } else {
            $nama_buah = $this->input->post('nama_buah');
            $berat = $this->input->post('berat');
            $panjang = $this->input->post('panjang');
            $diameter = $this->input->post('diameter');
            $tambah = $this->mi->insert("buah_naga", array(
                'nama_buah' => $this->input->post('nama_buah'),
                'berat' => $this->input->post('berat'),
                'panjang' => $this->input->post('panjang'),
                'diameter' => $this->input->post('diameter'),
                // 'jumlah' => '',
                // 'nilai_c1' => '',
                // 'nilai_c2' => '',
                // 'nilai_c3' => '',
                // 'klasifikasi' => "",
                // 'klasifikasi_akhir' => '',
                'createdDate' => date('Y-m-d H:i:s'),

            ));
            if ($tambah) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                        Berhasil Menambahkan data buah!
                        </div>');
                redirect('Uji');
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                            Gagal Menambahkan data buah!
                        </div>');
                redirect('Uji');
            }
        }
    }
}
