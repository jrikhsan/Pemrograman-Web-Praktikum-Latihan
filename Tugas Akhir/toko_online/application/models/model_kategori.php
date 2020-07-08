<?php

class Model_kategori extends CI_Model{
    public function data_masker(){
        return $this->db->get_where("tb_barang", array('kategori' => 'masker'));
    }

    public function data_sabun(){
        return $this->db->get_where("tb_barang", array('kategori' => 'sabun'));
    }

    public function data_hand_sanitazer(){
        return $this->db->get_where("tb_barang", array('kategori' => 'hand sanitazer'));
    }

    public function data_suplemen(){
        return $this->db->get_where("tb_barang", array('kategori' => 'suplemen'));
    }

    public function data_alat_olahraga(){
        return $this->db->get_where("tb_barang", array('kategori' => 'alat olahraga'));
    }	
}