<?php
if (isset($_GET['city'])) {
	$ssss=$_GET['city'];
}
else{
	$ssss='';
}
?>
<section class="bottomMenu dir-il-top-fix">
		<div class="container top-search-main">
			<div class="row">
				<div class="ts-menu">
					<!--SECTION: LOGO-->
					<div class="ts-menu-1">
						<a href="index.html"><img src="../public/images/aff-logo.png" alt=""> </a>
					</div>
					<!--SECTION: BROWSE CATEGORY(NOTE:IT'S HIDE ON MOBILE & TABLET VIEW)-->
					<div class="ts-menu-2"><a style="cursor: pointer;" class="t-bb">All Pages <i class="fa fa-angle-down" aria-hidden="true"></i></a>
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
								<!-- <div class="dz-menu-inn lat-menu">
									<h4>Services</h4>
									<ul>
																			
										<li><a href="../resource/list?slug=5465675677">  X-ray </a> </li>
																			
										<li><a href="../resource/list?slug=4567895256">  Radiation Protection</a> </li>
																			
										<li><a href="../resource/list?slug=2357096246"> RSO Consulting Support</a> </li>
																			</ul>
								</div> -->
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
					<!--SECTION: other pagrSEARCH BOX-->
					<div class="ts-menu-3">
						<div class="">

							<form action="<?php echo url('/'); ?>/listing" method="GET" class="tourz-search-form tourz-top-search-form">
								<div class="input-field">
									<!-- <select class="form-control " name="city" id="city">
						 <option value="">Select City</option>
						 <?php
 						foreach ($city as $key => $value) {
 							# code...
 						
						?>
						 <option value="<?php echo $value->City ?>"><?php echo $value->City ?> </option>
						<?php } ?>
						 </select>	 -->
						 	<input name="city" type="text" id="top-select-city" value="<?php echo $ssss; ?>" placeholder="City" class="typeahead ssss mm"  >
						 <input type="hidden" name="header" id="selectuser_id"> 
									<label for="top-select-city"></label>
								</div>
								<div class="input-field">
									<input name="serch" type="text" required id="top-select-search" class="typeahead"   >
									<label for="top-select-search" class="search-hotel-type">Search your services.....</label>
								</div>
								<div class="input-field">
									<input type="submit"  class="submit-form" name="submit_search"> </div>
							</form>
						</div>
					</div>
					<!--SECTION: REGISTER,SIGNIN AND ADD YOUR BUSINESS-->
						<div class="ts-menu-4">
						<div class="v3-top-ri">
							<ul>
															<?php
 							if(Session::get('user_id'))
 							{
 								
                                  ?><li><a href="<?php echo url('/'); ?>/signout" class="v3-menu-sign"><i class="fas fa-sign-out-alt"></i> log Out</a> </li>

                                  	<li><a href="<?php echo url('/'); ?>/update-profile"><i class="fas fa-plus" aria-hidden="true"></i> Add Listing</a> </li>
                                								
                                								<?php } else { ?> <li><a href="<?php echo url('/'); ?>/signin" class="v3-menu-sign"><i class="fas fa-sign-in-alt"></i> Sign In</a> </li><?php } ?>


							   								
							</ul>
						</div>
					</div>
					<!--MOBILE MENU ICON:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
						<!--MOBILE MENU ICON:IT'S ONLY SHOW ON MOBILE & TABLET VIEW-->
					<div class="ts-menu-5"><span><i class="fa fa-bars" aria-hidden="true"></i></span> </div>
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