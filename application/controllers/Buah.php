<?php

class Buah extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Maksi', 'mi');
        belumlogin();
    }
    public function index()
    {
        $data['title'] = "Detail Buah";
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['buah'] = $this->db->query("SELECT * FROM data_latih GROUP BY id_buah desc")->result_array();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view('Admin/Buah', $data);
        $this->load->view("template/footer");
    }
    public function detail($id)
    {
        $data['title'] = "Detail Buah";
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['buah'] = $this->db->query("SELECT * FROM data_latih WHERE id_buah=$id")->row_array();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view('Admin/DetailBuah', $data);
        $this->load->view("template/footer");
    }
    public function hapus($id)
    {
        $data = $this->mi->hapusdata($id);
        if ($data) {
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                        Data Berhasil Dihapus
                </div>');
            redirect('Buah');
        } else {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                        Data Gagal Dihapus
                </div>');
            redirect('Buah');
        }
    }
}
