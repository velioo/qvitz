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
	
	public function add_edit_quiz($data=NULL) {		
		$data['title'] = 'Quizes';
		$data['css'] = 'quiz.css';
		$this->load->view('add_edit_quiz', $data);
	}
	
	public function submit_quiz() {
			
		if($this->session->userdata('is_logged_in')) {
		
			$this->db->trans_start();
			
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
					$results[$i]['text'] = $this->input->post("quiz_result{$i}_text");
					$results[$i]['image'] = $this->input->post("quiz_result{$i}_image");
					
					if($is_new) {
						$result_id = $this->quizes_model->add_result($results[$i]);	
					} else {
						$result_id = $this->input->post("quiz_result{$i}_id");
						$query = $this->quizes_model->update_result($result_id, $results[$i]);
					}				
					
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
						$questions[$i]['correct_answer'] = $this->input->post("question{$i}_answer_number");
					}
					$questions[$i]['quiz_id'] = $quiz_id;
					//$questions[$i]['user_id'] = $this->session->userdata('id');
					
					if($is_new) {
						$question_id = $this->quizes_model->add_question($questions[$i]);						
					} else {
						$question_id = $this->input->post("question{$i}_id");
						$query = $this->quizes_model->update_question($question_id, $questions[$i]);
					}				
														
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
				
				$categories = $this->input->get('category[]');
				for ($i = 0; $i < count($categories); $i++) {
					$categories[$i] = str_replace("_", " ", $categories[$i]);
					$categories[$i] = ucwords($categories[$i]);
					$this->quizes_model->make_quiz_category_relation($quiz_id, $categories[$i]);
				}				
				
				$this->db->trans_complete();
				
			} else {
				$this->db->trans_complete();
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
		if($this->session->userdata('is_logged_in')) {
			$quiz_id = $this->input->post('quiz_id');
			
			$query = $this->quizes_model->delete_quiz($quiz_id);
			
			if($query) {
				$data['message'] = "Quiz successfully deleted";
				$this->add_edit_quiz($data);
			} else {
				$this->helpers_model->server_error();
			}
		} else {
			$this->helpers_model->bad_request();
		}
	}
	
}

?>