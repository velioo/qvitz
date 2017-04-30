<?php 

defined('BASEPATH') OR exit('No direct script access allowed');

Class History_model extends CI_Model {

	function __construct() {
		parent::__construct();

	}
	
	function update_history($quiz_id, $score) {
		$user_id = $this->session->userdata('id');
		$query = $this->db->insert('users_history', array('user_id' => $user_id, 'quiz_id' => $quiz_id, 'score' => $score));
		return $query;
	}
	
	function check_if_user_made_quiz($quiz_id) {
		$user_id = $this->session->userdata('id');
		$this->db->where('uh.quiz_id', $quiz_id);
		$this->db->where('uh.user_id', $user_id);
		$query = $this->db->get('users_history as uh');
		if($query->num_rows() == 0) {
			return FALSE;
		} else {
			return TRUE;
		}
	}
}
?>