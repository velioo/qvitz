$(document).ready(function() {
	
	/*$(":file").filestyle();*/
	
	var questions_count = 1;
	var results_count = 1;
	var assetUrl = asset_url();
	var twoMB = 2097152;
	
	$('#trivia_type').click(function() {
		$('#choose_quiz_type').text("Create A New Trivia Quiz");
		$('#type').val(1);
	});
	
	$('#personality_type').click(function() {
		$('#choose_quiz_type').text("Create A New Personality Quiz");
		$('#type').val(2)
	});
	
	$('.quiz_image').change(function(){
		var file = this.files[0]
		var size = file.size;
		var fileholder = $(this);	
		var image_holder = $(this).parent().find('.image_display').first();
		var remove_button = $(this).parent().find('.remove_image').first();
		
		if(size > twoMB) {	
			if(fileholder.next().hasClass('error_i')) {
				fileholder.next().remove();
			}	
			fileholder.replaceWith(fileholder = fileholder.clone(true));
			fileholder.next().find('.badge').remove();
			image_holder.hide();
			remove_button.hide();	
			$("<p class='error_i'>Your file is too large. Max size 2MB</p>").insertAfter(fileholder);
		} else {
			if(fileholder.next().hasClass('error_i')) {
				fileholder.next().remove();
			}
			image_holder.show();
			remove_button.show();
			showCover(this, image_holder);
		}
	});
	
	$('.add_answer').click(function() {
		var question_number = $(this).parent().parent().data("id");
		var answer_number = $(this).parent().data("id");	
		answer_number+=1;

		var input = $(this).parent().find('.input_answer');
		var answer_text = input.val();
		
		var new_answer = '<input type="text" name="question' + question_number + '_answer' + answer_number + '_text" class="quiz_input2" value="' + answer_text + '" placeholder="Answer Text">\
						  <input type="hidden" name="question' + question_number + '_answer' + answer_number + '_number" value="' + answer_number + '">\
						  <input type="radio" name="question' + question_number + '_correct_answer_number" value="' + answer_number + '"><br>';
		
		input.val("");
		$(new_answer).insertAfter($(this));
		$(this).parent().data('id', answer_number);
	});
	
	function showCover(input, image) {
	    if (input.files && input.files[0]) {

	        var reader = new FileReader();
	        
	        reader.onload = function (e) {
	        	image.attr('src', e.target.result);    	
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	$('.remove_image').click(function() {
		$(this).hide();
		$(this).next().hide();
		var fileholder = $(this).parent().find('.quiz_image').first();
		fileholder.replaceWith(fileholder = fileholder.clone(true));
		fileholder.next().find('.badge').remove();
	});
	
	
	
});