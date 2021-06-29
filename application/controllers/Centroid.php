<?php

class Centroid extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    belumlogin();
  }
  public function index()
  {
    $this->form_validation->set_rules('berat', 'Berat Buah', 'required');
    $this->form_validation->set_rules('panjang', 'panjang Buah', 'required');
    $this->form_validation->set_rules('diameter', 'diameter Buah', 'required');

    if ($this->form_validation->run() == false) {
      $data['title'] = "Input Centroid";
      $data['admin'] = $this->db->get_where('pengguna', ['email' =>
      $this->session->userdata('email')])->row_array();
      $data['centroid'] = $this->db->query("SELECT * FROM centroid WHERE id_centroid = '1'")->row();
      $this->load->view("template/sidebar");
      $this->load->view("template/header", $data);
      $this->load->view('Admin/Centroid', $data);
      $this->load->view("template/footer");
    } else {
      // $berat = $this->input->post('berat');
      // $panjang = $this->input->post('panjang');
      // $diameter = $this->input->post('diameter');
      $arr = [
        'berat' => $this->input->post('berat'),
        'panjang' => $this->input->post('panjang'),
        'diameter' => $this->input->post('diameter'),
      ];
      $this->db->where('id_centroid', '1');
      $update = $this->db->update('centroid', $arr);
      if ($update) {
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                    Berhasil update centroid!
                </div>');
        redirect('Centroid');
      } else {
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                        Gagal update centroid!
                    </div>');
        redirect('Centroid');
      }
    }
  }
}
