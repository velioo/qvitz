<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>

<div id="wrap">
	<div class="container-fluid scrollable">
		<div class="user_description_div">
			<div class="user_name_div"><?php echo $user['username'];?></div>
			<div class="user_rank_div"><?php echo "Level " . $user['rank']['rank_number'] . " - " . $user['rank']['name'];?></div>
		</div>
	</div>
</div>

<?php include 'footer.php';?>