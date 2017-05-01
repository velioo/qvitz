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
	var load_comments_url = getLoadCommentsUrl();
	var total_records = 0;
	var total_groups = getTotalCommentGroups();
	var comment_reference = getCommentReference();
	
	var loading = false;
	
	$('#new_post_area').autogrow({vertical: true, horizontal: false, flickering: false});
	
	$('#new_post_area').focus(function() {
		$('#post_options').css("display", "inline-block");
	});
	
	loading = true;
    $.post(load_comments_url, {'quiz_id': quiz_id, 'group_number': total_records},
	    function(data){ 
	        if (data != "") {  
		        $(data).each(function(index, element) {
		        	$("#comments").append(element);
		        });		        
		    	add_fix_comments();		    	
		        total_records++;
	         }
	        if(comment_reference != -1) {
	        	var element = $('#comments').find("[data-id='" + comment_reference + "']");
	        	element.css("border", "1px solid #FC9F3C");
	        	scrollToElement(element);
	        }
	        loading = false;
    });
    
	$(window).scroll(function() {		
		if(total_records >= total_groups) {
			$(window).off('scroll');
		}
	    if(($(window).scrollTop() + $(window).height() == $(document).height()) && loading == false) {    
	        if(total_records < total_groups) {
	          loading = true; 
	          $('#loader_image_div2').show(); 
		          $.post(load_comments_url, {'quiz_id': quiz_id, 'group_number': total_records},
	                  function(data){ 
	                      if (data != "") {              
	                    	  $(data).each(function(index, element) {
	                    		   $("#comments").append(element);
	                    	  });
	                    	  add_fix_comments();	
	                    	  total_records++;
	                      }
	                      loading = false;
	                      $('#loader_image_div2').hide(); 
	                  });         	  
	        }
	    }
	});
	
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
	
	$('#submit_post').click(function() {
		
		var content = strip_tags($('#new_post_area').val());
		
		 if(content != "") {
			 
			var div = document.createElement('div');
			div.innerHTML = content;
			var content = div.textContent || div.innerText || '';

			 var user_url = getUserUrl();
			 var username = getUserName();
			 var user_image = getUserImage();			 
			 var url = getAddCommentUrl();
			 var onerror_url = getOnErrorUrl();
		     var date = Date().toString();
			 date = date.split(' ');
			 date = date[2] + " " + date[1] + " " + date[3];	
			 
			$.ajax({
		        method: "POST",
		        url: url,
		        data: { quiz_id: quiz_id, content: content }
		      })
		    .done(function(comment_id) {
		    	if(comment_id) {	    		
					$('#comments').prepend("<div class='comment' data-id='" + comment_id + "'>\
								<div class='user_image_div'>\
						      		<a href='" + user_url + "'><img class='user_image' src='" + user_image + "' onerror='this.onerror=null;this.src=\"" + onerror_url + "\";' ></a>\
						        </div>\
						         <div class='comment_text more'><span class='user_name'><a href='" + user_url + "'class='disable-link-decoration'>" + username + "&nbsp</a></span><span class='content'>" + content + "</span></div>" +		        					       
						       "<div class='post_time'>" + date +
						       "</div>\
							</div>");
					$('#new_post_area').val('');
					$('#post_options').hide();	

					 add_fix_comments();			    		
		    	} else {
		    		window.alert("Failed to create comment")
		    	}
		    });
		}
	});

	function strip_tags(str){
		return str.replace(/<\/?[^>]+>/gi, '');
	}
	
	function scrollToBottom() {
		$('html, body').animate({
	        scrollTop: $(document).height()
	    }, 1000);
	}
	
	function scrollToElement(element) {
		$('html, body').scrollTop(element.offset().top);
	}
	
	function add_fix_comments() {
		$('.comment_text').each(function() {
			if($(this).height() <= 25) {
				$(this).parent().find('.post_time').css("margin-top", "-20px");
			} else {
				$(this).parent().find('.post_time').css("margin-top", "0px");
			}
			show_hide_text($(this));
		});
	}
	
	function show_hide_text(element) {
		var showChar = 150;
		var ellipsestext = "...";
		var moretext = "Show more";
		var lesstext = "Show less";
		
	    var content = element.find('.content').html();
	    
	    if(content.length > showChar) {

	        var c = content.substr(0, showChar);
	        var h = content.substr(showChar, content.length - showChar);

	        var html = c + '<span class="moreellipses">' + ellipsestext + '&nbsp;</span><span class="morecontent"><span class="morecontent_span">' + h + '</span>&nbsp;&nbsp;<p class="morelink red-text">' + moretext + '</p></span>';

	        element.find('.content').html(html);
	    }

		$(element).find('.morelink').click(function(){
		    if($(this).hasClass("less")) {
		        $(this).removeClass("less");
		        $(this).html(moretext);
		    } else {
		        $(this).addClass("less");
		        $(this).html(lesstext);
		    }
		    $(this).parent().prev().toggle();
		    $(this).prev().toggle();
		    return false;
		});
	}
	
});