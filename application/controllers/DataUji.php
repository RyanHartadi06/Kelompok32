<?php

class DataUji extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Maksi', 'mi');
        belumlogin();
    }
    public function index()
    {
        $data['title'] = "Data Uji";
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['buah'] = $this->db->query("SELECT * FROM data_uji GROUP BY id_buah desc")->result_array();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view('Admin/DataUji', $data);
        $this->load->view("template/footer");
    }
    public function detail($id)
    {
        $data['title'] = "Detail Buah";
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['buah'] = $this->db->query("SELECT * FROM data_uji WHERE id_buah=$id")->row_array();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view('Admin/DetailDataUji', $data);
        $this->load->view("template/footer");
    }
    public function hapus($id)
    {
        $data = $this->mi->hapusdatauji($id);
        if ($data) {
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                        Data Berhasil Dihapus
                </div>');
            redirect('DataUji');
        } else {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                        Data Gagal Dihapus
                </div>');
            redirect('DataUji');
        }
    }
}
