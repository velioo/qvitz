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
		$new_points = $current_points + $points;				
					
		$this->db->where('id', $user_id);
		$query = $this->db->update('users', array('points' => $new_points));
		
		if($query) {
			$new_level = is_new_level($current_points, $new_points);
			if($new_level) {								
				$this->db->where('points <=', $new_points);
				$this->db->order_by('points', 'DESC');
				$query = $this->db->get('ranks');				
				$rank_level = $query->row_array();
				return $rank_level;
			}
			return TRUE;
		} else {
			return FALSE;
		}
	}
	
}