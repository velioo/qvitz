<?php if($this->session->userdata("is_logged_in") === TRUE) {$logged = TRUE;} else {$logged = FALSE;}?>

<script>

function getNotificationsUrl() {
	var notificationUrl = "<?php echo site_url("notifications/load_notifications");?>";
	return notificationUrl;
}

function getMarkAsReadUrl() {
	var markAsReadUrl = "<?php echo site_url("notifications/mark_as_read");?>";
	return markAsReadUrl;
}

<?php if($logged) {?>
	$('head').append('<script src="<?php echo asset_url() . "js/notifications.js";?>">');
<?php }?>
</script>

<nav class="navbar navbar-inverse navbar-fixed-top navigation">
  <div class="container-fluid navigation_container">
    <div class="navbar-header">
      <a class="navbar-brand" href="<?php echo base_url();?>">
      	<img alt="None" src="<?php echo asset_url()."imgs/logo.jpg"?>" id="logo" width="150px" height="50px" style="margin-top: -12px;">
      </a>
    </div>
    <br/>

    <div class="dropdown" id="small_menu_dropdown_div">
  	<button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" id="navigation_small_button" style="font-family: cursive; font-size:10px;">Menu
		  <span class="caret"></span></button>
		  <ul class="dropdown-menu multi-level" role="menu" id="dropdown_list" style="border-radius: 0px;">
		  	<li class="dropdown-submenu"><a class="dropdown-toggle disabled" data-toggle="dropdown" href="<?php echo site_url("welcome");?>" style="font-weight: normal;">Home</a>
		  	<li class="dropdown-submenu"><a class="dropdown-toggle disabled" data-toggle="dropdown" href="#" style="cursor:default; font-weight: normal;">Quizes</a>
		  		<ul class="dropdown-menu">
                  <li><a href="#">Browse Quizes</a></li>
                  <li><a href="#">Top Quizes</a></li>
                 </ul>
		  	</li>
		    <li class="dropdown-submenu"><a class="dropdown-toggle disabled" href="#" style="font-weight: normal;">Latest</a>
		    </li>
		    <li class="dropdown-submenu"><a class="dropdown-toggle disabled" data-toggle="dropdown" href="#" style="cursor:default; font-weight: normal;">Community</a>
		    	<ul class="dropdown-menu">
                  <li><a href="#">Browse Users</a></li>
                </ul>
		    </li>
		  </ul>
	</div>

    <ul class="nav navbar-nav">
	      <li class="dropdown">
		      <a class="dropdown-toggle disabled" data-toggle="dropdown" href="#" style="cursor:default">Quizes</a>
	      <ul class="dropdown-menu">
		      <li><a href="#">Browse Quizes</a></li>
	      	  <li><a href="#">Top Quizes</a></li>
		  </ul>
	  </li>
	  <li class="dropdown">
		  <a class="dropdown-toggle disabled" data-toggle="dropdown" href="#">Latest</a>
	  </li>
		  <li class="dropdown">
			  <a class="dropdown-toggle disabled" data-toggle="dropdown" href="#" style="cursor:default">Community</a>
		      <ul class="dropdown-menu">
		      	<li><a href="#">Browse Users</a></li>
			  </ul>
		  </li>
	</ul>
	
	<div id="navigation_small_search">
		<form class="search_form" name="small_search_form_name" action="<?php echo site_url("searchC/search");?>" method="get" style="display: inline;">
				<input type="text" name="search" id="small_search_box" placeholder="Search..."> 
				<button type="submit" name="submit" id="submit_button">
				   <span class="glyphicon glyphicon-search" style="color:white;"></span>
				</button>
		</form>
	</div>
	
		<div id="navigation_small_logsign">
			<?php if(!isset($this->session->userdata['is_logged_in'])) {?>
		      		<a id="navigation_small_signup" href="<?php echo site_url("SignUp")?>"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
		      		<a id="navigation_small_login" href="<?php echo site_url("Login")?>"><span class="glyphicon glyphicon-log-in"></span> Login</a>
		    <?php } else {?>
		    	<i class="notifications_icon fa fa-bell" aria-hidden="true"><span class="notifications_number"></span></i>	
				<div class="dropdown small_profile_menu">
				  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" id="small_user_button"><?php echo $this->session->userdata['username'];?> 
				</button>
				  <ul class="dropdown-menu" style="min-width:50px;">
				  	<li><a href="#" style="text-align: right;">Profile</a></li>
				    <li><a href="#" style="text-align: right;">Settings</a></li>
				    <li><a href="<?php echo site_url("Login/logout"); ?>" style="text-align: right;">Logout</a></li>
				  </ul>
				</div>
		    <?php }?>
       </div>
	
      	<ul class="nav navbar-nav navbar-right" id="right_navigation">
	      	<li id="search">
	      		<form class="search_form" name="search_form_name" action="<?php echo site_url('searchC/search');?>" method="get">
					<input type="text" name="search" id="search_box" placeholder="Search...">
					<button class="btn btn-primary dropdown-toggle" type="submit" name="submit" id="submit_button">
					   <span class="glyphicon glyphicon-search" style="color:white;"></span>
					</button>
				</form> 
			</li>
			<?php if(!isset($this->session->userdata['is_logged_in'])) {?>
	      		<li><a id="signup_button" href="<?php echo site_url("SignUp")?>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	      		<li><a id="login_button" href="<?php echo site_url("Login")?>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      		<?php } else {?>  
      		   <i class="notifications_icon fa fa-bell" aria-hidden="true"><span class="notifications_number"></span></i>	       		   
      	   	   <li class="dropdown profile_menu">     	   	   	  
				  <a id="user_button" href="<?php echo site_url("users/profile/" . $this->session->userdata['username']);?>" style="padding-top:10px;">
				  <div id="user_image_div_main_menu"><img id="user_image_main_menu" src="<?php if($this->session->userdata('user_avatar') != "") { echo asset_url(). "user_profile_images/" . $this->session->userdata('user_avatar');} else { echo asset_url()."imgs/Default_Avatar.jpg";}?>">
				  </div><span id="user_username_main_menu"><?php echo $this->session->userdata['username'];?></span></a>
			      <ul class="dropdown-menu">
				  	<li><a href="#" style="text-align: right;">Settings</a></li>
			      	<li><a href="#" style="text-align: right;">Logout</a></li>
				  </ul>
			  </li>				  
      		<?php }?>
   		</ul>
   		<div class="notifications_content">
		   	<a href="<?php echo site_url("notifications/all_notifications");?>" class="disable-link-decoration"><div class="see_all_notifications gray-text">See all notifications</div></a>
		   	<div class="notifications">
		   	
		   	</div>
		</div>
  </div>
</nav>