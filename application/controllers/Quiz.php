<?php
defined('BASEPATH') OR exit('No direct script access allowed');
class Quiz extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		$this->load->model('quizes_model');
		$this->load->model('helpers_model');
	}
	
	public function index() {		
	}
	
	public function add_edit_quiz() {
		
	}
	
	public function submit_quiz() {
			
		if($this->session->userdata('is_logged_in')) {
		
			$quiz_id = $this->input->post('quiz_id');
			$is_new = TRUE;
			
			$quiz_content = array();
			
			$quiz_content['name'] = $this->input->post('name');
			$quiz_content['description'] = $this->input->post('description');
			$quiz_content['type'] = $this->input->post('type');
			$quiz_content['image'] = $this->input->post('image');
			$quiz_content['user_id'] = $this->session->userdata('id');
			$quiz_content['questions_count'] = $this->input->post('questions_count');
				
			if($quiz_id !== NULL) {
				$is_new = FALSE;
				$query = $this->quizes_model->update_quiz($quiz_id, $quiz_content);
			} else {
				$query = $this->quizes_model->create_quiz($quiz_content);
			}
								
			if($query !== FALSE) {
				
				$quiz_id = $query['quiz_id'];
				
				$results = array();
				$results_count = $this->input->post('results_count');
				
				for($i = 0; $i < $results_count; $i++) {
					$results[$i]['quiz_id'] = $quiz_id;
					$results[$i]['name'] = $this->input->post("quiz_result{$i}_name");
					$results[$i]['description'] = $this->input->post("quiz_result{$i}_description");
					$results[$i]['image'] = $this->input->post("quiz_result{$i}_image");
					
					if($is_new) {
						$query = $this->quizes_model->add_result($results[$i]);						
					} else {
						$result_id = $this->input->post("quiz_result{$i}_id");
						$query = $this->quizes_model->update_result($result_id, $results[$i]);
					}
					
					$result_id = $query['result_id'];
					
					if($this->input->post('type') == 2) {
						$results[$i]['id'] = $result_id;
						$results[$i]['temp_id'] = $this->input->post("quiz_result{$i}_id"); // the id in the html. Used to connect answer and result in type 2 quiz
					} else {						
						$score_system = array();					
						$score_system['quiz_id'] = $quiz_id;
						$score_system['top_limit'] = $this->input->post("quiz_result{$i}_top_limit");
						$score_system['bottom_limit'] = $this->input->post("quiz_result{$i}_bottom_limit");
						$score_system['result_id'] = $result_id;
						
						if($is_new) {
							$query = $this->quizes_model->add_score_system($score_system);
						} else {
							$query = $this->quizes_model->update_score_system($score_system);
						}					
					}
				}
				
				$questions = array();
				
				for($i = 0; $i < $quiz_content['questions_count']; $i++) {
					$questions[$i]['text'] = $this->input->post("question{$i}_text");
					$questions[$i]['image'] = $this->input->post("question{$i}_image");
					if($this->input->post('type') == 1) { // type 1 = test, type 2 = personality
						$questions[$i]['correct_answer'] = $this->input->post("question{$i}_answer");
					}
					$questions[$i]['quiz_id'] = $quiz_id;
					$questions[$i]['user_id'] = $this->session->userdata('id');
					
					if($is_new) {
						$query = $this->quizes_model->add_question($questions[$i]);						
					} else {
						$question_id = $this->input->post("question{$i}_id");
						$query = $this->quizes_model->update_question($question_id, $questions[$i]);
					}
					
					$question_id = $query['question_id'];					
														
					$answers = array();
					$answers_count = $this->input->post("question{$i}_answers_count");
					
					for($j = 0; $j < $answers_count; $j++) {
						$answers[$j]['text'] = $this->input->post("question{$i}_answer{$j}_text");
						$answers[$j]['image'] = $this->input->post("question{$i}_answer{$j}_image");
						$answers[$j]['number'] = $this->input->post("question{$i}_answer{$j}_number");
						$answers[$j]['question_id'] = $question_id;
						if($this->input->post('type') == 2) {
							foreach($results as $result) {
								if($result['temp_id'] == $this->input->post("question{$i}_answer{$j}_result_id")) {
									$answers[$j]['result_id'] = $result['id'];
								}
							}						
						}
						
						if($is_new) {
							$query = $this->quizes_model->add_answer($answers[$j]);
						} else {
							$answer_id = $this->input->post("question{$i}_answer{$j}_id");
							$query = $this->quizes_model->update_answer($answer_id, $answers[$j]);
						}
					}														
				}
				
				$category = $this->input->post('category');
				$category = str_replace("_", " ", $category);
				$category = ucwords($category);
				$this->quizes_model->make_quiz_category_relation($quiz_id, $category);
				
			} else {
				$this->helpers_model->server_error();
			}
		
			if($query !== FALSE) {		
				redirect("welcome");
			} else {
				$this->helpers_model->server_error();
			}
		} else {
			$this->helpers_model->bad_request();
		}
	}
	
	public function delete_quiz() {
		
	}
	
}

?>