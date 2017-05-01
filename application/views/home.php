<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>

<link rel="stylesheet" type="text/css" href="<?php echo asset_url() . "css/quiz_boxes.css";?>">
<?php if(!isset($search)) {?>
	<script src="<?php echo asset_url() . "js/load_quizes.js";?>"></script>
<?php } ?>
<script>

<?php if(!isset($search)) {?>
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
<?php } else {?>
	$(document).ready(function() {
		$('.quiz_box_image_div').each(function() {
			$(this).height($(this).next().height() + 30);	
		});
	});
<?php }?>
</script>

<div id="wrap">
	<div class="container-fluid scrollable" style="text-align: center;">
		
		<h1 class="main_title"><?php echo $header;?></h1>		
		<p><?php if(isset($message)) echo $message;?></p>		
		<?php if(isset($search)) {?>
			<?php foreach($results as $quiz) {?>
				<a href="<?php echo site_url("quiz/do_quiz/{$quiz['id']}") ?>" class="disable-link-decoration quiz_box_link">
					<div class="quiz_box">
						<div class="quiz_box_image_div">
							<img src="<?php echo asset_url() . "quiz_images/{$quiz['image']}"; ?>" 
							onerror="this.onerror=null;this.src='<?php echo asset_url() . "imgs/logo.jpg"; ?>'" class="quiz_box_image">
						</div>
						<div class="quiz_box_text">
							<div class="quiz_title"><?php echo $quiz["name"];?></div>
							<div class="quiz_description"><?php echo $quiz["description"];?></div>
							<div class="quiz_creator">Made by <?php echo $quiz["username"];?>&middot; <?php echo calculate_time_ago($quiz['created_at']);?></div>
						</div>
					</div>
				</a>
			<?php }?>
		<?php }?>
		<?php if(isset($pagination)) {?>
			<div class="text-center">
				<?php echo $pagination;?>
			</div>			
		<?php }?>
		<div id="loader_image_div">
			<img src="<?php echo asset_url() . "imgs/loading_records.gif";?>" class="loader_image">
		</div>
	</div>
</div>

<?php include 'footer.php';?>