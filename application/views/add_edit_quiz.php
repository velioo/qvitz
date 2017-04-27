<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>

<?php 
if (!$logged) {
	header("location: " . site_url("Login/log_in"));
}
?>

<script src="<?php echo asset_url() . "bootstrap-filestyle-1.2.1/src/bootstrap-filestyle.min.js";?>"></script>

<script>

	$(document).ready(function() {
		$('head').append('<script src="<?php echo asset_url() . "js/create_quiz.js";?>">');
	});

	function asset_url() {
		var asset_url = "<?php echo asset_url();?>";
		return asset_url;
	}

</script>

<div id="wrap">
	<div class="container-fluid scrollable content text-center">
		<h1 class="main_title">Create a Quiz</h1>
		<div class="main_title3" id="choose_quiz_type">
			<button class="button-black" id="trivia_type">Trivia</button>
			Choose type
			<button class="button-black" id="personality_type">Personality</button>
		</div>
		
		<form action="<?php echo site_url("quiz/submit_quiz");?>" method="post" enctype="multipart/form-data">
		
		<div id="quiz_info_div">
			<input type="text" name="name" id="name" class="quiz_input" placeholder="Title*">
			<textarea rows="10" cols="70" placeholder="Description*" name="description" class="quiz_description" id="quiz_description"></textarea>
			<input type="hidden" name="type" id="type" value="">
			<input type="file" name="image" accept="image/*" id="quiz_image" class="filestyle quiz_image" data-classButton="btn btn-primary" data-input="false" data-classIcon="icon-plus" data-buttonText="Choose Picture...*">
			<span class="btn remove_image">Remove Image</span>
			<img src="" class="image_display">
			<input type="hidden" name="questions_count" id="questions_count" value="0">
			<?php 
			  if($this->session->flashdata('error')) { 
				  if(strpos($this->session->flashdata('error'), "You did not select a file to upload") == FALSE)
				  	echo $this->session->flashdata('error');
			  }
			?>
			<div id="quiz_creation_div">
			<div class="question_div" data-id="1">
				<h3>Question 1</h3>
				<label>Question</label><input type="text" name="question1_text" class="quiz_input">
				Optional
				<input type="file" name="question1_image" accept="image/*" class="filestyle quiz_image" data-classButton="btn btn-primary" data-input="false" data-classIcon="icon-plus" data-buttonText="Choose Picture...">
				<span class="btn remove_image">Remove Image</span>
				<img src="" class="image_display">
				<div class="answer_div" data-id="0">	
					<h3 class="answers_title">Answers</h3>			
					<input type="text" class="input_answer quiz_input2" placeholder="Answer Text">
					<span class="btn btn-primary button-black add_answer">Add Answer</span><br><br>
				</div>
			</div>
			</div>
		</div>		
		
		</form>
	</div>
</div>

<?php include 'footer.php';?>