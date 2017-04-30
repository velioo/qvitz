$(document).ready(function() {
		
	var questions_count = parseInt($('#questions_count').val(), 10);
	var results_count = parseInt($('#results_count').val(), 10);
	var sliders_count = 1;
	var next_slider_max;
	var next_slider_min;
	var assetUrl = asset_url();
	var twoMB = 2097152;
		
	$(":file").filestyle();
	
	$('#trivia_type').click(function() {
		$('#choose_quiz_type').text("Create A New Trivia Quiz");
		$('#type').val(1);
		$('#quiz_form').show();
	});
	
	$('#personality_type').click(function() {
		$('#choose_quiz_type').text("Create A New Personality Quiz");
		$('#type').val(2)
	});
	
	$('#quiz_info_div').on("change", ".quiz_image", function() {
		var file = this.files[0]
		var size = file.size;
		var fileholder = $(this);	
		var image_holder = $(this).parent().find('.image_display').first();
		var remove_button = $(this).parent().find('.remove_image').first();
		
		if(size > twoMB) {	
			if(fileholder.next().hasClass('error_i')) {
				fileholder.next().remove();
			}	
			fileholder.val("");
			fileholder.next().find('.form-control').val("");
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
	
	$('#quiz_info_div').on("click", ".add_answer", function() {
		var question_number = $(this).parent().parent().data("id");
		var answers_count = parseInt($(this).parent().children().first().val(), 10);
		answers_count++;

		var input = $(this).parent().find('.input_answer');
		var answer_text = input.val();
		
		var new_answer = '<input type="text" name="question' + question_number + '_answer' + answers_count + '_text" class="quiz_input2" value="' + answer_text + '" placeholder="Answer Text">\
						  <input type="hidden" name="question' + question_number + '_answer' + answers_count + '_number" class="answer_number" value="' + answers_count + '">\
						  <input type="radio" name="question' + question_number + '_correct_answer_number" class="correct_answer" value="' + answers_count + '"><span class="delete_answer">&#10060;</span>';
		
		input.val("");
		$(new_answer).insertAfter($(this));
		$(this).parent().children().first().val(answers_count);
	});
	
	$('#quiz_info_div').on("click", ".delete_answer", function() {	
		var answers_count = parseInt($(this).parent().children().first().val(), 10);
		answers_count--;
		$(this).parent().children().first().val(answers_count);
		
		var answer_number = parseInt($(this).prev().prev().val(), 10);
		var question_number = $(this).parent().parent().data("id");
		
		var answers = $.makeArray($('.answer_number'));
		
		answers.reverse();
				
		answers.forEach(function(e) {
			var number = parseInt($(e).val(), 10);
			if(number > answer_number) {
				$(e).val(answer_number);
				$(e).attr('name', "question" + question_number + "_answer" + answer_number + "_number");
				$(e).prev().attr('name', "question" + question_number + "_answer" + answer_number + "_text");
				$(e).next().val(answer_number);
				answer_number = number;
			}
		});		
		$(this).prev().remove();
		$(this).prev().remove();
		$(this).prev().remove();
		$(this).remove();
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
	
	$('#quiz_info_div').on("click", ".remove_image", function() {
		$(this).hide();
		$(this).prev().hide();
		$(this).prev().attr('src', "");
		var fileholder = $(this).parent().find('.quiz_image').first();
		fileholder.val("");
		fileholder.next().find('.form-control').val("");
	});
	
	$('#add_question_button').click(function() {
		questions_count = parseInt($('#questions_count').val(), 10);
		questions_count++;
		
		var new_question = '<div class="question_div" data-id="' + questions_count + '">\
							<h3 class="">Question: ' + questions_count + '</h3><span class="delete_element">&#10060;</span>\
							<label>Question</label><input type="text" name="question' + questions_count +'_text" class="quiz_input question_text_input">\
							Optional\
							<input type="file" name="question' + questions_count + '_image" accept="image/*" class="filestyle quiz_image" data-classButton="btn btn-primary" data-input="false" data-classIcon="icon-plus" data-buttonText="Choose Picture...">\
							<img src="" class="image_display">\
							<span class="btn remove_image">Remove Image</span>\
							<div class="answer_div">	\
								<input type="hidden" id="question' + questions_count + '_answers_count" name="question' + questions_count + '_answers_count" value="0">\
								<h3 class="answers_title">Answers</h3>			\
								<input type="text" class="input_answer quiz_input2" placeholder="Answer Text">\
								<span class="btn btn-primary button-black add_answer">Add Answer</span><br><br>\
							</div>\
						</div>';
		
		$(new_question).insertBefore($(this));
		$('#questions_count').val(questions_count);
		$(":file").filestyle();
	});	
	$('#add_result_button').click(function() {
		if(results_count < 100) {
			results_count = parseInt($('#results_count').val(), 10);
			results_count++;
			
			var new_result = '<div class="result_div">\
								<h3>Result: ' + results_count + '</h3><span class="delete_element">&#10060;</span>\
								<input type="text" name="quiz_result' + results_count + '_name" class="quiz_input" placeholder="Result">\
								<textarea rows="5" cols="70" placeholder="Description" name="quiz_result' + results_count + '_text" class="quiz_description"></textarea>\
								<input type="file" name="quiz_result' + results_count + '_image" accept="image/*" class="quiz_image" data-classButton="btn btn-primary" data-buttonText="Choose Picture...*">\
								<img src="" class="image_display">\
								<span class="btn remove_image">Remove Image</span>\
								<div class="slider-range"></div>\
								<input type="hidden" name="quiz_result' + results_count + '_bottom_limit" class="result_limit">\
								<input type="hidden" name="quiz_result' + results_count + '_top_limit" class="result_limit">\
								<div class="show_slider_numbers">\
									<span class="left_slide"></span>\
									<span class="right_slide"></span>\
								</div>\
								<div class="text-center num_of_correct">\
									Percent Correct\
								</div>\
							</div>';
			
			$(new_result).insertBefore($(this));
			$('#results_count').val(results_count);
			$(":file").filestyle();
			sliders_count++;	
			putSlider($(this).prev().find('.slider-range'));
			$(".slider-range").slider("enable");
			
			var len = $('.slider-range').length;
			var range = 100/sliders_count;
			$('.slider-range').each(function(index, element) {
				
				var low_value;
				var high_value;
				
				if(index == 0) {
					low_value = 0;
				} else {
					low_value = Math.floor(range * index + 1);
				}
				
				if(index == len - 1) {
					high_value = 100;
				} else {
					high_value = Math.floor(range * index + range);
				}		
				
				$(this).slider('values',0,low_value);
				$(this).slider('values',1,high_value);
				$(this).next().val(low_value);
				$(this).next().next().val(high_value);
				$(this).parent().find('.left_slide').text(low_value + "%");
				$(this).parent().find('.right_slide').text(high_value + "%");
			});	
		} else {
			window.alert("You've created the maximum number of results for this quiz");
		}
	});
	
	$('.slider-range').each(function() {
		putSlider($(this));
	});	
	
	$(".slider-range").slider("disable");
	
	$('#quiz_info_div').on("keypress", "input", function(e) {
		if(e.keyCode == 13) {
		     e.preventDefault();
		     return false;
		}
	});
	
	$('#quiz_form').submit(function() {
		var quiz_title = $.trim($('#name').val());
		var quiz_description = $.trim($('#quiz_description').val());
		var quiz_image = $('#quiz_image').val();
		var scroll = false;
		
		$('.error').remove();
		
		if(quiz_title === '') {
			$("<p class='error'>Quiz must contain Title!</p>").insertBefore($('#name'));
			scroll = true;
		}	
		
		if(quiz_description === '') {
			$("<p class='error'>Quiz must contain Description!</p>").insertBefore($('#name'));	
			scroll = true;
		}
		
		if(quiz_image === '') {
			$("<p class='error'>Quiz must contain Image!</p>").insertBefore($('#name'));		
			scroll = true;
		}		
		

		if(!$('input:checkbox').is(':checked')) {
			$("<p class='error'>You must choose at lease one Category!</p>").insertBefore($('#name'));		
			scroll = true;
		}
		
		$('.question_text_input').each(function() {
			var question_name = $.trim($(this).val());
			if(question_name === '') {
				var question_number = $(this).parent().data("id");
				$('<p class="error">Question ' + question_number + ' must contain a name!</p>').insertBefore($('#name'));
				scroll = true;
			}
		});
		
		for (i = 1; i <= questions_count; i++) { 
			if (!$("input[name='question" + i + "_correct_answer_number']:checked").val()) {
				$('<p class="error">Select answer for Question ' + i + '</p>').insertBefore($('#name'));
				 scroll = true;
			}
		}		
		
		if(scroll === true) {
			scrollTo($('#name'));
			return false;
		}
	});
	
	function scrollTo(element) {
		$('html, body').animate({
	        scrollTop: element.offset().top - 350
	    }, 200);
	}
	
	function putSlider(element) {
		$(element).slider({
			  range: true,
			  min: 0,
			  max: 100,
			  step: 1,
			  values: [ 0, 100 ],
			  slide: function( event, ui ) {	
				  var current_slider = $(this);				
				  var current_low_value = $(this).slider("values")[0];
				  var current_high_value = $(this).slider("values")[1];		
				  var future_low = ui.values[0];
				  var future_high = ui.values[1];
				  var prevent = false;				  
				  $('.slider-range').each(function() {			
						if(current_slider.is($(this))) {					
							var prev_slider = $(this).parent().prev().find('.slider-range');
							var prev_low_value = prev_slider.slider("values")[0];
							var prev_high_value = prev_slider.slider("values")[1];
							var next_slider = $(this).parent().next().find('.slider-range');
							var next_low_value = next_slider.slider("values")[0];
							var next_high_value = next_slider.slider("values")[1];								
							
							if((current_low_value != future_low) && (current_low_value == 0)) {
								prevent = true;
								return false;
							}
							
							if((current_high_value != future_high) && (current_high_value == 100)) {
								prevent = true;
								return false;
							}
							
							if(current_low_value != future_low) {
								if((prev_low_value == prev_high_value) && (current_low_value > future_low)) {
									prevent = true;
									return false;
								}
								if((prev_low_value == 0) && (prev_high_value == 1) && (current_low_value >= future_low)) {
									prevent = true;
									return false;
								}
								prev_slider.slider('values', 1, future_low - 1);
								prev_slider.next().next().val(future_low - 1);
								prev_slider.parent().find('.right_slide').text((future_low - 1) + "%");																					
							} else if(current_high_value != future_high) {					  
								if((next_low_value == next_high_value) && (current_high_value < future_high)) {
									prevent = true;
									return false;
								}
								next_slider.slider('values', 0, future_high + 1);
								next_slider.next().val(future_high + 1);
								next_slider.parent().find('.left_slide').text((future_high + 1) + "%");					
							}						
							
							if((current_low_value == 0) && (future_high <= 0)) {
								prevent = true;
								return false;
							} else {
								current_slider.next().val(future_low);
								current_slider.next().next().val(future_high);
								current_slider.parent().find('.left_slide').text(future_low + "%");
								current_slider.parent().find('.right_slide').text(future_high + "%");
							}										  
						}
				  });
				  if(prevent === true) {
					  return false;
				  } 
			  }
		})
	}
});