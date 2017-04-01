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

	<div class="container-fluid scrollable">
	<?php if(isset($account_created)) {?>
		<h1><?php echo $account_created;?></h1>
	<?php } else if(isset($message_display)){?>
		<h1><?php echo $message_display;?></h1>
	<?php } else {?>
		<h1><?php if(isset($header)) { echo "<h1>" . $header . "</h1>";} ?></h1>
	<?php }?>
		<br/><br/><br/>

		<?php 
			$username = set_value('username') == false ? '' : set_value('username');
			
			echo form_open('login/log_in', 'class="signloginform"');
			echo form_label('Username', 'username');
			echo form_input('username', set_value('username', $username) ); echo "<br/>";
			echo form_label('Password', 'password');
			echo form_password('password'); echo "<br/>";echo "<br/>";
			if(isset($incorrect))
				echo "<p class='error' style='margin-left:180px;'>*" . $incorrect . "</p>"; echo "<br/>";
			echo form_submit('submit', 'Login', 'class="submit button-black"');echo "<br/>";echo "<br/>";
			echo form_close();
		?>
		<p class="center_paragraph">
			<a href="<?php echo site_url("signUp/signup_page")?>" id="create_account" class="disable-link-decoration"><span class="red-text">Click here to create an account</span></a><br/>
			<a href="<?php echo site_url("login/forgotten_password")?>" id="forgot_password" class="disable-link-decoration"><span class="red-text">Forgot your password?</span></a>
		</p>		
		 <form action="<?php echo site_url("login/facebook_login");?>" method="post">
			 <button type="submit" id="fb-login" class="btn btn-block btn-social btn-facebook">
			    <span class="fa fa-facebook"></span>Connect with Facebook
			 </button>
		 </form>
	</div>
	

</div>
</body>
</html>