<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Quizes_model extends CI_Model {

	function __construct() {
		parent::__construct();

	}
	
	function create_quiz($quiz_content) {
		$query = $this->db->insert('quizes', $quiz_content);
		return $this->db->insert_id();
	}
	
	function update_quiz($quiz_id, $quiz_content) {
		$this->db->where('id', $quiz_id);
		$query = $this->db->update('quizes', $quiz_content);
		return $query;
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
	
	function get_quiz_info($quiz_id) {
		$this->db->select('quizes.*, users.username, group_concat(c.name) as categories');
		$this->db->where('quizes.id', $quiz_id);
		$this->db->join('users', 'users.id=quizes.user_id');
		$this->db->join('categories_quizes as cq', 'cq.quiz_id=quizes.id');
		$this->db->join('categories as c', 'c.id=cq.category_id');
		$query = $this->db->get('quizes');
		return $query->row_array();
	}
	
	function get_quiz_questions($quiz_id) {
		$this->db->where('questions.quiz_id', $quiz_id);
		$query = $this->db->get('questions');
		return $query->result_array();
	}
	
	function get_question_answers($question_id) {
		$this->db->where('answers.question_id', $question_id);
		$query = $this->db->get('answers');
		return $query->result_array();
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
	
	function get_quizes($limit, $offset, $input=NULL, $user_id=NULL) {
		$this->db->select('quizes.*, users.username, users.avatar');
		if($input != NULL) {
			$this->db->like('name', $input);
			$this->db->or_like('description', $input);
		}
		if($user_id != NULL) {
			$this->db->where('users.id', $user_id);
		}
		$this->db->join('users', 'users.id=quizes.user_id');
		$this->db->limit($limit, $offset);
		$this->db->order_by('created_at', 'DESC');
		$query = $this->db->get('quizes');
		return $query->result_array();
	}
	
	function get_total_quizes_count($input=NULL, $user_id=NULL) {
		$this->db->select('COUNT(quizes.id) as count');
		if($input != NULL) {
			$this->db->like('name', $input);
			$this->db->or_like('description', $input);
		}
		if($user_id != NULL) {
			$this->db->where('users.id', $user_id);
		}
		$this->db->join('users', 'users.id=quizes.user_id');
		$query = $this->db->get('quizes');
		return $query->row_array()['count'];
	}
	
	function get_quizes_category($limit, $offset, $category) {
		$this->db->select('quizes.*, users.username, users.avatar');
		$this->db->where('c.name', $category);
		$this->db->join('users', 'users.id=quizes.user_id');
		$this->db->join('categories_quizes as cq', 'cq.quiz_id=quizes.id');
		$this->db->join('categories as c', 'c.id=cq.category_id');
		$this->db->limit($limit, $offset);
		$this->db->order_by('created_at', 'DESC');
		$query = $this->db->get('quizes');
		return $query->result_array();
	}
	
	function get_total_quizes_count_category($category) {
		$this->db->select('COUNT(quizes.id) as count');
		$this->db->where('c.name', $category);
		$this->db->join('categories_quizes as cq', 'cq.quiz_id=quizes.id');
		$this->db->join('categories as c', 'c.id=cq.category_id');
		$query = $this->db->get('quizes');
		return $query->row_array()['count'];
	}	
	
	function get_result($quiz_id, $num_correct_answers) {
		$this->db->select('qr.*, quizes.name as quiz_name');
		$this->db->where('qr.quiz_id', $quiz_id);
		$this->db->where("{$num_correct_answers} BETWEEN bottom_limit AND top_limit");
		$this->db->join('quizes', 'quizes.id=qr.quiz_id');
		$this->db->join('score_system as ss', 'ss.result_id=qr.id');
		$this->db->order_by('ss.bottom_limit', 'ASC');
		$query = $this->db->get('quiz_results as qr');

		return $query;
	}
	
	function get_comments($quiz_id, $limit, $offset) {
		$this->db->select('qc.*, users.username, users.avatar');
		$this->db->where('qc.quiz_id', $quiz_id);
		$this->db->join('users', 'users.id=qc.user_id');
		$this->db->limit($limit, $offset);
		$this->db->order_by('created_at', 'DESC');
		$query = $this->db->get('quiz_comments as qc');
		return $query->result_array();
	}
	
	function get_comments_count($quiz_id) {
		$this->db->select('COUNT(id) as count');
		$this->db->where('quiz_id', $quiz_id);
		$query = $this->db->get('quiz_comments');
		return $query->row_array()['count'];
	}
	
	function add_comment($quiz_id, $content) {		
		$data = array(
			'user_id' => $this->session->userdata('id'),
			'quiz_id' => $quiz_id,
			'content' => $content
		);		
		$query = $this->db->insert('quiz_comments', $data);			
		return $this->db->insert_id();
	}
	
	function get_quiz_owner($quiz_id) {
		$query = $this->db->get_where('quizes', array('id' => $quiz_id));
		return $query->row_array()['user_id'];
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