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
	
	public function do_quiz($quiz_id, $comment_reference=NULL) {
		
		$quiz_info = $this->quizes_model->get_quiz_info($quiz_id);		
		$quiz_info['questions'] = $this->quizes_model->get_quiz_questions($quiz_id);
		
		for($i = 0; $i < count($quiz_info['questions']); $i++) {
			$quiz_info['questions'][$i]['answers'] = $this->quizes_model->get_question_answers($quiz_info['questions'][$i]['id']);			
		}
		
		$total_comments = $this->quizes_model->get_comments_count($quiz_id);	
		
		$limit = 1000;
		$data['total_groups'] = ceil($total_comments/$limit);	
		
		if($comment_reference != NULL) {
			$data['comment_reference'] = $comment_reference;
		}
		
		$data['quiz'] = $quiz_info;
		$data['header'] = $quiz_info['name'];
		$data['title'] = 'Do Quiz';
		$data['css'] = 'do_quiz.css';
		$this->load->view('do_quiz', $data);
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
					
					$score_system['top_limit'] = round($quiz_content['questions_count'] * $top_percentage/100);
					$score_system['bottom_limit'] = round($quiz_content['questions_count'] * $bottom_percentage/100);
					
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
				
				$categories = $this->input->post('category[]');
				for ($i = 0; $i < count($categories); $i++) {
					$categories[$i] = str_replace("_", " ", $categories[$i]);
					$categories[$i] = ucwords($categories[$i]);
					$this->quizes_model->make_quiz_category_relation($quiz_id, $categories[$i]);
				}			
				
				$questions_count = $this->input->post('questions_count');
				
				if($is_new) { // only add points to user if he is making new quiz not updating one
					if($questions_count < 5) {
						$points = 3;
					} else if($questions_count < 10){
						$points = 7;
					} else if($questions_count < 20) {
						$points = 15;
					} else if($questions_count < 30){
						$points = 25;
					} else if($questions_count < 40){ 
						$points = 35;
					} else {
						$points = 40;
					}
					
					$this->load->model('levels_model');
					$query = $this->levels_model->add_points($points);
					
					if($query !== TRUE && $query !== FALSE) {
						$this->new_level_notification($query);
					}
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
	
	public function get_result() {
					
		$quiz_id = $this->input->post('quiz_id');
		$num_correct_answers = $this->input->post('num_correct_answers');
		$questions_count = $this->input->post('questions_count');

		if($this->session->userdata('is_logged_in') === TRUE) {
			$this->load->model('history_model');
			$this->load->model('users_model');
			$this->load->model('levels_model');
			
			$made_quiz = $this->history_model->check_if_user_made_quiz($quiz_id);
			
			if($made_quiz === FALSE) {
				$points_to_add = calculate_points($questions_count);
				
				$query = $this->levels_model->add_points($points_to_add);
					
				if($query !== TRUE && $query !== FALSE) {
					$this->new_level_notification($query);
				}
			}
			
			$this->history_model->update_history($quiz_id, $num_correct_answers);
		}
		
		$query = $this->quizes_model->get_result($quiz_id, $num_correct_answers);
		
		if($query !== FALSE) {		

			$result = $query->row_array();
			
			$element = '<div class="result_div">
							<p class="quiz_title2">' . $result['quiz_name'] .'</p>
							<p class="result_score">You got ' . $num_correct_answers .' out of ' . $questions_count .' right!</p>
							<p class="result_title">' . $result['name'] .'</p>
							<p class="result_description">' . $result['text'] . '</p>';
							if($result['image'] != "") {
								$element.='<img src="' .  asset_url() . "quiz_images/{$result['image']}" . '"class="result_image">';
							}							
			$element.='</div>';
			
			echo $element;
		} 
		
	}
	
	public function search() {
		
		$this->load->library('pagination');	
				
		$config = $this->configure_pagination();
		$config['base_url'] = site_url("quiz/search");
		$config['per_page'] = 10;

		$input = strip_tags($this->input->get('search'));
		
		if($this->input->get('page') != NULL and is_numeric($this->input->get('page'))) {
			$start = $this->input->get('page') * $config['per_page'] - $config['per_page'];
		} else {
			$start = 0;
		}
		
		$query = $this->quizes_model->get_quizes($config['per_page'], $start, $input);
		$config['total_rows'] = $this->quizes_model->get_total_quizes_count($input);
		
		if($query !== FALSE) {
				
			$this->pagination->initialize($config);
			$data['pagination'] = $this->pagination->create_links();
			$data['results'] = $query;
				
			if($input == '')
				$data['header'] = 'All quizes';
			else
				$data['header'] = 'Results for "' . $input . '"';
		} else {
			$this->helpers_model->server_error();
		}
		
		$data['search'] = TRUE;
		$data['title'] = 'V-Anime';
		$data['css'] = 'quiz_boxes.css';
		$this->load->view('home', $data);
	}
	
	public function search_category($category=NULL) {
		if($category != NULL) {
						
			$this->load->library('pagination');
			
			$config = $this->configure_pagination();
			$config['base_url'] = site_url("quiz/search_category/{$category}");
			$config['per_page'] = 10;		
			
			$category = str_replace("_", " ", $category);
			$category = ucwords($category);
			
			if($this->input->get('page') != NULL and is_numeric($this->input->get('page'))) {
				$start = $this->input->get('page') * $config['per_page'] - $config['per_page'];
			} else {
				$start = 0;
			}
			
			$query = $this->quizes_model->get_quizes_category($config['per_page'], $start, $category);
			$config['total_rows'] = $this->quizes_model->get_total_quizes_count_category($category);
			
			if($query !== FALSE) {
			
				$this->pagination->initialize($config);
				$data['pagination'] = $this->pagination->create_links();
				$data['results'] = $query;			
				$data['header'] = $category;

			} else {
				$this->helpers_model->server_error();
			}
			
			$data['search'] = TRUE;
			$data['title'] = 'V-Anime';
			$data['css'] = 'quiz_boxes.css';
			$this->load->view('home', $data);
			
		} else {
			$this->helpers_model->bad_request();
		}
	}
	
	public function load_quizes() {
		
		$limit = $this->input->post('limit');
		$group_number = $this->input->post('group_number');		
		$offset = $limit * $group_number;
		
		$user_id = $this->input->post('user_id');
		
		if($user_id == NULL) {
			$quizes = $this->quizes_model->get_quizes($limit, $offset);
		} else {
			$quizes = $this->quizes_model->get_quizes($limit, $offset, NULL, $user_id);
		}
						
		$elements = array();
		
		foreach($quizes as $quiz) {			
			
			$onerror_url = asset_url() . "imgs/logo.jpg";
			
			$time_ago = calculate_time_ago($quiz['created_at']);
			
			$element = "<a href=" . site_url("quiz/do_quiz/{$quiz['id']}") . " class='disable-link-decoration quiz_box_link'>
						<div class='quiz_box'>
							<div class='quiz_box_image_div'>
								<img src='" . asset_url() . "quiz_images/{$quiz['image']}" . "' onerror='this.onerror=null;this.src=\"" . $onerror_url . "\";' class='quiz_box_image'>
							</div>
							<div class='quiz_box_text'>
								<div class='quiz_title'>" . $quiz['name'] . "</div>
								<div class='quiz_description'>" . $quiz['description'] . "</div>
								<div class='quiz_creator'> Made by " . $quiz['username'] . " &middot; $time_ago</div>
							</div>
						</div>
					</a>";
			
			$elements[] = $element;
			
		}
		
		foreach($elements as $element) {
			echo $element;
		}
		
	}
	
	public function load_comments() {
	
		$this->load->model('users_model');
	
		$quiz_id = $this->input->post('quiz_id');
		$group_number = $this->input->post('group_number');
		
		$limit = 1000;
		$offset = ceil($group_number * $limit);
	
		$comments = $this->quizes_model->get_comments($quiz_id, $limit, $offset);
	
		if($comments !== FALSE) {
				
			$elements_array = array();
				
			$element = "";
				
			foreach($comments as $comment) {
	
				$element = "";
	
				$onerror_url = asset_url() . "imgs/Default_Avatar.jpg";
				
				$element.="<div class='comment' data-id='" . $comment['id'] . "'>
								<div class='user_image_div'>
						      		<a href='" . site_url("users/profile/{$comment['username']}") . "'><img class='user_image' src='" . asset_url() . "user_images/{$comment['avatar']}" . "' onerror='this.onerror=null;this.src=\"" . $onerror_url . "\";' ></a>
						        </div>
						         <div class='comment_text more'><span class='user_name'><a href='" . site_url("users/profile/{$comment['username']}") . "'class='disable-link-decoration'>" . $comment['username'] . "&nbsp</a></span><span class='content'>" . $comment['content'] . "</span></div>" .		        					       
						       "<div class='post_time'>" . date("F jS, Y", strtotime($comment['created_at'])) .
						       "</div>
							</div>";
				
				$elements_array[] = $element;

			}
				
			foreach($elements_array as $element) {
				echo $element;
			}
		} else {
			echo 0;
		}
	}
	
	public function add_comment() {
		if($this->session->userdata('is_logged_in') === TRUE) {
			$this->load->model('notifications_model');
			$quiz_id = $this->input->post('quiz_id');
			$content = $this->input->post('content');

			$content = addslashes(trim($content));
		
			$comment_id = $this->quizes_model->add_comment($quiz_id, $content);
				
			if($comment_id !== FALSE) {
		
				$quiz_owner = $this->quizes_model->get_quiz_owner($quiz_id);
		
				if($quiz_owner != $this->session->userdata('id')) {
					$description = "commented on your quiz.";
					$additional_info = $comment_id;
					$type = "quiz_comment";
					$notification_id = $this->notifications_model->add_notification($quiz_id, $description, $type, $additional_info);
					$this->notifications_model->spread_notification($notification_id, $quiz_owner);
				}
		
				echo $comment_id;
			} else {
				echo 0;
			} 
		
		} else {
			$this->helpers_model->bad_request();
		}
	}
	
	public function new_level_notification($rank_level) {		
		$this->load->model('notifications_model');
		$user_id = $this->session->userdata('id');
		$type = "level";
		$description = "You've reached level " . $rank_level['rank_number'] . " - " . $rank_level['name'];
		$notification_id = $this->notifications_model->add_notification($user_id, $description, $type);
		$this->notifications_model->spread_notification($notification_id, $user_id);
		return TRUE;
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
	
	function configure_pagination() {
		$config['num_links'] = 5;
		$config['use_page_numbers'] = TRUE;
		$config['page_query_string'] = TRUE;
		$config['reuse_query_string'] = TRUE;
		$config['query_string_segment'] = 'page';
		$config['full_tag_open'] = "<ul class='pagination'>";
		$config['full_tag_close'] ="</ul>";
		$config['num_tag_open'] = '<li>';
		$config['num_tag_close'] = '</li>';
		$config['cur_tag_open'] = "<li class='disabled'><li class='active'><a href='#'>";
		$config['cur_tag_close'] = "<span class='sr-only'></span></a></li>";
		$config['next_tag_open'] = "<li>";
		$config['next_tagl_close'] = "</li>";
		$config['prev_tag_open'] = "<li>";
		$config['prev_tagl_close'] = "</li>";
		$config['first_tag_open'] = "<li>";
		$config['first_tagl_close'] = "</li>";
		$config['last_tag_open'] = "<li>";
		$config['last_tagl_close'] = "</li>";
		$config["next_link"] = "Next";
		$config["prev_link"] = "Prev";
	
		return $config;
	}
	
}

?>