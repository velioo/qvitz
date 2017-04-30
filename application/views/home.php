<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>

<link rel="stylesheet" type="text/css" href="<?php echo asset_url() . "css/quiz_boxes.css";?>">	  
<script src="<?php echo asset_url() . "js/load_quizes.js";?>"></script>

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
	
</script>

<div id="wrap">
	<div class="container-fluid scrollable" style="text-align: center;">
		
		<h1 class="main_title"><?php echo $header;?></h1>		
		<p><?php if(isset($message)) echo $message;?>		
		<div id="loader_image_div">
			<img src="<?php echo asset_url() . "imgs/loading_records.gif";?>" class="loader_image">
		</div>
	</div>
</div>

<?php include 'footer.php';?>