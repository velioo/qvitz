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

			$this->load->library('upload');
			
			$this->db->trans_start();
			
			$quiz_id = $this->input->post('quiz_id');
			
			if($quiz_id !== NULL) {
				$is_new = FALSE;
			} else {
				$is_new = TRUE;
			}
			
			$quiz_content = array();
			
			$quiz_content['name'] = $this->input->post('name');
			$quiz_content['description'] = $this->input->post('description');
			$quiz_content['type'] = $this->input->post('type');
			$quiz_content['user_id'] = $this->session->userdata('id');
			$quiz_content['questions_count'] = $this->input->post('questions_count');			
			
			if (!empty($_FILES['image']['name'])) {
			
				$unique_id = uniqid();
				
				$config['upload_path'] = './assets/quiz_images/';
				$config['allowed_types'] = 'gif|jpg|png';
				$config['max_size'] = 2048;
				$config['file_name'] = $unique_id . ".jpg";
				$config['overwrite'] = TRUE;
			
				$this->upload->initialize($config);
			
				if (!$this->upload->do_upload('image')) {
					$error = array('error' => $this->upload->display_errors('<p class="error">', '</p>'));
					$this->session->set_flashdata('error', $error['error']);
				} else {
					if(!$is_new) {
						$image = $this->quizes_model->get_quiz_image($quiz_id);
						if($image != '') {
							unlink("./assets/quiz_images/{$image}");
						}
					}					
					$quiz_content['image'] = $config['file_name'];
				}
			
			}
		
			if($is_new) {
				$quiz_id = $this->quizes_model->create_quiz($quiz_content);			
			} else {
				$query = $this->quizes_model->update_quiz($quiz_id, $quiz_content);
			}										
			
			$results = array();
			$results_count = $this->input->post('results_count');			
			
			for($i = 1; $i <= $results_count; $i++) {
				$result_id = $this->input->post("quiz_result$i}_id");
				$results[$i-1]['quiz_id'] = $quiz_id;
				$results[$i-1]['name'] = $this->input->post("quiz_result{$i}_name");
				$results[$i-1]['text'] = $this->input->post("quiz_result{$i}_text");					
				
				if (!empty($_FILES["quiz_result{$i}_image"]['name'])) {
						
					$unique_id = uniqid();
						
					$config['upload_path'] = './assets/quiz_images/';
					$config['allowed_types'] = 'gif|jpg|png';
					$config['max_size'] = 2048;
					$config['file_name'] = $quiz_id . "_r_" . $unique_id . ".jpg";
					$config['overwrite'] = TRUE;
						
					$this->upload->initialize($config);
						
					if (!$this->upload->do_upload("quiz_result{$i}_image")) {
						$error = array('error_r' => $this->upload->display_errors('<p class="error_r">', '</p>'));
						$this->session->set_flashdata('error_r', $error['error_r']);
					} else {
						if(!$is_new) {
							$image = $this->quizes_model->get_result_image($result_id);
							if($image != '') {
								unlink("./assets/quiz_images/{$image}");
							}
						}
						$results[$i-1]['image'] = $config['file_name'];
					}
						
				}							
				
				if($is_new) {
					$result_id = $this->quizes_model->add_result($results[$i-1]);	
				} else {
					$query = $this->quizes_model->update_result($result_id, $results[$i-1]);
				}						
				
				if($this->input->post('type') == 2) {
						$results[$i-1]['id'] = $result_id;
						$results[$i-1]['temp_id'] = $this->input->post("quiz_result{$i}_id"); // the id in the html. Used to connect answer and result in type 2 quiz
				} else {						
					$score_system = array();					
					$score_system['quiz_id'] = $quiz_id;
					
					$top_percentage = $this->input->post("quiz_result{$i}_top_limit");
					$bottom_percentage = $this->input->post("quiz_result{$i}_bottom_limit");					
					
					$score_system['top_limit'] = floor($quiz_content['questions_count'] * $top_percentage/100);
					$score_system['bottom_limit'] = ceil($quiz_content['questions_count'] * $bottom_percentage/100);
					
					$score_system['result_id'] = $result_id;
					
					if($is_new) {
						$query = $this->quizes_model->add_score_system($score_system);
					} else {
						$query = $this->quizes_model->update_score_system($score_system);
					}					
				}
			}
			
				$questions = array();
				
				for($i = 1; $i <= $quiz_content['questions_count']; $i++) {
					$question_id = $this->input->post("question{$i}_id");
					$questions[$i-1]['text'] = $this->input->post("question{$i}_text");
					if($this->input->post('type') == 1) { // type 1 = test, type 2 = personality
						$questions[$i-1]['correct_answer'] = $this->input->post("question{$i}_correct_answer_number");
					}
					$questions[$i-1]['quiz_id'] = $quiz_id;
					
					if (!empty($_FILES["question{$i}_image"]['name'])) {
							
						$unique_id = uniqid();
							
						$config['upload_path'] = './assets/quiz_images/';
						$config['allowed_types'] = 'gif|jpg|png';
						$config['max_size'] = 2048;
						$config['file_name'] = $quiz_id . "_q_" . $unique_id . ".jpg";
						$config['overwrite'] = TRUE;
							
						$this->upload->initialize($config);
							
						if (!$this->upload->do_upload("question{$i}_image")) {
							$error = array('error_q' => $this->upload->display_errors('<p class="error_q">', '</p>'));
							$this->session->set_flashdata('error_q', $error['error_q']);
						} else {
							if(!$is_new) {
								$image = $this->quizes_model->get_question_image($question_id);
								if($image != '') {
									unlink("./assets/quiz_images/{$image}");
								}
							}
							$questions[$i-1]['image'] = $config['file_name'];
						}
							
					}
									
					if($is_new) {
						$question_id = $this->quizes_model->add_question($questions[$i-1]);						
					} else {						
						$query = $this->quizes_model->update_question($question_id, $questions[$i-1]);
					}				
														
					$answers = array();
					$answers_count = $this->input->post("question{$i}_answers_count");
					
					for($j = 1; $j <= $answers_count; $j++) {
						$answer_id = $this->input->post("question{$i}_answer{$j}_id");
						$answers[$j-1]['text'] = $this->input->post("question{$i}_answer{$j}_text");
						$answers[$j-1]['number'] = $this->input->post("question{$i}_answer{$j}_number");
						$answers[$j-1]['question_id'] = $question_id;					
						if($this->input->post('type') == 2) {
							foreach($results as $result) {
								if($result['temp_id'] == $this->input->post("question{$i}_answer{$j}_result_id")) {
									$answers[$j-1]['result_id'] = $result['id'];
								}
							}						
						}
						
				/* 		if (!empty($_FILES["question{$i}_answer{$j}_image"]['name'])) {
								
							$unique_id = uniqid();
								
							$config['upload_path'] = './assets/quiz_images/';
							$config['allowed_types'] = 'gif|jpg|png';
							$config['max_size'] = 2048;
							$config['file_name'] = $quiz_id . "_a_" . $unique_id . ".jpg";
							$config['overwrite'] = TRUE;
								
							$this->upload->initialize($config);
								
							if (!$this->upload->do_upload("question{$i}_answer{$j}_image")) {
								$error = array('error_q' => $this->upload->display_errors('<p class="error_q">', '</p>'));
								$this->session->set_flashdata('error_q', $error['error_q']);
							} else {
								if(!$is_new) {
									$image = $this->quizes_model->get_answer_image($answer_id);
									if($image != '') {
										unlink("./assets/quiz_images/{$image}");
									}
								}
								$answers[$j]['image'] = $config['file_name'];
							}
								
						} */
						
						if($is_new) {
							$query = $this->quizes_model->add_answer($answers[$j-1]);
						} else {							
							$query = $this->quizes_model->update_answer($answer_id, $answers[$j-1]);
						}
					}														
				}
				
				$categories = $this->input->get('category[]');
				for ($i = 0; $i < count($categories); $i++) {
					$categories[$i] = str_replace("_", " ", $categories[$i]);
					$categories[$i] = ucwords($categories[$i]);
					$this->quizes_model->make_quiz_category_relation($quiz_id, $categories[$i]);
				}			
				
				$questions_count = $this->input->post('questions_count');
				
				if($is_new) { // only add points to user if he is making new quiz not updating one
					if($questions_count < 10) {
						$points = 2;
					} else if($questions_count < 20){
						$points = 4;
					} else if($questions_count < 40) {
						$points = 6;
					} else {
						$points = 10;
					}
					
					$this->load->model('levels_model');
					$this->levels_model->add_points($this->session->userdata('id'), $points);
				}						
				
				$this->db->trans_complete();		
		
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