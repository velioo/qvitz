$(document).ready(function() {
	
	var quiz_id = getQuizId();
	var answers = getAnswers();
	var answered_question_ids = [];
	var num_correct_answers = 0;
	var total_answered_questions = 0;
	var total_questions = getQuestionsCount();
	var checkedbox_url = getCheckedboxUrl();
	var uncheckedbox_url = getUnCheckedboxUrl();
	var result_url = getResultUrl();
	
	$('.answer').click(function() {
		var answer_number = parseInt($(this).data('id'), 10);
		var question_id = String($(this).parent().parent().data('id'));
		if(answered_question_ids.indexOf(question_id) == -1) {	
			$(this).toggleClass('a_hover');
			var question_id_index = answers.indexOf(question_id);
			if(question_id_index != -1) {
				var correct_answer_number = parseInt(answers[question_id_index + 1], 10);
				$(this).find('.answer_checkbox').attr("src", checkedbox_url);
				if(answer_number === correct_answer_number) {
					$(this).css('background-color', 'green');
					num_correct_answers++;
				} else {
					$(this).css('background-color', 'red');
					$(this).parent().find("[data-id='" + correct_answer_number + "']").css('background-color', 'green');
				}
				total_answered_questions++;
				answered_question_ids.push(question_id);
			}
			
			if(total_answered_questions == total_questions) {
				scrollToBottom();
				
				$('#loader_image_div').show();
			    $.post(result_url, {'quiz_id': quiz_id, 'num_correct_answers': num_correct_answers, 'questions_count': total_questions},
			    	function(data){ 
			        if (data != "") { 
				    	  $(data).each(function(index, element) {       		  
				    		  $(element).insertBefore('#loader_image_div');
				    	  });    
			        } else {
			        	window.alert("There was an error getting your result");
			        }
			        $('#loader_image_div').hide(); 
			     });
			    
			    $('#retake_quiz_button').show();
				
			}
		}
	});
	
	$('#retake_quiz_button').click(function() {
		$('.answer').each(function() {
			if(!$(this).hasClass('a_hover')) {
				$(this).toggleClass('a_hover');
			}
			$(this).css('background-color','white');
			$(this).find('.answer_checkbox').attr("src", uncheckedbox_url);
		});
		$('.result_div').remove();
		answered_question_ids = [];
		num_correct_answers = 0;
		total_answered_questions = 0;
		$(this).hide();
		window.scrollTo(0, 0);
	});

	function scrollToBottom() {
		$('html, body').animate({
	        scrollTop: $(document).height()
	    }, 1000);
	}
	
});