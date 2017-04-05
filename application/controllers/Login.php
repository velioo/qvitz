<?php
defined('BASEPATH') OR exit('No direct script access allowed');

$path =  $_SERVER['DOCUMENT_ROOT'] . '/qvitz/' . 'vendor/autoload.php';
require_once $path;

class Login extends CI_Controller {
	
	public function __construct() {
		parent::__construct();
		$this->load->model('users_model');
		$this->load->model('helpers_model');
	}
	
	public function index() {
		$this->login_page();
	}
	
	public function login_page($data = null) {
		$data['title'] = 'Login';
		$data['css'] = 'home.css';
		if(!isset($data['header'])) {
			$data['header'] = "Please Login";	
		}

		$this->load->view('login_page', $data);
	}
	
	public function log_in() {
		
		$this->load->library('form_validation');
		
		$this->form_validation->set_rules('username', 'Username', 'trim|required|min_length[4]|max_length[15]|alpha_dash');
		$this->form_validation->set_rules('password', 'Password', 'trim|required|min_length[4]|max_length[32]');
		
		if ($this->form_validation->run() == FALSE) {
			if(isset($this->session->userdata['is_logged_in'])) {
				redirect("welcome");
			} else{
				$data['incorrect'] = "Username or password is incorrect !";
				$this->login_page($data);
			}
		} else {		
			
			$username = $this->input->post('username');
			$password = hash('sha512', $this->input->post('password'));			
			$query = $this->users_model->validate($username, $password);
			
			if($query !== FALSE) {				

				$result = $this->users_model->get_user_info_logged($username);
				if ($result !== FALSE) {
					
					$data = array(
							'id' => $result['id'],
							'username' => $result['username'],
							'email' => $result['email'],
							'user_avatar' => $result['avatar'],
							'is_logged_in' => TRUE
					);
					
					$this->session->set_userdata($data);
					
					redirect("welcome");
				} else {
					echo $this->helpers_model->server_error();
				}
			} else {
				$data['incorrect'] = "Username or password is incorrect !";
				$this->login_page($data);
			}
		}
	}
	
	public function logout() {
		if(isset($this->session->userdata['is_logged_in'])) {
			$this->session->sess_destroy();
		} else {
			$data['message_display'] = 'You are not logged in ';
			redirect('welcome');
		}
		$this->nocache();
		redirect('welcome');
	}
	
	public function forgotten_password() {
	}
	
	function nocache() {
	    $this->output->set_header('Last-Modified: ' . gmdate("D, d M Y H:i:s") . ' GMT');
	    $this->output->set_header('Cache-Control: no-store, no-cache, must-revalidate, post-check=0, pre-check=0');
	    $this->output->set_header('Pragma: no-cache');
	    $this->output->set_header("Expires: Mon, 26 Jul 1997 05:00:00 GMT");
	}
	
	function facebook_login($connect_existing_account = "") {	
		$fb = new Facebook\Facebook([
		  'app_id' => APP_ID,
		  'app_secret' => APP_SECRET,
		  'default_graph_version' => 'v2.5',
		]);
		
		$helper = $fb->getRedirectLoginHelper();
		$permissions = ['email']; 
		$loginUrl = $helper->getLoginUrl(site_url("login/facebook_login_callback/{$connect_existing_account}"), $permissions);
		
		//$redirect_url = $this->input->post('redirect_url');
		
		/* if ($redirect_url != "") {
			$this->session->set_flashdata('redirect_url', $redirect_url);
		} */
		
		redirect($loginUrl);
	}
	
