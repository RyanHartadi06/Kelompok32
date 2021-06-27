<?php

class Buah extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('Model_Get', 'mi');
        belumlogin();
    }
    public function index()
    {
        $data['title'] = "Detail Buah";
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['buah'] = $this->db->query("SELECT * FROM buah_naga GROUP BY id_buah desc")->result_array();
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
        $data['buah'] = $this->db->query("SELECT * FROM buah_naga WHERE id_buah=$id")->row_array();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view('Admin/DetailBuah', $data);
        $this->load->view("template/footer");
    }
    public function edit($id)
    {
        $data['title'] = "List Calon Beasiswa";
        $data['admin'] = $this->db->get_where('pengguna', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['detail'] = $this->db->query("SELECT * FROM siswa , kelas WHERE kelas.id = siswa.kelas AND siswa.id_siswa = '$id'")->row();
        $data['kelas'] = $this->db->query("SELECT * FROM kelas")->result_array();
        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view('Admin/Edit_Siswa', $data);
        $this->load->view("template/footer");
    }
    public function postedit($id)
    {
        $arr = [
            'nama_siswa' => $this->input->post('nama_siswa'),
            'jenis_kelamin' => $this->input->post('jk'),
            'tahun_masuk' => $this->input->post('tahun_masuk'),
            'kelas' => $this->input->post('kelas'),
            'tanggal_lahir' => $this->input->post('singleDatePicker'),
            'jarak_tempuh_rumah' => $this->input->post('jarak_tempuh'),
            'penghasilan' => $this->input->post('penghasilan'),
            'kehadiran' => $this->input->post('kehadiran'),
        ];

        $this->db->where('id_siswa', $id);
        $update = $this->db->update('siswa', $arr);
        if ($update) {
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                    Berhasil Update Calon Penerima Beasiswa!
                </div>');
            redirect('List_Siswa');
        } else {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                        Gagal Update Calon Penerima Beasiswa!
                    </div>');
            redirect('List_Siswa');
        }
    }
    public function hapus($id)
    {
        $data = $this->mi->hapusdata($id);
        if ($data) {
            $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                        Data Berhasil Dihapus
                </div>');
            redirect('List_Siswa');
        } else {
            $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                        Data Gagal Dihapus
                </div>');
            redirect('List_Siswa');
        }
    }
}
