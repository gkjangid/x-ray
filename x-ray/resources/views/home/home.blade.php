
<link rel="stylesheet" href="../../maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<!DOCTYPE html>
<html lang="en">
<head>
	<title>XRayIndia</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="shortcut icon" href="http://xray-india.com/logo.ico" type="image/x-icon">
	<link href="https://fonts.googleapis.com/css?family=Poppins%7CQuicksand:500,700" rel="stylesheet">
    <link rel="stylesheet" href="<?php echo url('/'); ?>public/home/owl/assets/owl.carousel.min.css">
    <link rel="stylesheet" href="<?php echo url('/'); ?>public/home/owl/assets/owl.theme.default.min.css">
	<link rel="stylesheet" href="<?php echo url('/'); ?>public/home/css/font-awesome.min.css">
	<link href="<?php echo url('/'); ?>/public/home/css/materialize.css" rel="stylesheet">
	<link href="<?php echo url('/'); ?>/public/home/css/style3ac3.css?update" rel="stylesheet">
	<link href="<?php echo url('/'); ?>/public/home/css/bootstrap.css" rel="stylesheet" type="text/css" />
	<link href="<?php echo url('/'); ?>/public/home/css/responsive.css" rel="stylesheet">
	<link href="<?php echo url('/'); ?>/public/home/css/password.css" rel="stylesheet">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
</head>

<style>
section.pg-list-1 {
    margin: 0;
}

img.hader_add {
    width: 100%;
    height: 100px;
    margin: 20px 0;
}	
	.container.head {
    background: #920909;
    width: 100%;
}
.side_menu {
    background: #920909;
    padding: 0 15px;
    margin: 10px 0;
}
.side_menu li {
    padding: 10px 0;
    border-bottom: 1px solid #fff;
    color: #fff;
}
.side_menu li a{
	color: #fff;
	text-decoration: none;
}
section.dir1-home-head.head {
    background: #00857a;
}
form.tourz-search-form.form-sub-main {
    background: none;
}
#myCarousel{
	 margin: 0px 0;
	 height: 650px !important;
    width: 100% !important;
	}
</style>
<style>


</style>
<script>
	function closeMessage(){		
		$('.alert').remove();
	}
