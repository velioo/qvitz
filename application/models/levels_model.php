<?php

defined('BASEPATH') OR exit('No direct script access allowed');

Class Levels_model extends CI_Model {

	function __construct() {
		parent::__construct();
	}

	function add_points($user_id, $points) {		
		$this->db->select('points');
		$this->db->where('id', $user_id);
		$query = $this->db->get('users');
		
		$current_points = $query->row_array()['points'];	
		$points = $current_points + $points;
		
		$this->db->where('id', $user_id);
		$query = $this->db->update('users', array('points' => $points));
		return $query;
	}
	
}