<?php

class Auth extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->library('form_validation');
        $this->load->model('Model_Auth', 'v');
        // $this->load->library('curl');
        // is_logged_in();
    }
    public function Login()
    {
        $this->form_validation->set_rules('email', 'Email', 'required|trim|valid_email');
        $this->form_validation->set_rules('password', 'Password', 'required|trim');
        if ($this->form_validation->run() == false) {
            $data['title'] = "Login";
            $this->load->view('templates/auth_header', $data);
            $this->load->view('Admin/Login');
            $this->load->view('templates/auth_footer');
        } else {
            $this->_login();
            // $result = $this->curl->simple_get('http://example.com/');
            // var_dump($result);
        }
    }
    private function _login()
    {
        $email = $this->input->post('email');
        $password = md5($this->input->post('password'));

        //lakukan pengecekan apakah email dari user ada
        $user = $this->db->get_where('pengguna', ['email' => $email])->row_array();

        if ($user) { //jika user active
            if ($password === $user['password']) {
                $data = [
                    'id_admin' => $user['id_admin'],
                    'email' => $user['email'],
                ];
                $this->session->set_userdata($data);
                redirect('Admin');
            } else {
                $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                                Wrong password !
                        </div>');
                redirect('');
            }
        } else {
            $this->session->set_flashdata('message', '<div class="alert alert-danger" role="alert">
                    Email Not Register
                </div>');
            redirect('');
        }
    }
    public function logout()
    {
        $this->session->unset_userdata('id_admin');
        $this->session->unset_userdata('email');

        $this->session->set_flashdata('message', '<div class="alert alert-success" role="alert">
            Your account has been logged out!
            </div>');
        redirect('Auth/Login');
    }
}
