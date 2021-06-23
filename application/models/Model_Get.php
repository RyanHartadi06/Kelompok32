<?php

class Model_Get extends CI_Model
{
    public function getSiswa()
    {
        $query = $this->db->get('siswa');
        return $query->result_array();
    }
    public function getRanking($limit)
    {
        $this->db->select('*');
        $this->db->from('siswa');
        $this->db->order_by('nilai_akhir', 'desc');
        $this->db->order_by('penghasilan', 'desc');
        $this->db->order_by('jarak_tempuh_rumah', 'desc');
        $this->db->order_by('kehadiran', 'desc');
        $this->db->order_by('nama_siswa', 'asc');
        $this->db->limit($limit);
        $query = $this->db->get();
        return $query->result_array();
    }
    public function getData($table)
    {
        return $this->db->get($table);
    }
    public function hapusdata($id)
    {
        $this->db->where('id_siswa', $id);
        return $this->db->delete('siswa');
    }
    public function detail($id)
    {
        return $this->db->get_where("siswa", [
            'id_siswa' => $id
        ])->result_array();
    }
}
