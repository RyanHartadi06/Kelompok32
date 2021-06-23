<?php

class Ranking extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Model_Get', 'mi');
        $this->load->model('Model_Input', 'Model_Input');
        belumlogin();
    }
    public function index()
    {
        $data['admin'] = $this->db->get_where('admin', ['email' =>
        $this->session->userdata('email')])->row_array();
        $data['siswa'] = $this->mi->getSiswa();

        $this->load->view("template/sidebar");
        $this->load->view("template/header", $data);
        $this->load->view("Admin/Ranking", $data);
        $this->load->view("template/footer");
    }

    public function tambah()
    {

        $q = $this->db->query("SELECT * FROM siswa")->result_array();
        $totalk = $this->db->query("SELECT MAX(jarak_tempuh_rumah) as k FROM siswa")->row();
        $totalp = $this->db->query("SELECT MIN(penghasilan) as p FROM siswa")->row();
        $totale = $this->db->query("SELECT MAX(kehadiran) as e FROM siswa")->row();
        //
        //Result array => foreach ($q as $asd)
        //row =>  $totalk->k;
        foreach ($q as $siswa) {
            $id = $siswa['id_siswa'];
            $jarak = $siswa['jarak_tempuh_rumah'] / $totalk->k;
            $penghasilan =  $totalp->p / $siswa['penghasilan'];
            $kehadiran = $siswa['kehadiran'] /  $totale->e;
            //normalisasinya
            $nilaic1 = $jarak * 0.4;
            $nilaic2 = $penghasilan * 0.3;
            $nilaic3 = $kehadiran * 0.3;
            $jumlahakhir = $nilaic1 + $nilaic2 + $nilaic3;

            $arr = [
                'c1' => $jarak,
                'c2' => $penghasilan,
                'c3' => $kehadiran,
                'nilai_akhir' => $jumlahakhir,
            ];

            $this->Model_Input->hitungtahap($id, $arr);
        }

        if ($this->mi->getRanking($_POST) > 0) {
            $a = implode($_POST);

            $data['admin'] = $this->db->get_where('admin', ['email' =>
            $this->session->userdata('email')])->row_array();

            $this->session->set_flashdata('pesan', $a);

            $data['siswa'] = $this->mi->getRanking($a);

            // $this->load->view("template/sidebar");
            // $this->load->view("template/header", $data);
            $this->load->view("Admin/PrintRanking", $data);
            // $this->load->view("template/footer");
        }
    }

    public function cetak()
    {
        $a = implode($_POST);

        $data['siswa'] = $this->mi->getRanking($a);


        $this->load->view("Admin/Surat", $data);
    }
}
