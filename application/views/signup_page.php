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

	<div class="container-fluid scrollable signuplogin_container">
		<h1><?php echo $header;?></h1>
		<br/><br/><br/>
		<?php 
			$username = set_value('username') == false ? '' : set_value('username');
			$email = set_value('email') == false ? '' : set_value('email');
			
			echo form_open('signUp/create_user', 'class="signloginform" autocomplete="off"'); 	
			echo form_label('Username', 'username');
			echo form_input('username', set_value('username', $username)); 
			echo form_error('username', '<p class="error">*', '</p>');echo "<br/>";
			echo form_label('Email', 'email');
			echo form_input('email', set_value('email', $email));
			echo form_error('email', '<p class="error">*', '</p>');echo "<br/>";
			echo form_label('Password', 'password');
			echo form_password('password', '');
			echo form_error('password', '<p class="error">*', '</p>');echo "<br/>";
			echo form_label('Confirm Password', 'password_confirm');
			echo form_password('password_confirm', '');
			echo form_error('password_confirm', '<p class="error">*', '</p>');echo "<br/>";
			echo form_submit('submit', 'Sign Up !', 'class="submit button-black"');
			echo form_close();		
		?>
		<br>
		<p class="center_paragraph">By clicking Sign Up, you are indicating that you have read and agree to the 
			<a href="#" class="accept disable-link-decoration">
				<span class="red-text">Terms of Use</span>
			</a> and 
			<a href="#" class="accept disable-link-decoration">
				<span class="red-text">Privacy Policy</span>
			</a>
		</p>
		<p class="center_paragraph" style="display: inline;">Already have an account ?<a href="<?php echo site_url("login/login_page")?>" class="accept disable-link-decoration" style="display: inline;"> <span class="red-text">Sign in</span></a>.</p>
		  <form action="<?php echo site_url("login/facebook_login");?>" method="post">
			 <button type="submit" id="fb-login" class="btn btn-block btn-social btn-facebook">
			    <span class="fa fa-facebook"></span>Connect with Facebook
			 </button>
		 </form>
		<br/><br/><br/>
	</div>
</div>

</body>
</html>