</script><body oncontextmenu="return false;" oncopy="return false" oncut="return false" onpaste="return false">
	
	<div id="preloader">
		<div id="status">&nbsp;</div>
	</div>
	<!--BANNER AND SERACH BOX-->
	<section id="" class="dir1-home-head head">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="dir-ho-tl">
						<ul>
							<li>
								<a href="<?php echo url('/'); ?>"><img src="<?php echo url('/'); ?>/public/home/images/logo.png" alt=""> </a>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-md-6 col-sm-6">
					<div class="dir-ho-tr">
						<ul>
														<li><a href="singnup">Register</a> </li>
														<?php
 							if(Session::get('user_id'))
 							{
 								
                                  ?>
							<li><a href="signout">Logout</a> </li>
								<li><a href="<?php echo url('/'); ?>/update-profile"><i class="fas fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
							<?php } else { ?><li><a href="signin">Sign In</a> </li> <?php } ?>
						   						   						   
						   						</ul>
					</div>
				</div>
			</div>
		</div>
		<div class="container dir-ho-t-sp" style="padding: 0px;" >
			<div class="row">
				<div class="dir-hr1" style="width:100%">
					
					 <!-- silder search -->
					<form style="margin: 0px;" action="listing" class="tourz-search-form form-sub-main">
						<div class="input-field customeselect">
						<!-- <select class="form-control select2" name="city" id="city" required>
						 <option value=""> ---Select City--- </option>
						 <?php
 						foreach ($city as $key => $value) {
 							# code...
 						
						?>
						 <option value="<?php echo $value->City ?>"><?php echo $value->City ?> </option>
						<?php } ?>
						 </select>	 -->	
							<input name="city" type="text" id="top-select-city" class="typeahead ssss" placeholder="City"  >
						</div>
						<div class="input-field">
						<select class="form-control " name="category" id="category" required>
						 <option value=""> ---Select Category--- </option>
						 <?php
 						foreach ($category as $key => $value) {
 							# code...
 						
						?>
						 <option value="<?php echo $value->id ?>"><?php echo $value->category ?> </option>
						<?php } ?>
						 </select>		
						</div>
						<input type="hidden" name="sub_cat" id="selectuser_id"> 
						<div class="input-field" style="width:28%">
							<input type="text" id="top-select-search" class="typeahead sub" name="serch" placeholder="Search your services....">
						</div>
						

						
						
						<div class="input-field">
							<input type="submit" class="submit-form" name="submit_search"> 
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!--TOP SEARCH SECTION-->
	<section id="myID" class="bottomMenu hom-top-menu">
		<div class="container top-search-main">
			<div class="row">
				<div class="ts-menu">
					<!--SECTION: LOGO-->
					<div class="ts-menu-1">
						<a href="index.html"><img src="<?php echo url('/'); ?>/public/home/images/aff-logo.png" alt=""> </a>
					</div>
					<div class="ts-menu-2"><a style="cursor: pointer;" class="t-bb">All Pages <i class="fas fa-angle-down"></i></a>
						<!--SECTION: BROWSE CATEGORY-->
						<div class="cat-menu cat-menu-1">
							<div class="dz-menu">
								<div class="dz-menu-inn">
									<h4>Menus</h4>
									<ul>
										<li><a href="<?php echo url('/'); ?>">Home</a></li>
										<li><a href="<?php echo url('/'); ?>/listing">All Listing</a></li>
										<li><a href="<?php echo url('/'); ?>/about-us">About Us</a></li>
										<li><a href="<?php echo url('/'); ?>/contact">Contact Us</a> </li>
										
										
									</ul>
								</div>
								
								<div class="dir-home-nav-bot">
								<ul>
									<li>A few reasons you’ll love Online Business Directory <span>Call us on: +01 6214 6548</span> </li>
									<li><a href="<?php echo url('/'); ?>/signin" class="waves-effect waves-light btn-large"><i class="fa fa-bookmark"></i> Add your business</a>
									</li>
								    
								</ul>
							</div>
							</div>
						</div>
					</div>
					<div class="ts-menu-3">
						<div class="">
							<form action="http://xray-india.com/resource/list_search.php" method="GET" class="tourz-search-form tourz-top-search-form">
								<div class="input-field">
									<input name="city" type="text" id="top-select-city"  value="" class="typeahead"  >
									<label for="top-select-city"></label>
								</div>
								<div class="input-field">
									<input name="serch" type="text" id="top-select-search" class="typeahead" placeholder="Search your services....." >
									<!---<label for="top-select-search" class="search-hotel-type">Search your services.....</label>----->
								</div>
								<div class="input-field">
									<input type="submit" class="submit-form"  name="submit_search"> </div>
							</form>
						</div>
					</div>
					<!--SECTION: REGISTER,SIGNIN AND ADD YOUR BUSINESS-->
					<div class="ts-menu-4">
						<div class="v3-top-ri">
							<ul>
                                								<li><a href="<?php echo url('/'); ?>/signin" class="v3-menu-sign"><i class="fas fa-sign-in-alt"></i> Sign In</a> </li>
							   								<li><a href="<?php echo url('/'); ?>/signin" class="v3-add-bus"><i class="fas fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
							</ul>
						</div>
					</div>




					<!--MOBILE MENU ICON:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="ts-menu-5"><span><i class="fas fa-bars" aria-hidden="true"></i></span> </div>
					<!--MOBILE MENU CONTAINER:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="mob-right-nav" data-wow-duration="0.5s">
						<div class="mob-right-nav-close"><i class="fas fa-times" aria-hidden="true"></i> </div>
						<!-- <h5>Business</h5> -->
						<ul class="mob-menu-icon">
							<li><a href="<?php echo url('/'); ?>/update-profile">Add Listing</a> </li>
							<!-- <li><a href="#!" data-toggle="modal" data-target="#register">Register</a> </li> -->
							 							<li><a href="<?php echo url('/'); ?>/signin" >Sign In</a> </li>
													</ul>
						<h5>Menus</h5>
						<ul>
							<li><i class="fas fa-angle-right" aria-hidden="true"></i><a href="<?php echo url('/'); ?>">Home</a></li>
							<li><i class="fas fa-angle-right" aria-hidden="true"></i><a href="<?php echo url('/'); ?>/listing">All Listing</a></li>
							<li><i class="fas fa-angle-right" aria-hidden="true"></i><a href="<?php echo url('/'); ?>/about-us">About Us</a></li>
							<li><i class="fas fa-angle-right" aria-hidden="true"></i><a href="<?php echo url('/'); ?>/contact">Contact Us</a> </li>
							
						</ul>
					</div>
				</div>
			</div>
		</div>
	</section>


				<section class="silder_01">
				<div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="Los Angeles" style="width:100%;">
        <div class="carousel-caption">
        	<h3>Lakes</h3>
        </div>
      </div>

      <div class="item">
        <img src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="Chicago" style="width:100%;">
        <div class="carousel-caption">
        	<h3>Lakes</h3>
        </div>
      </div>
    
      <div class="item">
        <img src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="New york" style="width:100%;">
        <div class="carousel-caption">
        	<h3>Lakes</h3>
        </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      
      <span class="sr-only">Next</span>
    </a>
  </div>
