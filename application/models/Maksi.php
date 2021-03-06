<?php
class Maksi extends CI_Model
{
    public function hapusdata($id)
    {
        $this->db->where('id_buah', $id);
        return $this->db->delete('data_latih');
    }
    public function hapusdatauji($id)
    {
        $this->db->where('id_buah', $id);
        return $this->db->delete('data_uji');
    }
    function randomkode($maxlength)
    {
        $chary = array(
            "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z",
            "0", "1", "2", "3", "4", "5", "6", "7", "8", "9",
            "A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"
        );
        $return_str = "";
        for ($x = 0; $x < $maxlength; $x++) {
            $return_str .= $chary[rand(0, count($chary) - 1)];
        }
        return $return_str;
    }
    public function insert($tb, $data = array())
    {
        $this->load->database();
        return $this->db->insert($tb, $data);
    }
}
