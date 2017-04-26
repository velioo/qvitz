<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>

<?php 
if (!$logged) {
	header("location: " . site_url("Login/log_in"));
}
?>

<div id="wrap">
	<div class="container-fluid scrollable content">
		<h1 class="main_title">Create a Quiz</h1>
	</div>
</div>

<?php include 'footer.php';?>