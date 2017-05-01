<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>

<?php $answers = array(); foreach($quiz['questions'] as $question) {
	$questions_correct_answers[] = $question['id'];
	$questions_correct_answers[] = $question['correct_answer'];
	
	$categories = explode(",",$quiz['categories']);
}?>

<script src="<?php echo asset_url() . "js/do_quiz.js";?>"></script>
<script src="<?php echo asset_url() . "jquery.ns-autogrow-1.1.6/dist/jquery.ns-autogrow.js";?>"></script>

<script>

	function getQuizId() {
		var quiz_id = <?php echo $quiz['id'];?>;
		return quiz_id;
	}

	function getAnswers() {
		var answers = <?php echo json_encode($questions_correct_answers);?>;
		return answers;
	}

	function getQuestionsCount() {
		var questions_count = <?php echo $quiz['questions_count'];?>;
		return questions_count;
	}

	function getCheckedboxUrl() {
		var checkedbox_url = "<?php echo asset_url() . "imgs/checkbox_checked.png";?>";
		return checkedbox_url;
	}	

	function getUnCheckedboxUrl() {
		var uncheckedbox_url = "<?php echo asset_url() . "imgs/checkbox_unchecked.png";?>";
		return uncheckedbox_url;
	}	

	function getResultUrl() {
		var result_url = "<?php echo site_url("quiz/get_result");?>";
		return result_url;
	}

	function getTotalCommentGroups() {
		var total_groups = <?php echo $total_groups;?>;
		return total_groups;
	}

	function getLoadCommentsUrl() {
		var url = "<?php echo site_url("quiz/load_comments");?>";
		return url;
	}

	function getCommentReference() {
		var comment_reference = <?php if(isset($comment_reference)) echo $comment_reference; else echo -1;?>;
		return comment_reference;
	}

	<?php if($logged) {?>
	
		function getAddCommentUrl() {
			var url = "<?php echo site_url("quiz/add_comment");?>";
			return url;
		}
	
		function getUserImage() {
			var user_image = "<?php echo asset_url() . "user_images/{$this->session->userdata('user_avatar')}";?>";
			return user_image;
		}	
	
		function getUserName() {
			var username = "<?php echo $this->session->userdata('username');?>";
			return username;
		}
	
		function getUserUrl() {
			var url = "<?php  echo site_url("users/profile/{$this->session->userdata('username')}");?>";
			return url;
		}
	
		function getOnErrorUrl() {
			var url = "<?php echo asset_url() . "imgs/Default_Avatar.jpg";?>";
			return url;
		}

	<?php }?>
</script>

<div id="wrap">
	<div class="container-fluid scrollable">
	
		<h1 class="main_title"><?php echo $header;?></h1>
		
		<div class="created_by">
			<p class="created_at">Posted on <?php echo date("F jS, Y", strtotime($quiz['created_at']));?></p>
			Created by <a href="<?php echo site_url("users/profile/{$quiz['username']}");?>" class="disable-link-decoration blue-text"><?php echo $quiz['username'];?></a>
			<p class="quiz_categories">Categories: 
			<?php $counter = 0; 
					foreach($categories as $category) {
						$counter++;
						if($counter != count($categories)) {
							echo $category . ", ";
						} else {
							echo $category;
						}					
				    }
			?>
			</p>
		</div>
		<div class="description_div">			
			<p class="do_quiz_description"><?php echo $quiz['description'];?></p>
		</div>
		<!-- <div class="quiz_image_div">
			<img src="echo asset_url() . "quiz_images/{$quiz['image']}">" class="quiz_image">
		</div> -->
		
		<?php foreach($quiz['questions'] as $question) {?>			
			<div class="question_div" data-id="<?php echo $question['id'];?>">
				<h3><?php echo $question['text'];?></h3>
				<?php if($question['image'] != "") {?>
					<img src="<?php echo asset_url() . "quiz_images/{$question['image']}";?>" class="question_image">
				<?php }?>		
				<div class="answer_div">	
					<?php foreach($question['answers'] as $answer) {?>
						<div class="answer a_hover" data-id="<?php echo $answer['number'];?>">
							<img src="<?php echo asset_url() . "imgs/checkbox_unchecked.png";?>" class="answer_checkbox">					
							<?php if($answer['image'] != "") {?>
								<img src="<?php echo asset_url() . "quiz_images/{$answer['image']}";?>" class="answer_image">
							<?php }?>
							<?php echo $answer['text'];?>
						</div>
					<?php }?>
				</div>
			</div>			
		<?php }?>		
		<div id="loader_image_div">
			<img src="<?php echo asset_url() . "imgs/loading_records.gif";?>" class="loader_image">
		</div>
		<button id="retake_quiz_button" class="btn btn-primary button-black"><img src="<?php echo asset_url() ."imgs/retake.png";?>" class="retake_quiz_icon">&nbsp;&nbsp;Retake Quiz</button>	
		<?php if($logged) {?>
		<div id="wrap_area_options">
			<textarea rows="2" id="new_post_area" name="new_post_area" placeholder="Add comment..."></textarea>
			<div id="post_options">
				<label id="submit_post" class="button-blue">Post</label>
			</div>
		</div>
		<?php } else {?>
			<div class="not_logged"><span class="disable-link-decoration blue-text log_in_modal">Log in</span> to add comments</div>
		<?php }?>
		<div id="comments">
		</div>
		<div id="loader_image_div2">
			<img src="<?php echo asset_url() . "imgs/loading_records.gif";?>" class="loader_image">
		</div>
	</div>
</div>

<?php include 'footer.php';?>