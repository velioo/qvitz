$(document).ready(function() {
	
	var quizes_url = quizesUrl();
	var limit = getLimit();
	var total_groups = getTotalQuizGroups();
	var total_records = 0;	
	var user_id = getUserId();
	var loading = false;	
	
	loading = true;
	$('#loader_image_div').show();
    $.post(quizes_url, {'limit': limit, 'group_number': total_records, 'user_id': user_id},
    	function(data){ 
        if (data != "") { 
	    	  $(data).each(function(index, element) {       		  
	    		  $(element).insertBefore('#loader_image_div');
	    	  });    
	    	  total_records++;
        }
        resize_images();
        loading = false;
        $('#loader_image_div').hide(); 
     });
    
	$(window).scroll(function() {		
		if(total_records >= total_groups) {
			$(window).off('scroll');
		}
	    if(($(window).scrollTop() + $(window).height() > $(document).height() - 100) && loading == false) {    
	        if(total_records < total_groups) {
	          loading = true; 
	          $('#loader_image_div').show(); 
		          $.post(quizes_url,{'limit': limit, 'group_number': total_records, 'user_id': user_id},
	                  function(data){ 
	                      if (data != "") {              
	                    	  $(data).each(function(index, element) {
	                    		  $(element).insertBefore('#loader_image_div');
	                    	  });
	                    	  total_records++;
	                      }
	                      resize_images();
	                      loading = false;
	                      $('#loader_image_div').hide(); 
	                  });         	  
	        }
	    }
	});
	
	function resize_images() {
		$('.quiz_box_image_div').each(function() {
			$(this).height($(this).next().height() + 30);	
		});
	}
    
});