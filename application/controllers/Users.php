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
			$this->load->model('quizes_model');
			if(($this->session->userdata['is_logged_in'] === TRUE) and ($this->session->userdata['username'] == $username)) {
				$user = $this->users_model->get_user_info_logged($username);
			} else {
				$user = $this->users_model->get_user_info($username);
				if($user === FALSE) {
					$this->helpers_model->page_not_found();
				}
			}	
			
			$total_quizes = $this->quizes_model->get_total_quizes_count(NULL, $user['id']);
			
			if($total_quizes !== FALSE) {
				$data['limit'] = 10;
				$data['total_groups'] = ceil($total_quizes/$data['limit']);
			}
			
			$data['user'] = $user;	
			$data['title'] = $username . '\'s profile';
			$data['css'] = 'user.css';
			$data['header'] = $username;
			$this->load->view('user_profile', $data);
		} else {
			$this->helpers_model->page_not_found();
		}
		
	}
	
}

?>