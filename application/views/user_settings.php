<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>

<?php 
if (!$logged) {
	header("location: " . site_url("Login/log_in"));
}
?>

<div id="wrap">
	<div class="container-fluid scrollable signuplogin_container">
	<?php if($logged) { ?>
		
		<h1 class="main_title">Account settings</h1>
		<br>
		<?php 
			if(isset($message) || ($this->session->flashdata('message') != NULL) ) { 
				if($this->session->flashdata('message') != NULL) {
					$message = $this->session->flashdata('message');
				}
				if (stripos($message, 'successfully') !== false) {
					echo "<p class='success'>" . $message . "</p>"; 
				} else { 
					echo "<p class='fail'>" . $message ."</p>"; 
				} 
			}
		?>
		
	 	<?php 
		 	$label_attr = array(
		 			'class' => 'signup_label'
		 	);
	 	
		 	echo form_open('userUpdates/change_pass', 'class="signloginform"');
		 	echo form_label('Password', 'password', $label_attr);
			echo form_password('password', '');
			echo form_error('password', '<p class="error">*', '</p>');echo "<br/>";
			echo form_label('Confirm Password', 'password_confirm', $label_attr);
			echo form_password('password_confirm', '');
			echo form_error('password_confirm', '<p class="error">*', '</p>');echo "<br/>";
	 		echo form_submit('submit', 'Update', 'class="submit button-black"');echo "<br/>";echo "<br/>";
	 		echo form_close();	 	
	 	?>	 	
	 	
	 	<br>
	 	
	 	<form action="<?php echo site_url("userUpdates/facebook_connect");?>" method="post">
		 <button type="submit" id="fb-login" class="btn btn-block btn-social btn-facebook">
		    <span class="fa fa-facebook"></span><?php echo $is_fb_connected;?>
		 </button>
	 	</form>

	<?php }?>
	</div>
</div>

<?php include 'footer.php';?>