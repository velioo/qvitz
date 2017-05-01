<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends CI_Controller {

	public function __construct() {
		parent::__construct();
	}
	
	public function index() {			
		
		$this->load->model('quizes_model');
		
		$total_quizes = $this->quizes_model->get_total_quizes_count();
		
		if($total_quizes !== FALSE) {
			$data['limit'] = 10;
			$data['total_groups'] = ceil($total_quizes/$data['limit']);
		}		
		
		$data['header'] = "Latest Quizes";
		$data['title'] = 'Qvitz';
		$data['css'] = 'quiz_boxes.css';
		$this->load->view('home', $data);
	}
}
