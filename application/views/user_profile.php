<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>


<link rel="stylesheet" type="text/css" href="<?php echo asset_url() . "css/quiz_boxes.css";?>">
<script src="<?php echo asset_url() . "js/load_personal_quizes.js";?>"></script>

<script>

	function quizesUrl() {
		var quizes_url = "<?php echo site_url("quiz/load_quizes");?>";
		return quizes_url;
	}
	
	function getTotalQuizGroups() {
		var total_groups = <?php echo $total_groups;?>;
		return total_groups;
	}
	
	function getLimit() {
		var limit = <?php echo $limit;?>;
		return limit;
	}

	function getUserId() {
		var user_id = <?php echo $user['id'];?>;
		return user_id;
	}

</script>

<div id="wrap">
	<div class="container-fluid scrollable">
		<div class="user_description_div">
			<div class="user_name_div"><?php echo $user['username'];?></div>
			<div class="user_rank_div"><?php echo "Level " . $user['rank']['rank_number'] . " - " . $user['rank']['name'];?></div>
			<div class="total_quizes_div">Total quizes done: <?php echo $user['total_quizes_made'];?></div>			
			<div class="total_quizes_div">Total quizes created: <?php echo $user['total_quizes_created'];?></div>			
		</div>
		<div class="main_title"><?php echo $user['username'] . "'s Quizes"; ?></div>
		
		<div id="loader_image_div">
			<img src="<?php echo asset_url() . "imgs/loading_records.gif";?>" class="loader_image">
		</div>
	</div>
</div>

<?php include 'footer.php';?>