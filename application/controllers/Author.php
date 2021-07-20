<?php

class Author extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Maksi', 'mi');
        belumlogin();
    }
    public function index()
    {
        $data['title'] = "Author";
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view('Admin/Author');
        $this->load->view("template/footer");
    }
}
