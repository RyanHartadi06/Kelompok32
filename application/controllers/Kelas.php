<?php

class Kelas extends CI_Controller
{

  public function __construct()
  {
    parent::__construct();
    $this->load->model('Model_Input', 'mi');
    belumlogin();
  }
  public function index()
  {
    $data['title'] = "Input Beasiswa";
    $data['admin'] = $this->db->get_where('admin', ['email' =>
    $this->session->userdata('email')])->row_array();
    $data['kelas'] = $this->db->query("SELECT * FROM kelas")->result_array();
    $this->load->view("template/sidebar");
    $this->load->view("template/header", $data);
    $this->load->view('Admin/Kelas', $data);
    $this->load->view("template/footer");
  }

  public function edit($id)
  {
    $data['title'] = "Input Beasiswa";
    $data['admin'] = $this->db->get_where('admin', ['email' =>
    $this->session->userdata('email')])->row_array();
    $data['kelas'] = $this->db->query("SELECT * FROM kelas where id='$id'")->row();
    $this->load->view("template/sidebar");
    $this->load->view("template/header", $data);
    $this->load->view('Admin/Edit_Kelas', $data);
    $this->load->view("template/footer");
  }
  public function postedit($id)
  {
      $arr = [
          'kelas' => $this->input->post('kelas'),
      ];

      $this->db->where('id', $id);
      $update = $this->db->update('kelas', $arr);
      if ($update) {
          $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                  Berhasil Update Calon Penerima Beasiswa!
              </div>');
          redirect('Kelas');
      } else {
          $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                      Gagal Update Calon Penerima Beasiswa!
                  </div>');
          redirect('Kelas');
      }
  }

  public function delete($id)
  {
    $this->db->where('id', $id);
    $this->db->delete('kelas');

    $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
    Berhasil Menghapus Data
</div>');
    redirect('Kelas');
  }
  public function tambah()
  {
    $this->form_validation->set_rules('kelas', 'Kelas', 'required');


    if ($this->form_validation->run() == false) {
      $data['title'] = "Input Beasiswa";
      $data['admin'] = $this->db->get_where('admin', ['email' =>
      $this->session->userdata('email')])->row_array();
      $this->load->view("template/sidebar");
      $this->load->view("template/header", $data);
      $this->load->view('Admin/Tambah_Kelas');
      $this->load->view("template/footer");
    } else {

      $tambah = $this->mi->insert("kelas", array(

        'kelas' => $this->input->post('kelas'),
        'created_at' => date('Y-m-d H:i:s'),

      ));
      if ($tambah) {
        $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                Berhasil Menambahkan Kelas Baru
            </div>');
        redirect('Kelas');
      } else {
        $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                    Gagal Menambahkan Kelas Baru
                </div>');
        redirect('Kelas');
      }
    }
  }
}
