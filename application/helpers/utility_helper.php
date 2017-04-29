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