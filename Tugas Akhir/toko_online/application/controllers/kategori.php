<?php
class Kategori extends CI_Controller{
    public function masker()
    {
        $data['masker'] = $this->model_kategori->data_masker()->result();        
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('masker', $data);
        $this->load->view('templates/footer');
    }

    public function sabun()
    {
        $data['sabun'] = $this->model_kategori->data_sabun()->result();        
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('sabun', $data);
        $this->load->view('templates/footer');
    }

    public function hand_sanitazer()
    {
        $data['hand_sanitazer'] = $this->model_kategori->data_hand_sanitazer()->result();        
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('hand_sanitazer', $data);
        $this->load->view('templates/footer');
    }

    public function suplemen()
    {
        $data['suplemen'] = $this->model_kategori->data_suplemen()->result();        
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('suplemen', $data);
        $this->load->view('templates/footer');
    }

    public function alat_olahraga()
    {
        $data['alat_olahraga'] = $this->model_kategori->data_alat_olahraga()->result();        
        $this->load->view('templates/header');
        $this->load->view('templates/sidebar');
        $this->load->view('alat_olahraga', $data);
        $this->load->view('templates/footer');
    }
}