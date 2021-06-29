<?php

class Uji extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Maksi', 'mi');
        belumlogin();
    }
    public function index()
    {
        $this->form_validation->set_rules('nama_buah', 'Nama Buah', 'required');
        $this->form_validation->set_rules('berat', 'Berat Buah', 'required');
        $this->form_validation->set_rules('panjang', 'panjang Buah', 'required');
        $this->form_validation->set_rules('diameter', 'diameter Buah', 'required');


        if ($this->form_validation->run() == false) {
            $data['title'] = "Input Buah";
            $data['admin'] = $this->db->get_where('pengguna', ['email' =>
            $this->session->userdata('email')])->row_array();
            $this->load->view("template/sidebar");
            $this->load->view("template/header", $data);
            $this->load->view('Admin/Input_Data_Uji');
            $this->load->view("template/footer");
        } else {
            $nama_buah = $this->input->post('nama_buah');
            $berat = $this->input->post('berat');
            $panjang = $this->input->post('panjang');
            $diameter = $this->input->post('diameter');

            $centorid1 = $this->db->get_where('centroid', ['id_centroid' => 1])->result_array();
            $centorid2 = $this->db->get_where('centroid', ['id_centroid' => 2])->result_array();
            $centorid3 = $this->db->get_where('centroid', ['id_centroid' => 3])->result_array();
            $c1 = sqrt(pow(($berat - $centorid1[0]['berat']), 2) + pow(($panjang - $centorid1[0]['panjang']), 2) + pow(($diameter - $centorid1[0]['diameter']), 2));

            $c2 = sqrt(pow(($berat - $centorid2[0]['berat']), 2) + pow(($panjang - $centorid2[0]['panjang']), 2) + pow(($diameter - $centorid2[0]['diameter']), 2));

            $c3 = sqrt(pow(($berat - $centorid3[0]['berat']), 2) + pow(($panjang - $centorid3[0]['panjang']), 2) + pow(($diameter - $centorid3[0]['diameter']), 2));

            $jarakterdekat = min($c1, $c2, $c3);
            // var_dump(min($c1, $c2, $c3));die;


            $tambah = $this->db->insert("uji", array(
                'nama_buah' => $this->input->post('nama_buah'),
                'berat' => $this->input->post('berat'),
                'panjang' => $this->input->post('panjang'),
                'diameter' => $this->input->post('diameter'),
                'jarak_terdekat' => $jarakterdekat,
                'nilai_c1' => $c1,
                'nilai_c2' => $c2,
                'nilai_c3' => $c3,
                'klasifikasi' => "",
                // 'klasifikasi_akhir' => '',
                'createdDate' => date('Y-m-d H:i:s'),

            ));
            if ($tambah) {
                $this->session->set_flashdata('pesan', '<div class="alert alert-success" role="alert">
                        Berhasil Menambahkan data buah!
                        </div>');
                redirect('Uji');
            } else {
                $this->session->set_flashdata('pesan', '<div class="alert alert-danger" role="alert">
                            Gagal Menambahkan data buah!
                        </div>');
                redirect('Uji');
            }
        }
    }
}
