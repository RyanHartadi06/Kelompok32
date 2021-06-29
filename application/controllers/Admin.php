<?php
defined('BASEPATH') or exit('No direct script access allowed');
class Admin extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        belumlogin();
    }
    public function index()
    {
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        //$data['centroid'] = $this->db->query("SELECT * FROM centroid WHERE id_centroid = '1'")->row();
        $data['centroid'] = $this->db->query("SELECT * FROM centroid GROUP BY id_centroid asc")->result_array();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view("template/dashboard", $data);
        $this->load->view("template/footer");
        // echo json_encode($data);
    }
}