</section>
			<div class="clearfix"></div>






<section class="com-padd com-padd-redu-bot1 pad-bot-red-40">
		<div class="container">
			<div class="row">
				<div class="com-title">
					<h2>Find your <span>Services</span></h2>
					<p>Explore some of the best business from around the world from our partners and friends.</p>
				</div>
				<div class="dir-hli">
					<ul>
						<?php
 						foreach ($category as $key => $value) {
 							# code...
 						
						?>
						<!--=====LISTINGS======-->
						<li class="col-md-4 col-sm-6">
							<a href="<?php echo url('/'); ?>/listing/<?php echo $value->id; ?>">
								<div class="dir-hli-5">
									<div class="dir-hli-1">
										<div class="dir-hli-3"><img src="images/hci1.png" alt=""> </div>
										<div class="dir-hli-4"> </div> <img src="<?php echo url('/'); ?>/public/home/images/<?php echo $value->image ?>" alt=""> </div>
									<div class="dir-hli-2">
										<h4><?php echo $value->category ?><span class="dir-ho-cat">Show All (940)</span></h4> </div>
								</div>
							</a>
						</li>
						<?php  } ?>
						
						<!--=====LISTINGS======-->
					
					</ul>
				</div>
			</div>
		</div>
	</section>








<section class="blog-section">
        <div class="container">
            <div class="sec-title">
                <h2><span>Our latest  </span>Blogs</h2>
                <p>There are many variations of lorem of Lorem Ipsum available for use a sit amet, consectetur debits adipisicing lacus.</p>
            </div>
            <div class="news-wrap">
                <div class="row">
                    <div class="col-xl-4 col-md-4 col-xs-12">
                        <div class="news-item">
                            <a href="blog-details.html" class="news-img-link">
                                <div class="news-item-img">
                                    <img class="img-responsive" src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="blog image">
                                </div>
                            </a>
                            <div class="news-item-text">
                                <a href="blog-details.html"><h3>Explore The World</h3></a>
                                <div class="dates">
                                    <span class="date">April 11, 2018 &nbsp;/</span>
                                    <ul class="action-list pl-0">
                                        <li class="action-item pl-2"><i class="fa fa-heart"></i> <span>306</span></li>
                                        <li class="action-item"><i class="fa fa-comment"></i> <span>34</span></li>
                                        <li class="action-item"><i class="fa fa-share-alt"></i> <span>122</span></li>
                                    </ul>
                                </div>
                                <div class="news-item-descr big-news">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ipsum dolor sit amet, consectetur.</p>
                                </div>
                                <div class="news-item-bottom">
                                    <a href="blog-details.html" class="news-link">Read more...</a>
                                    <div class="admin">
                                        <p>By, Karl Smith</p>
                                        <img src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-4 col-xs-12">
                        <div class="news-item">
                            <a href="blog-details.html" class="news-img-link">
                                <div class="news-item-img">
                                    <img class="img-responsive" src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="blog image">
                                </div>
                            </a>
                            <div class="news-item-text">
                                <a href="blog-details.html"><h3>Find Good Places</h3></a>
                                <div class="dates">
                                    <span class="date">May 20, 2018 &nbsp;/</span>
                                    <ul class="action-list pl-0">
                                        <li class="action-item pl-2"><i class="fa fa-heart"></i> <span>306</span></li>
                                        <li class="action-item"><i class="fa fa-comment"></i> <span>34</span></li>
                                        <li class="action-item"><i class="fa fa-share-alt"></i> <span>122</span></li>
                                    </ul>
                                </div>
                                <div class="news-item-descr big-news">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ipsum dolor sit amet, consectetur.</p>
                                </div>
                                <div class="news-item-bottom">
                                    <a href="blog-details.html" class="news-link">Read more...</a>
                                    <div class="admin">
                                        <p>By, Lis Jhonson</p>
                                        <img src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-md-4 col-xs-12">
                        <div class="news-item no-mb">
                            <a href="blog-details.html" class="news-img-link">
                                <div class="news-item-img">
                                    <img class="img-responsive" src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="blog image">
                                </div>
                            </a>
                            <div class="news-item-text">
                                <a href="blog-details.html"><h3>All Places In Town</h3></a>
                                <div class="dates">
                                    <span class="date">Jun 30, 2018 &nbsp;/</span>
                                    <ul class="action-list pl-0">
                                        <li class="action-item pl-2"><i class="fa fa-heart"></i> <span>306</span></li>
                                        <li class="action-item"><i class="fa fa-comment"></i> <span>34</span></li>
                                        <li class="action-item"><i class="fa fa-share-alt"></i> <span>122</span></li>
                                    </ul>
                                </div>
                                <div class="news-item-descr big-news">
                                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua ipsum dolor sit amet, consectetur.</p>
                                </div>
                                <div class="news-item-bottom">
                                    <a href="blog-details.html" class="news-link">Read more...</a>
                                    <div class="admin">
                                        <p>By, Ted Willians</p>
                                        <img src="<?php echo url('/'); ?>/public/home/images/61c3c16f-1530-4a1c-855b-1b7316c331e5.jpg" alt="">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="bg-all">
            <a href="blog-grid.html" class="btn btn-outline-light mt-2">View Blog</a>
        </div>
    </section>





	<footer id="colophon" class="site-footer clearfix">
		<div id="quaternary" class="sidebar-container " role="complementary">
			<div class="sidebar-inner">
				<div class="widget-area clearfix">
					<div id="azh_widget-2" class="widget widget_azh_widget">
						
						<div data-section="section" class="foot-sec2">
							<div class="container">
								<div class="row">
									<div class="col-sm-3 col-md-3 foot-logo"> <img src="<?php echo url('/'); ?>/public/home/images/foot-logo.png" alt="logo">
										
										 <p class="hasimg">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.</p> 
									</div>
									<div class="col-sm-3 col-md-3 ">
										<h4>Address</h4>
										<p>For any assistance, call us between 10:00 AM to 06:30 PM</p>
										<p> <span class="strong">Phone: </span> <span class="highlighted">+91-6378559282, 6375602671</span> </p>
									</div>
									<div class="col-sm-2 col-md-2">
										<h4>Address</h4>
										<ul class="footer_links">
											<li>
												<a href="#">Home</a>
											</li>
											<li>
												<a href="#">About Us</a>
											</li>
											<li>
												<a href="#">All Listing</a>
											</li>
											<li>
												<a href="#">Contact Us</a>
											</li>
										</ul>
									</div>
									<div class="col-sm-4 col-md-4  foot-social">
										<h4>Follow with us</h4>
										<!-- <p>Join the thousands of other There are many variations of passages of Lorem Ipsum available</p> -->
										<ul>
											<li><a href="#!"><i class="fab fa-facebook-f" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fab fa-google-plus-g" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fab fa-twitter" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fab fa-linkedin" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fab fa-youtube" aria-hidden="true"></i></a> </li>
											<li><a href="#!"><i class="fab fa-whatsapp" aria-hidden="true"></i></a> </li>
										</ul>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- .widget-area -->
			</div>
			<!-- .sidebar-inner -->
		</div>
		<!-- #quaternary -->
	</footer>
	<section class="copy">
		<div class="container">
			<p>copyrights © 2018 classified. &nbsp;&nbsp;All rights reserved. </p>
		</div>
	</section>
	








	<section>
								<div class="modal fade dir-pop-com" id="pop-quo42" role="dialog">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header dir-pop-head">
												<button type="button" class="close" data-dismiss="modal">×</button>
												<h4 class="modal-title">Get a Quotes</h4>
												<!--<i class="fa fa-pencil dir-pop-head-icon" aria-hidden="true"></i>-->
											</div>
											<div class="modal-body dir-pop-body">
												<form method="post" class="form-horizontal" action="http://xray-india.com/controller/quote.php">
													<!--LISTING INFORMATION-->
													<input type="hidden" class="form-control" name="user_id" value="42">
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Full Name *</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="fname" placeholder="" required=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Mobile</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="mobile" placeholder=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Email</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="email" placeholder=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Message</label>
														<div class="col-md-8 get-quo">
															<textarea class="form-control" name="message"></textarea>
														</div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<div class="col-md-6 col-md-offset-4">
															<input type="submit" value="SUBMIT" class="pop-btn"> </div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<!-- GET QUOTES Popup END -->
			<!-- GET QUOTES POPUP -->
								<div class="modal fade dir-pop-com" id="pop-quo45" role="dialog">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header dir-pop-head">
												<button type="button" class="close" data-dismiss="modal">×</button>
												<h4 class="modal-title">Get a Quotes</h4>
												<!--<i class="fa fa-pencil dir-pop-head-icon" aria-hidden="true"></i>-->
											</div>
											<div class="modal-body dir-pop-body">
												<form method="post" class="form-horizontal" action="http://xray-india.com/controller/quote.php">
													<!--LISTING INFORMATION-->
													<input type="hidden" class="form-control" name="user_id" value="45">
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Full Name *</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="fname" placeholder="" required=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Mobile</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="mobile" placeholder=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Email</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="email" placeholder=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Message</label>
														<div class="col-md-8 get-quo">
															<textarea class="form-control" name="message"></textarea>
														</div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<div class="col-md-6 col-md-offset-4">
															<input type="submit" value="SUBMIT" class="pop-btn"> </div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<!-- GET QUOTES Popup END -->
			<!-- GET QUOTES POPUP -->
								<div class="modal fade dir-pop-com" id="pop-quo46" role="dialog">
									<div class="modal-dialog">
										<div class="modal-content">
											<div class="modal-header dir-pop-head">
												<button type="button" class="close" data-dismiss="modal">×</button>
												<h4 class="modal-title">Get a Quotes</h4>
												<!--<i class="fa fa-pencil dir-pop-head-icon" aria-hidden="true"></i>-->
											</div>
											<div class="modal-body dir-pop-body">
												<form method="post" class="form-horizontal" action="http://xray-india.com/controller/quote.php">
													<!--LISTING INFORMATION-->
													<input type="hidden" class="form-control" name="user_id" value="46">
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Full Name *</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="fname" placeholder="" required=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Mobile</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="mobile" placeholder=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Email</label>
														<div class="col-md-8">
															<input type="text" class="form-control" name="email" placeholder=""> </div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<label class="col-md-4 control-label">Message</label>
														<div class="col-md-8 get-quo">
															<textarea class="form-control" name="message"></textarea>
														</div>
													</div>
													<!--LISTING INFORMATION-->
													<div class="form-group has-feedback ak-field">
														<div class="col-md-6 col-md-offset-4">
															<input type="submit" value="SUBMIT" class="pop-btn"> </div>
													</div>
												</form>
											</div>
										</div>
									</div>
								</div>
								<!-- GET QUOTES Popup END -->
			</section>
	<!--QUOTS POPUP-->
	<section>	<!--SCRIPT FILES-->
	<script src="<?php echo url('/'); ?>/public/home/js/jquery.min.js"></script>
	<script src="<?php echo url('/'); ?>/public/home/js/bootstrap.js" type="text/javascript"></script>
	<script src="<?php echo url('/'); ?>/public/home/js/materialize.min.js" type="text/javascript"></script>
	<script src="<?php echo url('/'); ?>/public/home/js/password.js" type="text/javascript"></script>
	<script src="<?php echo url('/'); ?>/public/home/js/jquery.validate.js" type="text/javascript"></script>
	<script src="../../cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>
	<script src="<?php echo url('/'); ?>/public/home/js/custom.js"></script>
	<script type="text/javascript" src="<?php echo url('/'); ?>/public/home/js/typeahead.js"></script>
	<script src="<?php echo url('/'); ?>/public/home/owl/owl.carousel.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!-- jQuery UI -->
