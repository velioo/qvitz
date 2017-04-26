<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>


<div id="wrap">
	<div class="container-fluid scrollable" style="text-align: center;">
		
		<h1 class="main_title"><?php echo $header;?></h1>		
		<p><?php if(isset($message)) echo $message;?>
		
	</div>
</div>

<?php include 'footer.php';?>