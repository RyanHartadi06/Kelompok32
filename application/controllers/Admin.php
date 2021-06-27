<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Model_Input', 'mi');
        belumlogin();
    }
    public function index()
    {
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['centroid'] = $this->db->query("SELECT * FROM centroid WHERE id_centroid = '1'")->row();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view("template/dashboard", $data);
        $this->load->view("template/footer");
        // echo json_encode($data);
    }
}
