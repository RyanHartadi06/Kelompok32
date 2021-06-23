<?php

class Input extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Model_Input', 'mi');
        belumlogin();
    }
    public function index()
    {
        $this->form_validation->set_rules('nama_siswa', 'Nama Siswa', 'required');
        $this->form_validation->set_rules('jk', 'Jenis Kelamin', 'required');
        $this->form_validation->set_rules('tahun_masuk', 'Tahun Masuk', 'required|trim|numeric|max_length[4]');
        $this->form_validation->set_rules('kelas', 'Kelas', 'required');
        // $this->form_validation->set_rules('jumlahpeserta' , 'Jumlah Peserta' , 'required');
        $this->form_validation->set_rules('singleDatePicker', 'Tanggal Lahir', 'required');
        $this->form_validation->set_rules('kehadiran', 'Kehadiran Siswa', 'required');
        $this->form_validation->set_rules('jarak_tempuh', 'Jarak Tempuh', 'required');
        $this->form_validation->set_rules('penghasilan', 'Penghasilan Orang Tua', 'required');


        if ($this->form_validation->run() == false) {
            $data['title'] = "Input Beasiswa";
            $data['admin'] = $this->db->get_where('pengguna', ['email' =>
            $this->session->userdata('email')])->row_array();
            $this->load->view("template/sidebar");
            $this->load->view("template/header", $data);
            $this->load->view('Admin/Input_Buah');
            $this->load->view("template/footer");
        } else {
            $jarak = $this->input->post('jarak_tempuh');
            $penghasilan = $this->input->post('jarak_tempuh');
            $kehadiran = $this->input->post('kehadiran');
            $setJarak = $jarak * 0.4;
            $setPenghasilan = $penghasilan * 0.3;
            $setKehadiran = $kehadiran * 0.3;
            $setAkhir = $setJarak + $setPenghasilan + $setKehadiran;
            $tambah = $this->mi->insert("siswa", array(
                'nama_siswa' => $this->input->post('nama_siswa'),
                'jenis_kelamin' => $this->input->post('jk'),
                'tahun_masuk' => $this->input->post('tahun_masuk'),
                'kelas' => $this->input->post('kelas'),
                'tanggal_lahir' => $this->input->post('singleDatePicker'),
                'jarak_tempuh_rumah' => $this->input->post('jarak_tempuh'),
                'penghasilan' => $this->input->post('penghasilan'),
                'kehadiran' => $this->input->post('kehadiran'),
                'c1' => '',
                'c2' => '',
                'c3' => '',
                'nilai_akhir' => '',
                'createdDate' => date('Y-m-d H:i:s'),

            ));
            if ($tambah) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                        Berhasil Menambahkan Calon Penerima Beasiswa!
                    </div>');
                redirect('Input');
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                            Gagal Menambahkan Calon Penerima Beasiswa!
                        </div>');
                redirect('Input');
            }
        }
    }
}