	function facebook_login_callback($connect_existing_account = "") {
		$fb = new Facebook\Facebook([
		  'app_id' => APP_ID,
		  'app_secret' => APP_SECRET,
		  'default_graph_version' => 'v2.5',
		]);		
				
		$helper = $fb->getRedirectLoginHelper();
		
		try {
		  $accessToken = $helper->getAccessToken();
		  $response = $fb->get('/me?fields=id,name,email', $accessToken);
		} catch(Facebook\Exceptions\FacebookResponseException $e) {
		  	echo 'Graph returned an error: ' . $e->getMessage();
			die();
		} catch(Facebook\Exceptions\FacebookSDKException $e) {
			$data['header'] = "There was an error connecting with Facebook !";
			$this->login_page($data);
		}
				
		if (!isset($accessToken)) {
		  if ($helper->getError()) {
		    header('HTTP/1.0 401 Unauthorized');
		    echo "Error: " . $helper->getError() . "\n";
		    echo "Error Code: " . $helper->getErrorCode() . "\n";
		    echo "Error Reason: " . $helper->getErrorReason() . "\n";
		    echo "Error Description: " . $helper->getErrorDescription() . "\n";
		  } else {
		    header('HTTP/1.0 400 Bad Request');
		    echo 'Bad request';
		  }
		  die();
		}
		
		$oAuth2Client = $fb->getOAuth2Client();	
		$tokenMetadata = $oAuth2Client->debugToken($accessToken);		
		$tokenMetadata->validateAppId(APP_ID); 
		$tokenMetadata->validateExpiration();
		
		if (!$accessToken->isLongLived()) {
		  try {
		    $accessToken = $oAuth2Client->getLongLivedAccessToken($accessToken);
		  } catch (Facebook\Exceptions\FacebookSDKException $e) {
		    echo "<p>Error getting long-lived access token: " . $helper->getMessage() . "</p>\n\n";
		   die();
		  }
		}
		
		$user = $response->getGraphUser();
		$fb_user_id = $user['id'];
		$email = $user['email'];
		
		$user = $this->users_model->check_if_fb_acc_exist_and_return_user($fb_user_id);
		
		if($connect_existing_account != "connect") {
			if($user !== FALSE) {			
					$data = array(
						'id' => $user['id'],
						'username' => $user['username'],
						'is_logged_in' => true,
						'email' => $user['email'],
						'user_avatar' => $user['avatar'],
						'fb_access_token' => (string) $accessToken
					);
					
					$this->session->set_userdata($data);	
					
					redirect("welcome");				
					
			} else {				
				$email_available = $this->users_model->check_if_email_exists($email);		
				
				if($email_available === FALSE) {
					$data['message'] = "Choose your Username and Email";
					$email = FALSE;
				} else {
					$data['message'] = 'Choose your Username';
				}
	
				$data['fb_access_token'] = (string) $accessToken;
				$data['fb_user_id'] = $fb_user_id;
				$data['fb_email'] = $email;
				$data['header'] = 'Create new account';
				$data['title'] = "Sign Up";
				$data['css'] = 'home.css';
				$this->load->view('fb_user_signup', $data);				
			}
		} else {
			if($user !== FALSE) {
				$message = "This Facebook account is already connected with another account.";
				$this->session->set_flashdata('message', $message);
				redirect("welcome");
			} else {
				if($this->session->userdata('is_logged_in')) {				
					if(($email != $this->session->userdata['email'])) {
						$email_available = $this->users_model->check_if_email_exists($email);
						if($email_available === FALSE) {
							$email = $this->session->userdata['email'];
						} 
					} else {
						$email_available = TRUE;
					}
								
					if($email_available !== FALSE)
						$message = "You successfully connected your facebook";
					else 
						$message = "The email associated with your Facebook account was taken but you were still connected.";
					
					$query = $this->users_model->connect_facebook($this->session->userdata['id'], $email, $fb_user_id, $accessToken);
						
					if($query !== FALSE) {
						$data = array(
								'id' => $this->session->userdata['id'],
								'username' => $this->session->userdata['username'],
								'is_logged_in' => TRUE,
								'email' => $query['email'],
								'user_avatar' => $this->session->userdata('user_avatar'),
								'fb_access_token' => (string) $accessToken
						);
							
						$this->session->set_userdata($data);					
					} else {
						$message = "There was an error connecting your account.";										
					}
					
					$this->session->set_flashdata('message', $message);
					redirect("welcome");
				} else {
					$this->helpers_model->unauthorized();
				}
			}
		}
	}
}

?>