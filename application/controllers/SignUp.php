<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class SignUp extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		$this->load->model('users_model');
		$this->load->model('helpers_model');
	}
	
	public function index() {
		$this->signup_page();
	}
	
	public function signup_page() {
		$data['title'] = 'Sign Up';
		$data['css'] = 'login.css';
		$data['header'] = 'Join Qvitz !';
		$this->load->view('signup_page', $data);
	}
	
	public function create_user() {
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[4]|max_length[15]|callback_check_if_username_exists|alpha_dash');
		$this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|callback_check_if_email_exists');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[4]|max_length[32]');
		$this->form_validation->set_rules('password_confirm', 'Password Confirmation', 'trim|required|matches[password]');	
		
		if($this->form_validation->run() == FALSE) {
			$this->signup_page();
		} else {			
			$query = $this->users_model->create_user();		
			
			if($query !== FALSE) {		
				$data['account_created'] = "Your account has been created.<br/><br/> You may now log in";
				$data['title'] = 'Login';
				$data['css'] = 'login.css';
				$data['header'] = 'Please Login';
				$this->load->view('login_page', $data);
			} else {
				$this->load->view('signup_page');
			}
		}
	}
	
	public function create_facebook_user() {
 		$this->load->library('form_validation');
			
 		$fb_info = $this->session->tempdata('fb_info');
 		
		$this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[4]|max_length[15]|callback_check_if_username_exists|alpha_dash');		
		if($fb_info['fb_email'] === FALSE) {
			 $this->form_validation->set_rules('email', 'Email', 'trim|required|valid_email|callback_check_if_email_exists');
			 $email = $this->input->post('email');
		} else {
			 $email = $fb_info['fb_email'];
		}
		
		if($this->form_validation->run() == FALSE) {
			if($fb_info['fb_email'] === FALSE) {
				$data['header'] = 'Choose your Username and Email';
			} else {
				$data['header'] = 'Choose your Username';
			}
			$data['fb_access_token'] = $fb_info['fb_access_token'];
			$data['fb_user_id'] = $fb_info['fb_user_id'];
			$data['fb_email'] = $fb_info['fb_email'];
			$data['title'] = "Sign Up";
			$data['css'] = 'login.css';
			$this->load->view('fb_user_signup', $data);
		} else {		
			
			$ch = curl_init();
			curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);
			curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
			curl_setopt($ch, CURLOPT_URL, 'https://graph.facebook.com/me?access_token=' . $fb_info['fb_access_token']);
			$result = curl_exec($ch);
			$httpcode = curl_getinfo($ch, CURLINFO_HTTP_CODE);
			curl_close($ch);
			
			$result = json_decode($result);			
			
			if(isset($result->id)) {				
				$query = $this->users_model->create_new_user_by_facebook_login($fb_info['fb_user_id'],$this->input->post('username'), $email, $fb_info['fb_access_token']);					
				if($query !== FALSE) {
					$data = array(
							'id' => $query['id'],
							'username' => $query['username'],
							'is_logged_in' => true,
							'email' => $query['email'],
							'user_avatar' => $query['profile_image'],
							'fb_access_token' => $fb_info['fb_access_token']
					);
					$this->session->set_userdata($data);
					
					redirect("welcome");
				} else {
					$this->signup_page();
				}				
			} else {
				$this->helpers_model->unauthorized_error();
			}
		} 
	}
	
	public function check_if_username_exists($requested_username) {
		
		$username_available = $this->users_model->check_if_username_exists($requested_username);
		
		if($username_available) {
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
}
	

?>