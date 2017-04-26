<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>


<div id="wrap">
	<div class="container-fluid scrollable" style="text-align: center;">
	<?php if($logged) { ?>
		
		<h1 class="main_title">Account settings</h1>

		<p class="error"><?php if( isset($message) || ($this->session->flashdata('message') != NULL) ) { if($this->session->flashdata('message') != NULL) {$message = $this->session->flashdata('message');}  if (stripos($message, 'successfully') !== false) { echo "<span style='color:green;'>" . $message . "</span>"; } else { echo "<span style='color:red;'>" . $message ."</span>"; } }?></p>
		
		<?php echo validation_errors();?>
	 	
	 	<p>Change your password</p>
	 	<form action="<?php echo site_url("userUpdates/change_pass");?>" method="post">
	 		<label for="password">New Password</label>
	 		<input id="password" type="password" name="password"><br>
	 		<label for="confirm_password">Confirm Password</label>
	 		<input id="confirm_password" type="password" name="password_confirm"> </br></br>
	 		<input type="submit" value="Update Password">
	 	</form>
	 	
	 	<br>
	 	
	 	<form action="<?php echo site_url("userUpdates/facebook_connect");?>" method="post">
		 <button type="submit" id="fb-login" class="btn btn-block btn-social btn-facebook">
		    <span class="fa fa-facebook"></span><?php echo $is_fb_connected;?>
		 </button>
	 	</form>
	 	
	 	<br>
	 	 	
		<a href="<?php echo site_url("login/logout");?>">Log out</a>
	
	<?php } else { ?>
	
		<h1>Your are not Logged in</h1>
		
		<a href="<?php echo site_url("login/login_page");?>">Log in</a>
	
	<?php }?>
	</div>
</div>

<?php include 'footer.php';?>