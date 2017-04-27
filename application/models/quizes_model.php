<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Quizes_model extends CI_Model {

	function __construct() {
		parent::__construct();

	}
	
	function create_quiz($quiz_content) {
		$query = $this->db->insert('quizes', $quiz_content);
		return $query;
	}
	
	function update_quiz($quiz_id, $quiz_content) {
		$this->db->where('id', $quiz_id);
		$query = $this->db->update('quizes', $quiz_content);
		return $this->db->insert_id();
	}
	
	function delete_quiz($quiz_id) {
		$this->db->where('id', $quiz_id);
		$query = $this->db->delete('quizes');
		return $query;
	}
	
	function add_result($data) {
		$query = $this->db->insert('quiz_results', $data);
		return $this->db->insert_id();
	}
	
	function update_result($result_id, $data) {
		$this->db->where('id', $result_id);
		$query = $this->db->update('quiz_results', $data);
		return $query;
	}
	
	function delete_result($result_id) {
		$this->db->where('id', $result_id);
		$query = $this->db->delete('quiz_results');
		return $query;
	}
	
	function add_score_system($data) {
		$query = $this->db->insert('score_system', $data);
		return $query;
	}
	
	function update_score_system($data) {
		$this->db->where('quiz_id', $data['quiz_id']);
		$this->db->where('result_id', $data['result_id']);
		$query = $this->db->update('score_system', array('top_limit' => $data['top_limit'], 'bottom_limit' => $data['bottom_limit']));
		return $query;
	}
	
	function add_question($data) {
		$query = $this->db->insert('questions', $data);
		return $this->db->insert_id();
	}
	
	function update_question($question_id, $data) {
		$this->db->where('id', $question_id);
		$query = $this->db->update('questions', $data);
		return $query;
	}
	
	function delete_question($question_id) {
		$this->db->where('id', $question_id);
		$query = $this->db->delete('questions');
		return $query;
	}
	
	function add_answer($data) {
		$query = $this->db->insert('answers', $data);
		return $this->db->insert_id();
	}
	
	function update_answer($answer_id, $data) {
		$this->db->where('id', $answer_id);
		$query = $this->db->update('answers', $data);
		return $query;
	}
	
	function delete_answer($answer_id) {
		$this->db->where('id', $answer_id); 			
		$query = $this->db->delete('answers');
		return $query;
	}
	
	function get_quiz_image($quiz_id) {
		$this->db->select('image');
		$this->db->where('id', $quiz_id);
		$query = $this->db->get('quizes');
		return $query->row_array()['image'];
	}
	
	function get_result_image($result_id) {
		$this->db->select('image');
		$this->db->where('id', $result_id);
		$query = $this->db->get('quiz_results');
		return $query->row_array()['image'];
	}
	
	function get_question_image($question_id) {
		$this->db->select('image');
		$this->db->where('id', $question_id);
		$query = $this->db->get('questions');
		return $query->row_array()['image'];
	}
	
	function get_answer_image($answer_id) {
		$this->db->select('image');
		$this->db->where('id', $answer_id);
		$query = $this->db->get('answers');
		return $query->row_array()['image'];
	}
	
	function make_quiz_category_relation($quiz_id, $category) {
		$this->db->select('id');
		$this->db->where('name', $category);
		$query = $this->db->get('categories');
		$category_id = $query->row_array()['id'];
		
		$query = $this->db->insert('categories_quizes', array('quiz_id' => $quiz_id, 'category_id' => $category_id));
		return $query;
	}
	
	function delete_quiz_category_relation($quiz_id, $category) {
		$this->db->select('id');
		$this->db->where('name', $category);
		$query = $this->db->get('categories');
		$category_id = $query->row_array()['id'];
		
		$this->db->where('quiz_id', $quiz_id);
		$this->db->where('category_id', $category_id);
		$query = $this->db->delete('categories_quizes');
		return $query;
	}
	
}