<link rel="stylesheet" href="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/themes/smoothness/jquery-ui.css">
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script>
$( function() {
    var availableTags = [
      <?php
            foreach ($city as $key => $value) {
              # code...
            
            ?>
      "<?php echo $value->City ?>",
     <?php } ?>
    ];
    $( "#top-select-city" ).autocomplete({
      source: availableTags
    });
  } );


    	
    

    // Single Select
 $( "#top-select-search" ).autocomplete({
  source: function( request, response ) {
   var category=$('#category :selected').val();
   $.ajax({
    url: "<?php echo url('/'); ?>/category_by_sub",
    type: 'post',
    dataType: "json",
    data: {
     search: request.term,
     category:category
    },
    success: function( data ) {
     response( data );
    }
   });
  },
  select: function (event, ui) {
  
   $('#top-select-search').val(ui.item.label); // display the selected text
   $('#selectuser_id').val(ui.item.value); // save selected id to input
   return false;
  }
 });


    	$('#city').change(function(){
         
         var city=$(this).val();
  $.ajax({
                    url: "<?php echo url('/'); ?>/category_by_city",
					data: 'city=' + city,            
                    
                    type: "POST",
                    success: function (data) {
                    	//alert(data);
						$('#category').html(data);
                    }
                });
    	});
      


            $(document).ready(function() {
              $('#trendings').owlCarousel({
                loop: true,
                margin: 10,
                responsiveClass: true,
                autoplay:true,
				autoplayTimeout:2000,
				autoplayHoverPause:true,
                responsive: {
                  0: {
                    items: 1,
                    nav: false
                  },
                  600: {
                    items: 2,
                    nav: false
                  },
                  1000: {
                    items: 3,
                    nav: false,
                    loop: true,
                    margin: 20
                  }
                }
              })
            });
          </script>
</body>
</php>	<script type="text/javascript">
    $(document).ready(function(){
        $("#contact").validate();
       
    });
</script>