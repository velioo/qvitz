<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct() {
		parent::__construct();
	}
	
	public function index() {
		
		$data = array();
		
		if($this->session->userdata('is_logged_in')) {
			$this->load->model('users_model');
			$query = $this->users_model->check_if_user_connected_to_fb($this->session->userdata['id']);
			
			if($query !== FALSE) {
				$data['is_fb_connected'] = "Disconnect Facebook";
			} else {
				$data['is_fb_connected'] = "Connect Facebook";
			}
		} 
		
		$data['title'] = 'Qvitz';
		$data['css'] = 'home.css';
		$this->load->view('home', $data);
	}
}
