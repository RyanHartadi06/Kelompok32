<?php

class Model_Input extends CI_Model
{
    public function insert($tb, $data = array())
    {
        $this->load->database();
        return $this->db->insert($tb, $data);
    }

    function hitungtahap($idArr, $data)
    {
        $this->db->where_in("id_siswa", $idArr);
        $this->db->update("siswa", $data);
    }
}
