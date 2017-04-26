<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct() {
		parent::__construct();
	}
	
	public function index() {	
		
		$data = array();
		
		if($this->session->userdata('is_logged_in')) {
			$data['header'] = "Welcome back {$this->session->userdata('username')}";
		} else {
			$data['header'] = "Qvitz is a platform for creating and making quizes";
		}
		
		$data['title'] = 'Qvitz';
		$data['css'] = 'home.css';
		$this->load->view('home', $data);
	}
}
