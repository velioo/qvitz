<!DOCTYPE html>
<html lang="en">
<head>
	<title><?php echo $title; ?></title>
	  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=2, user-scalable=1">
	  <meta name="apple-mobile-web-app-capable" content="yes" />  
	  <link rel="icon" type="image/gif" href="<?php //echo asset_url() . "imgs/logo.png"?>" />
	  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	  <link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
	  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.6.3/css/font-awesome.min.css"> 
	    <script src="<?php echo asset_url() . "js/jquery-3.1.1.min.js"?>"></script>
	  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script> 	  
</head>
<body>

<?php 
if (isset($this->session->userdata['is_logged_in'])) {
	header("location: " . site_url("Login/log_in"));
}

?>

<div id="wrap">
	<div class="container-fluid scrollable content signuplogin_container">
		<h1><?php echo $header;?></h1>
		<p style="font-size: 20px; text-align: center;"><?php if(isset($message)) echo $message?></p>
		<br/>

			<?php $username = set_value('username') == false ? '' : set_value('username');
				  $email = set_value('email') == false ? '' : set_value('email');	
				  
				  $fb_info = array(
				  	'fb_user_id' => $fb_user_id,
				  	'fb_access_token' => $fb_access_token,
				  	'fb_email' => $fb_email
				  );
				  
				$this->session->set_tempdata('fb_info', $fb_info, 30);
				
				echo form_open("signUp/create_facebook_user", 'class="signloginform" autocomplete="off"'); 				
				echo form_label('Username', 'username');
				echo form_input('username', set_value('username', $username)); 
				echo form_error('username', '<p class="error">*', '</p>');echo "<br/>";
				if(!$fb_email) {
					echo form_label('Email', 'email');
					echo form_input('email', set_value('email', $email));
					echo form_error('email', '<p class="error">*', '</p>');echo "<br/>";
					echo "<p class='error'> The email associated with you Facebook account was taken</p><br>";
				}
				echo form_submit('submit', 'Sign Up !', 'class="submit button-black"');
				echo form_close();	
			?>
	</div>
</div>

</body>
</html>