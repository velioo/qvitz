<?php defined('BASEPATH') OR exit('No direct script access allowed');?>
<?php include 'head.php';?>
<?php include 'navigation.php';?>

<?php 
if (!$logged) {
	header("location: " . site_url("Login/log_in"));
}
?>

<script src="<?php echo asset_url() . "bootstrap-filestyle-1.2.1/src/bootstrap-filestyle.min.js";?>"></script>
<link rel="stylesheet" type="text/css" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/themes/ui-lightness/jquery-ui.css">
<script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.10.3/jquery-ui.js"></script>

<script>

	$(document).ready(function() {
		$('head').append('<script src="<?php echo asset_url() . "js/create_quiz.js";?>">');
		var genres_checkbox = "<?php echo asset_url() . "imgs/genres_checkbox.png";?>";
		$('label.css-label').css('background-image', 'url(' + genres_checkbox + ')');
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
		
		<form action="<?php echo site_url("quiz/submit_quiz");?>" id="quiz_form" method="post" enctype="multipart/form-data">
		
		<div id="quiz_info_div">
			<input type="text" name="name" id="name" class="quiz_input" placeholder="Title*">
			<textarea rows="10" cols="70" placeholder="Description*" name="description" class="quiz_description" id="quiz_description"></textarea>
			<input type="hidden" name="type" id="type" value="">
			<input type="file" name="image" accept="image/*" id="quiz_image" class="quiz_image" data-classButton="btn btn-primary" data-buttonText="Choose Picture...*">	
			<img src="" class="image_display">
			<span class="btn remove_image">Remove Image</span>
			<input type="hidden" name="questions_count" id="questions_count" value="1">
			<input type="hidden" name="results_count" id="results_count" value="1">
			<?php 
			  if($this->session->flashdata('error')) { 
				  if(strpos($this->session->flashdata('error'), "You did not select a file to upload") == FALSE)
				  	echo $this->session->flashdata('error');
			  }
			?>
			<h3>Choose Categories:</h3>
			<div id="categories_tab" class="tab-pane">
		  		<div class="category_div"><input id="animals_category" type="checkbox" name="category[]" value="animals" class="css-checkbox"> <label for="animals_category" class="css-label">Animals</label></div>
		  		<div class="category_div"><input id="anime_category" type="checkbox" name="category[]" value="anime" class="css-checkbox"> <label for="anime_category" class="css-label">Anime</label></div>
		  		<div class="category_div"><input id="audio_category" type="checkbox" name="category[]" value="audio" class="css-checkbox"> <label for="audio_category" class="css-label">Audio</label></div>
		  		<div class="category_div"><input id="big_stories_category" type="checkbox" name="category[]" value="big_stories" class="css-checkbox"> <label for="big_stories_category" class="css-label">Big Stories</label></div>
		  		<div class="category_div"><input id="books_category" type="checkbox" name="category[]" value="books" class="css-checkbox"> <label for="books_category" class="css-label">Books</label></div>
		  		<div class="category_div"><input id="business_category" type="checkbox" name="category[]" value="business" class="css-checkbox"> <label for="business_category" class="css-label">Business</label></div>
		  		<div class="category_div"><input id="buzz_category" type="checkbox" name="category[]" value="buzz" class="css-checkbox"> <label for="buzz_category" class="css-label">Buzz</label></div>
		  		<div class="category_div"><input id="celebrity_category" type="checkbox" name="category[]" value="celebrity" class="css-checkbox"> <label for="celebrity_category" class="css-label">Celebrity</label></div>
		  		<div class="category_div"><input id="community_category" type="checkbox" name="category[]" value="community" class="css-checkbox"> <label for="community_category" class="css-label">Community</label></div>
		  		<div class="category_div"><input id="entertainment_category" type="checkbox" name="category[]" value="entertainment" class="css-checkbox"> <label for="entertainment_category" class="css-label">Entertainment</label></div>
		  		<div class="category_div"><input id="food_category" type="checkbox" name="category[]" value="food" class="css-checkbox"> <label for="food_category" class="css-label">Food</label></div>
		  		<div class="category_div"><input id="geeky_category" type="checkbox" name="category[]" value="geeky" class="css-checkbox"> <label for="geeky_category" class="css-label">Geeky</label></div>
		  		<div class="category_div"><input id="health_category" type="checkbox" name="category[]" value="health" class="css-checkbox"> <label for="health_category" class="css-label">Health</label></div>
		  		<div class="category_div"><input id="lgbt_category" type="checkbox" name="category[]" value="lgbt" class="css-checkbox"> <label for="lgbt_category" class="css-label">LGBT</label></div>
		  		<div class="category_div"><input id="life_category" type="checkbox" name="category[]" value="life" class="css-checkbox"> <label for="life_category" class="css-label">Life</label></div>
		  		<div class="category_div"><input id="music_category" type="checkbox" name="category[]" value="music" class="css-checkbox"> <label for="music_category" class="css-label">Music</label></div>
		  		<div class="category_div"><input id="parents_category" type="checkbox" name="category[]" value="parents" class="css-checkbox"> <label for="parents_category" class="css-label">Parents</label></div>
		  		<div class="category_div"><input id="podcasts_category" type="checkbox" name="category[]" value="podcasts" class="css-checkbox"> <label for="podcasts_category" class="css-label">Podcasts</label></div>
		  		<div class="category_div"><input id="politics_category" type="checkbox" name="category[]" value="politics" class="css-checkbox"> <label for="politics_category" class="css-label">Politics</label></div>
		  		<div class="category_div"><input id="puzzles_category" type="checkbox" name="category[]" value="puzzles" class="css-checkbox"> <label for="puzzles_category" class="css-label">Puzzles</label></div>
		  		<div class="category_div"><input id="reader_category" type="checkbox" name="category[]" value="reader" class="css-checkbox"> <label for="reader_category" class="css-label">Reader</label></div>
		  		<div class="category_div"><input id="rewind_category" type="checkbox" name="category[]" value="rewind" class="css-checkbox"> <label for="rewind_category" class="css-label">Rewind</label></div>
		  		<div class="category_div"><input id="science_category" type="checkbox" name="category[]" value="science" class="css-checkbox"> <label for="science_category" class="css-label">Science</label></div>
		  		<div class="category_div"><input id="shopping_category" type="checkbox" name="category[]" value="shopping" class="css-checkbox"> <label for="shopping_category" class="css-label">Shopping</label></div>
		  		<div class="category_div"><input id="sports_category" type="checkbox" name="category[]" value="sports" class="css-checkbox"> <label for="sports_category" class="css-label">Sports</label></div>
		  		<div class="category_div"><input id="style_category" type="checkbox" name="category[]" value="style" class="css-checkbox"> <label for="style_category" class="css-label">Style</label></div>
		  		<div class="category_div"><input id="tech_category" type="checkbox" name="category[]" value="tech" class="css-checkbox"> <label for="tech_category" class="css-label">Tech</label></div>
		  		<div class="category_div"><input id="travel_category" type="checkbox" name="category[]" value="travel" class="css-checkbox"> <label for="travel_category" class="css-label">Travel</label></div>
		  		<div class="category_div"><input id="weddings_category" type="checkbox" name="category[]" value="weddings" class="css-checkbox"> <label for="weddings_category" class="css-label">Weddings</label></div>
		  		<div class="category_div"><input id="world_category" type="checkbox" name="category[]" value="world" class="css-checkbox"> <label for="world_category" class="css-label">World</label></div>
		  	</div>
			<div id="quiz_creation_div">
				<div class="question_div" data-id="1">
					<h3>Question: 1</h3><span class="delete_element">&#10060;</span>
					<label>Question</label><input type="text" name="question1_text" class="quiz_input question_text_input">
					Optional
					<input type="file" name="question1_image" accept="image/*" class="quiz_image" data-classButton="btn btn-primary" data-buttonText="Choose Picture...">
					<img src="" class="image_display">
					<span class="btn remove_image">Remove Image</span>			
					<div class="answer_div">	
						<input type="hidden" id="question1_answers_count" name="question1_answers_count" value="0">
						<h3 class="answers_title">Answers</h3>			
						<input type="text" class="input_answer quiz_input2" placeholder="Answer Text">
						<span class="btn btn-primary button-black add_answer">Add Answer</span><br><br>
					</div>
				</div>
				<p class="btn btn-primary button-black" id="add_question_button">Add Question</p>				
		   </div>
		   <div id="quiz_results_div">
		   		<div class="result_div">
					<h3>Result: 1</h3><span class="delete_element">&#10060;</span>
					<input type="text" name="quiz_result1_name" class="quiz_input" placeholder="Result">
					<textarea rows="5" cols="70" placeholder="Description" name="quiz_result1_text" class="quiz_description"></textarea>
					<input type="file" name="quiz_result1_image" accept="image/*" class="quiz_image" data-classButton="btn btn-primary" data-buttonText="Choose Picture...*">	
					<img src="" class="image_display">
					<span class="btn remove_image">Remove Image</span>			
					<div class="slider-range"></div>
					<input type="hidden" name="quiz_result1_bottom_limit" class="result_limit" value="0">
					<input type="hidden" name="quiz_result1_top_limit" class="result_limit" value="100">	
					<div class="show_slider_numbers">
						<span class="left_slide">0%</span>
						<span class="right_slide">100%</span>	
					</div>	
					<div class="text-center num_of_correct">
						Percent Correct	
					</div>									
				</div>
				<p class="btn btn-primary button-black" id="add_result_button">Add Result</p>
		   </div>
		   <div class="text-center">
		   		<input type="submit" class="btn btn-primary button-black" name="submit" id="submit_quiz" value="Create Quiz">
		   </div>		   
		</div>		
		
		</form>
	</div>
</div>

<?php include 'footer.php';?>