<?php
function asset_url(){
   return base_url().'assets/';
}

function is_new_level($current_points, $new_points) {
	
	switch(true) {
	   case in_array($current_points, range(0, 9)): 
	      if($new_points > 9)  
	      	return TRUE;
	   break;
	   case in_array($current_points, range(10, 29)): 
	      if($new_points > 29)  
	      	return TRUE;
	   break;
	}
	
	return FALSE;
}

function calculate_points($questions_count) {
	$points_to_add = 0;
	switch(true) {
		case in_array($questions_count, range(0, 5)): 
	      	$points_to_add = 2;
	   break;
	   case in_array($questions_count, range(6, 10)): 
	     	$points_to_add = 4;
	   break;
	   case in_array($questions_count, range(11, 15)):
	   	$points_to_add = 6;
	   	break;
	   	case in_array($questions_count, range(16, 20)):
	   		$points_to_add = 8;
	   	break;
	   	case in_array($questions_count, range(21, 25)):
	   		$points_to_add = 10;
	   	break;
	   	case $questions_count > 25:
	   		$points_to_add = 15;
	   	break;
	}
	
	return $points_to_add;
}

