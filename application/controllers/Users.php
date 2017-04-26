<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

class Users extends CI_Controller {

	public function __construct() {
		parent::__construct();
		$this->load->model('users_model');
		$this->load->model('helpers_model');
	}
	
	public function profile($username = NULL) {
		
		if($username != NULL) {
			$data['title'] = $username . '\'s profile';
			$data['css'] = 'home.css';
			$data['header'] = $username;
			if((isset($this->session->userdata['is_logged_in'])) and ($this->session->userdata['username'] == $username)) {
				$user = $this->users_model->get_user_info_logged($username);
			} else {
				$user = $this->users_model->get_user_info($username);
				if($user === FALSE) {
					$this->helpers_model->page_not_found();
				}
			}
				
			$data['user'] = $user;			
			$this->load->view('user_profile', $data);
		} else {
			$this->helpers_model->page_not_found();
		}
		
	}
	
}

?>