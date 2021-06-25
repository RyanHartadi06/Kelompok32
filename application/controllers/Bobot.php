<?php

class Bobot extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_Input', 'mi');
    belumlogin();
  }
  public function index()
  {
    $this->form_validation->set_rules('berat', 'Berat Buah', 'required');
    $this->form_validation->set_rules('panjang', 'panjang Buah', 'required');
    $this->form_validation->set_rules('diameter', 'diameter Buah', 'required');

    if ($this->form_validation->run() == false) {  
      $data['title'] = "Input Bobot";
      $data['admin'] = $this->db->get_where('pengguna', ['email' =>
      $this->session->userdata('email')])->row_array();
      $data['bobot'] = $this->db->query("SELECT * FROM bobot WHERE id_bobot = '1'")->row();
      $this->load->view("template/sidebar");
      $this->load->view("template/header", $data);
      $this->load->view('Admin/Bobot', $data);
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
    $this->db->where('id_bobot', '1');
        $update = $this->db->update('bobot', $arr);
        if ($update) {
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                    Berhasil update bobot!
                </div>');
            redirect('Bobot');
        } else {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                        Gagal update bobot!
                    </div>');
            redirect('Bobot');
        }
  }
}
  // public function postedit($id)
  // {
  //   $arr = [
  //     'kelas' => $this->input->post('kelas'),
  //   ];

  //   $this->db->where('id', $id);
  //   $update = $this->db->update('kelas', $arr);
  //   if ($update) {
  //     $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
  //                 Berhasil Update Calon Penerima Beasiswa!
  //             </div>');
  //     redirect('Kelas');
  //   } else {
  //     $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
  //                     Gagal Update Calon Penerima Beasiswa!
  //                 </div>');
  //     redirect('Kelas');
  //   }
  // }
}
