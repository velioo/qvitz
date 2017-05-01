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

$(document).ready(function() {

	$(document).on('click', 'a', function (e) {
		  e.stopPropagation();
	});

	$('a.dropdown-toggle').click(function() {
		$(this).parent().parent().find('.dropdown-submenu').each(function() {
			if($(this).hasClass('open')) {
				$(this).toggleClass('open');
			}
		});
		$(this).parent().toggleClass('open');
	});
});

</script>

<nav class="navbar navbar-inverse navbar-fixed-top navigation">
  <div class="container-fluid navigation_container">
    <div class="navbar-header">
      <a class="navbar-brand" href="<?php echo base_url();?>">
      	<img alt="None" src="<?php echo asset_url()."imgs/qvitz_better.jpg"?>" id="logo" width="150px" height="50px" style="margin-top: -12px;">
      </a>
    </div>
    <br/>

    <div class="dropdown" id="small_menu_dropdown_div">
  		  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" id="navigation_small_button" style="font-family: cursive; font-size:10px;">Menu
		  <span class="caret"></span></button>
		  <ul class="dropdown-menu multi-level" role="menu" id="dropdown_list" style="border-radius: 0px;">
		  	<li class="dropdown-submenu"><a class="dropdown-toggle" href="<?php echo site_url("welcome");?>" style="font-weight: normal;">Home</a></li>
		  	<li class="dropdown-submenu"><a class="dropdown-toggle" href="#" style="font-weight: normal;">Quizes</a>
		  		<ul class="dropdown-menu">
                  <li><a href="#">Browse Quizes</a></li>
                  <li><a href="#">Top Quizes</a></li>
                 </ul>
		  	</li>
		    <li class="dropdown-submenu"><a class="dropdown-toggle" href="#" style="font-weight: normal;">Latest</a>
		    </li>
		    <li class="dropdown-submenu"><a class="dropdown-toggle" href="#" style="font-weight: normal;">Community</a>
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
		  <li class="dropdown">
		  		<a class="dropdown-toggle disabled" data-toggle="dropdown" href="#" style="cursor:default">Category</a>
		  		<ul class="dropdown-menu multi-column columns-4">
		            <div class="row">
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
					            <li><a href="<?php echo site_url("quiz/search_category/animals");?>" class="category_item">Animals</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/anime");?>" class="category_item">Anime</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/audio");?>" class="category_item">Audio</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/big_stories");?>" class="category_item">Big Stories</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/books");?>" class="category_item">Books</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/business");?>" class="category_item">Business</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/buzz");?>" class="category_item">Buzz</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/celebrity");?>" class="category_item">Celebrity</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/community");?>" class="category_item">Comunity</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/entertainment");?>" class="category_item">Entertainment</a></li>
				            </ul>
			            </div>
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
				            	<li><a href="<?php echo site_url("quiz/search_category/food");?>" class="category_item">Food</a></li>
				            	<li><a href="<?php echo site_url("quiz/search_category/geeky");?>" class="category_item">Geeky</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/health");?>" class="category_item">Health</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/love");?>" class="category_item">Love</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/life");?>" class="category_item">Life</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/music");?>" class="category_item">Music</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/parents");?>" class="category_item">Parents</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/podcasts");?>" class="category_item">Podcasts</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/politics");?>" class="category_item">Politics</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/puzzles");?>" class="category_item">Puzzles</a></li>
				            </ul>
			            </div>
			            <div class="col-sm-4">
				            <ul class="multi-column-dropdown">
					            <li><a href="<?php echo site_url("quiz/search_category/reader");?>" class="category_item">Reader</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/rewind");?>" class="category_item">Rewind</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/science");?>" class="category_item">Science</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/shopping");?>" class="category_item">Shopping</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/sports");?>" class="category_item">Sports</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/style");?>" class="category_item">Style</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/tech");?>" class="category_item">Tech</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/travel");?>" class="category_item">Travel</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/weddings");?>" class="category_item">Weddings</a></li>
					            <li><a href="<?php echo site_url("quiz/search_category/world");?>" class="category_item">World</a></li>
				            </ul>
			            </div>
		            </div>
	            </ul>
		  </li>
	</ul>
	
	<div id="navigation_small_search">
		<form class="search_form" name="small_search_form_name" action="<?php echo site_url("quiz/search");?>" method="get" style="display: inline;">
				<input type="text" name="search" id="small_search_box" placeholder="Search..."> 
				<button type="submit" name="submit" id="submit_button">
				   <span class="glyphicon glyphicon-search" style="color:white;"></span>
				</button>
		</form>
	</div>
	
		<div id="navigation_small_logsign">
			<?php if(!isset($this->session->userdata['is_logged_in'])) {?>
		      		<a id="navigation_small_signup" href="<?php echo site_url("SignUp")?>"><span class="glyphicon glyphicon-user"></span> Sign Up</a>
		      		<a id="navigation_small_login" class="log_in_modal" href="<?php //echo site_url("Login")?>"><span class="glyphicon glyphicon-log-in"></span> Login</a>
		    <?php } else {?>
		    	<i class="notifications_icon fa fa-bell" aria-hidden="true"><span class="notifications_number"></span></i>	
				<div class="dropdown small_profile_menu">
				  <button class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown" id="small_user_button"><?php echo $this->session->userdata['username'];?> 
				</button>
				  <ul class="dropdown-menu" style="min-width:50px;">
				    <li><a href="<?php echo site_url("quiz/add_edit_quiz");?>" style="text-align: right;">Create Quiz</a></li>
				  	<li><a href="#" style="text-align: right;">Profile</a></li>
				    <li><a href="<?php echo site_url("userUpdates/settings");?>" style="text-align: right;">Settings</a></li>
				    <li><a href="<?php echo site_url("Login/logout");?>" style="text-align: right;">Logout</a></li>
				  </ul>
				</div>
		    <?php }?>
       </div>
	
      	<ul class="nav navbar-nav navbar-right" id="right_navigation">
	      	<li id="search">
	      		<form class="search_form" name="search_form_name" action="<?php echo site_url('quiz/search');?>" method="get">
					<input type="text" name="search" id="search_box" placeholder="Search...">
					<button class="btn btn-primary dropdown-toggle" type="submit" name="submit" id="submit_button">
					   <span class="glyphicon glyphicon-search" style="color:white;"></span>
					</button>
				</form> 
			</li>
			<?php if(!isset($this->session->userdata['is_logged_in'])) {?>
	      		<li><a id="signup_button" href="<?php echo site_url("SignUp")?>"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
	      		<li><a id="login_button" class="log_in_modal" href="<?php //echo site_url("Login")?>"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      		<?php } else {?>  
      		   <i class="notifications_icon fa fa-bell" aria-hidden="true"><span class="notifications_number"></span></i>	       		   
      	   	   <li class="dropdown profile_menu">     	   	   	  
				  <a id="user_button" href="<?php echo site_url("users/profile/" . $this->session->userdata['username']);?>" style="padding-top:10px;">
				  <div id="user_image_div_main_menu"><img id="user_image_main_menu" src="<?php if($this->session->userdata('user_avatar') != "") { echo asset_url(). "user_images/" . $this->session->userdata('user_avatar');} else { echo asset_url()."imgs/Default_Avatar.jpg";}?>">
				  </div><span id="user_username_main_menu"><?php echo $this->session->userdata['username'];?></span></a>
			      <ul class="dropdown-menu">
				  	<li><a href="<?php echo site_url("quiz/add_edit_quiz");?>" style="text-align: right;">Create Quiz</a></li>
				  	<li><a href="<?php echo site_url("userUpdates/settings");?>" style="text-align: right;">Settings</a></li>
			      	<li><a href="<?php echo site_url("Login/logout");?>" style="text-align: right;">Logout</a></li>
				  </ul>
			  </li>				  
      		<?php }?>
   		</ul>
   		<div class="notifications_content">
		   	<a href="<?php echo site_url("notifications/all_notifications");?>" class="disable-link-decoration"><div class="see_all_notifications gray-text">See all notifications</div></a>
		   	<div class="notifications" id="notifications">
		   	
		   	</div>
		</div>
  </div>
</nav>

<?php if(!$logged) { include 'login_modal.php'; }?>