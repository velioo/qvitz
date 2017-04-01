<?php
defined('BASEPATH') OR exit('No direct script access allowed');

Class Users_model extends CI_Model {
	
	function __construct() {
		parent::__construct();
	
	}
	
	function validate($username, $password) {
		$this->db->select('username, password');
		$this->db->where('username', $username);
		$this->db->where('password', $password);
		$query = $this->db->get('users');
		if($query->num_rows() == 1) {
			return TRUE;
		} else {
			return FALSE;
		}
	}
	
	function create_user() {
		$new_user_data = array (
			'username' => $this->input->post('username'),
			'email' => $this->input->post('email'),
			'password' => hash('sha512', $this->input->post('password')),
		);
		$query = $this->db->insert('users', $new_user_data);		
		
		return $query;
	}
	
	function create_new_user_by_facebook_login($fb_user_id, $username, $email, $access_token) {
		$new_user_data = array (
			'username' => $username,
			'email' => $email,
			'password' => hash('sha512', uniqid("", TRUE)),
		);
		
		$query = $this->db->insert('users', $new_user_data);	
		$user_id = $this->db->insert_id();
		
		$facebook_data = array(
			'user_id' => $user_id,
			'fb_user_id' => $fb_user_id,
			'fb_email' => $email,
			'access_token' => $access_token
		);
		
		$query = $this->db->insert('facebook_accounts', $facebook_data);
		
		if($query === FALSE) {
			return FALSE;
		}
	
		$query = $this->db->get_where('users', array('username' => $username));
		
		if($query->num_rows() == 1) {
			return $query->row_array();
		} else {
			return FALSE;
		}
	}
	
	function connect_facebook($user_id, $email, $fb_user_id, $access_token) {
		
		$data = array(
			'user_id' => $user_id,
			'fb_user_id' => $fb_user_id,
			'fb_email' => $email,
			'access_token' => $access_token,
			'changed_pass' => 1
		);
		
		$query = $this->db->insert('facebook_accounts', $data);
	
		if($query) {
			$this->db->where('id', $user_id);
			$this->db->update('users', array('email' => $email));
		
			$this->db->select('email');
			$this->db->where('id', $user_id);
			$query = $this->db->get('users');
			
			if($query->num_rows() == 1) {
				return $query->row_array();
			} else {
				return FALSE;
			}
		} else {
			return FALSE;
		}
	}
	
	function disconnect_facebook($user_id) {
		$this->db->select('fa.changed_pass');
		$this->db->join('users as u', 'u.id=fa.user_id');
		$this->db->where('fa.user_id', $user_id);
		$query = $this->db->get('facebook_accounts as fa');

		if($query->num_rows() == 1) {
			if($query->row_array()['changed_pass'] == 1) {
				$query = $this->db->delete('facebook_accounts', array('user_id' => $user_id));
				return $query;
			} else {
				return FALSE;
			}
		} else {
			return FALSE;
		}
	}
	
	function change_password($user_id, $password) {
		$this->db->where('id', $user_id);
		$query = $this->db->update('users', array('password' => $password));
		
		if($query) {
			$this->db->select('fa.changed_pass');
			$this->db->join('users as u', 'u.id=fa.user_id');
			$this->db->where('fa.user_id', $user_id);
			$query = $this->db->get('facebook_accounts as fa');
			if($query->num_rows() == 1) {
				if($query->row_array()['changed_pass'] == 0) {
					$this->db->where('user_id', $user_id);
					$query = $this->db->update('facebook_accounts', array('changed_pass' => 1));
				}
			}
		}
		
		return $query;
	}
	
/* 	function update_user_activity() {
		$user_id = $this->session->userdata('id');
		$date = date('Y-m-d H:i:s');
		$this->db->where('id', $user_id);
		$this->db->update('users', array('last_online' => $date));
	} */

	function update_avatar_image($image) {
		$user_id = $this->session->userdata('id');
		$this->db->where('id', $user_id);
		$query = $this->db->update('users', array('avatar' => $image));
		return $query;
	}

	function update_user_password($id, $password) {
		$this->db->where('id', $id);
		$query = $this->db->update('users', array('password' => $password));
		return $query;
	}
	
	function get_user_info_logged($username) {
		$this->db->select('*');
		$this->db->where('username', $username);
		$query = $this->db->get('users');
		
		if ($query->num_rows() == 1) {
			return $query->row_array();
		} else {
			return FALSE;
		}
	}
	
	function get_user_info($username, $id = 0) {
		
		$this->db->select('id,username,avatar,birthdate,points');
		
		if($id == 0) {		
			$this->db->where('username', $username);	
		} else {
			$this->db->where('id', $id);
		}
		
		$query = $this->db->get('users');
		 		
		if ($query->num_rows() == 1) {		
			return $query->row_array();
		} else {
			return FALSE;
		}
	}
	
	function get_user_avatar_image() {
		$user_id = $this->session->userdata('id');
		
		$this->db->select('avatar');
		$this->db->where('id', $user_id);
		$query = $this->db->get('users');

		if($query->num_rows() == 1) {
			return $query->row_array();
		} else {
			return FALSE;
		}
	}

	function check_if_username_exists($username) {
		$username = addslashes($username);
		
		$query = $this->db->get_where('users', array('username' => $username));

		if($query->num_rows() > 0) {
			return FALSE;
		} else {
			return TRUE;
		}
	}
	
	function check_if_email_exists($email) {
		$email = addslashes($email);

		$query = $this->db->get_where('users', array('email' => $email));
	
		if($query->num_rows() > 0) {
			return FALSE;
		} else {
			return TRUE;
		}
	}
	
/* 	function check_if_user_is_admin($id) {
		
		$this->db->select('u.id');
		$this->db->join('admins as a', 'a.user_id=u.id');
		$this->db->where('u.id', $id);
		$query = $this->db->get('users as u');

		if($query->num_rows() == 1) {
			return TRUE;
		} else {
			return FALSE;
		}
	} */
	
	function check_if_user_connected_to_fb($user_id) {
		
		$this->db->select('u.id');
		$this->db->join('facebook_accounts as fa', 'fa.user_id=u.id');
		$this->db->where('u.id', $user_id);
		$query = $this->db->get('users as u');
	
		if($query->num_rows() == 1) {
			return TRUE;
		} else {
			return FALSE;
		}
	}	
	
	function check_if_fb_acc_exist_and_return_user($fb_user_id) {
		
		$this->db->select('u.id,u.username,u.email,u.avatar');
		$this->db->join('facebook_accounts as fa', 'fa.user_id=u.id');
		$this->db->where('fa.fb_user_id', $fb_user_id);
		$query = $this->db->get('users as u');

		if($query->num_rows() == 1) {
			return $query->row_array();
		} else {
			return FALSE;
		}
	}
	
/* 	function temp_reset_password($user_id, $temp_pass){
		$this->db->insert('user_temp_passes', array('user_id' => $user_id, 'temp_pass' => $temp_pass));
	} */
	
/* 	function is_temp_pass_valid($temp_pass){
		
		$this->db->select('user_id, temp_pass');
		$this->db->where('temp_pass', $temp_pass);
		$query = $this->db->get('user_temp_passes');
		
		if($query->num_rows() == 1){
			return $query->row_array();
		}
		else {
			return FALSE;
		}
	} */
	
/* 	function delete_temp_pass($user_id) {
		$this->db->delete('user_temp_passes', array('user_id' => $user_id));
	} */
}

?>