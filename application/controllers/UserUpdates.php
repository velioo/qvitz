<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class UserUpdates extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		$this->load->model('helpers_model');
		$this->load->library('form_validation');
		$this->load->model('users_model');
	}
	
	function index() {
		$this->settings();
	}
	
	function settings() {
		if($this->session->userdata('is_logged_in')) {
			$query = $this->users_model->check_if_user_connected_to_fb($this->session->userdata['id']);
				
			if($query !== FALSE) {
				$data['is_fb_connected'] = "Disconnect Facebook";
			} else {
				$data['is_fb_connected'] = "Connect Facebook";
			}
		} else {
			$this->helpers_model->unauthorized();
		}
		
		$data['title'] = 'Settings';
		$data['css'] = 'home.css';
		$this->load->view('user_settings', $data);
	}
	
	public function facebook_connect() {		
		if($this->session->userdata('is_logged_in')) {
		
			$query = $this->users_model->check_if_user_connected_to_fb($this->session->userdata['id']);
		
			if($query !== FALSE) {
					
				$query = $this->users_model->disconnect_facebook($this->session->userdata['id']);
					
				if($query !== FALSE) {
					$message = "You successfully disconnected your facebook";
				} else {				
					$message = "Please add a password to your account before disconnecting Facebook";								
				}
				
				$this->session->set_flashdata('message', $message);
				$this->settings();
					
			} else {
				redirect("login/facebook_login/connect");
			}
		} else {
			$this->helpers_model->bad_request();
		}
	}
	
	public function change_pass() {
		if($this->session->userdata('is_logged_in')) {
			$this->load->library('form_validation');
		
			$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[4]|max_length[32]');
			$this->form_validation->set_rules('password_confirm', 'Password Confirmation', 'trim|required|matches[password]');
			
			if($this->form_validation->run() == FALSE) {
				$this->settings();
			} else {
				$this->load->model('users_model');
	
				$password = hash('sha512', $this->input->post('password'));	
				
				$query = $this->users_model->change_password($this->session->userdata('id'), $password);
				
				if($query !== FALSE) {
					$this->session->set_flashdata('message', "You successfully changed your password");
					$data['title'] = 'Home';
					//$data['css'] = 'login.css';
					$data['header'] = 'You are Logged in';
					$this->settings();
				} else {
					$this->load->view('signup_page');
				}
			}
		} else {
			$this->helpers_model->unauthorized();
		}
	}
	
	public function check_if_username_exists($requested_username) {		
		if(strtolower($this->session->userdata('username')) == strtolower($requested_username)) {
			return TRUE;
		}
	
		$username_available = $this->users_model->check_if_username_exists($requested_username);
	
		if($username_available !== FALSE) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
	
	
	public function check_if_email_exists($requested_email) {	
		$email_available = $this->users_model->check_if_email_exists($requested_email);
	
		if($email_available !== FALSE) {
			return TRUE;
		} else {
			return FALSE;
		}
	
	}
	
	public function login_page($data) {
		$data['title'] = 'Login';
		//$data['css'] = 'login.css';
		$this->load->view('login_page', $data);
	}
	
	function nocache() {
		$this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
		$this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
		$this->output->set_header('Pragma: no-cache');
		$this->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
	}	
}
	
?>