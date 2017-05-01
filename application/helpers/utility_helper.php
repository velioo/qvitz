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

function calculate_time_ago($created_at) {
	
	$current_time = $date = date('Y-m-d H:i:s');
	$current_time = strtotime($current_time);
	$date_created = strtotime($created_at);
		
	$time_difference = $current_time - $date_created;
		
	if($time_difference < 60) {
		$time_ago = $time_difference . " seconds ago";
	} else if($time_difference >= 60 && $time_difference < 3600) {
		$time_ago = round($time_difference / 60);
		if($time_ago == 1) {
			$time_ago.=" minute ago";
		} else {
			$time_ago.=" minutes ago";
		}
	} else if($time_difference >= 3600 && $time_difference < 86400) {
		$time_ago = round($time_difference / 3600);
		if($time_ago == 1) {
			$time_ago.=" hour ago";
		} else {
			$time_ago.=" hours ago";
		}
	} else {
		$time_ago = round(($time_difference / (3600 * 24)));
		if($time_ago == 1) {
			$time_ago.=" day ago";
		} else {
			$time_ago.=" days ago";
		}
	}
	
	return $time_ago;
}

