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

		<link href="https://lipis.github.io/bootstrap-sweetalert/dist/sweetalert.css" rel="stylesheet">

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
    background: #920909;
}
form.tourz-search-form.form-sub-main {
    background: none;
}
#myCarousel{
	 margin: 10px 0;
	}
</style>
<style>

    
    .add_slider #myCarousel {
    height: 168px !important;
    width: 100% !important;
}

.col-md-9.add_slider {
    width: 100% !important;
}

a.right.carousel-control {
    background: none;
}

a.left.carousel-control {
    background: none;
}

.add_slider #myCarousel {
    height: 168px;
    margin: 35px 0;
}

span.glyphicon.glyphicon-chevron-left {
    color: #fff;
}
span.glyphicon.glyphicon-chevron-right {
    color: #fff;
}

</style>









<body oncontextmenu="return false;" oncopy="return false" oncut="return false" onpaste="return false">
	<!-- <div id="preloader">
		<div id="status">&nbsp;</div>
	</div> -->
	<!--TOP SEARCH SECTION-->
	
	    @extends('layouts.header')

	<section class="tz-register">
			<div class="log-in-pop">
				<div class="log-in-pop-left">
					<h1>Hello...</h1><br>
					<h1>Users</h1>
					<br><br><br><br>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					
				</div>
				<div class="log-in-pop-right">
					<div id="userlog">
					<!-- <a href="#" class="pop-close" data-dismiss="modal"><img src="images/cancel.php" alt="" />
					</a> -->
					<script>
	function closeMessage(){		
		$('.alert').remove();
	}
</script>					<h4>Login</h4>
					<p>Don't have an account? Create your account. It's take less then a minutes</p>
					<form class="s12"  method="post" enctype="multipart/form-data" id="signin">
						<div>
							<div class="input-field s12">
								<input type="text" data-ng-model="name1" id="email" class="validate required email" name="user_email">
								<label>Email</label>
							</div>
						</div>
						<div>
							<div class="input-field s12">
								<input type="password" class="validate required" id="pwd" name="pasword">
								<label>Password</label>
							</div>
						</div>
						<div>
							    <input name="csrfToken" value="5965f0d244b7d32b334eff840...etc" type="hidden">    

							<div class="input-field s4">
								<input type="button" value="Login" class="waves-effect waves-light log-in-btn" id="login" name="submit"> </div>
						</div>
						<div>
							<div class="input-field s12"> <a  id="setpas" href="#">Forgot password</a> | <a href="<?php echo url('/'); ?>/singnup">Create a new account</a> </div>
						</div>
					</form>
				</div>
				</div>
<!--  forget password-->
                <div class="log-in-pop-right" id="forgetpas" style="display: none;">
				
					<h4>Forget Password</h4>
					<form class="s12" action="http://xray-india.com/controller/login.php" method="post" enctype="multipart/form-data" id="signin1">
						<div>
							<div class="input-field s12">
								<input type="text" data-ng-model="name1" class="validate required email" name="user_email">
								<label>Email</label>
							</div>
						</div>
						
						<div>
							<div class="input-field s4">
								<input type="submit" value="Login" class="waves-effect waves-light log-in-btn" name="submit"> </div>
						</div>
						
					</form>
				
				</div>
			
<!--  forget password-->


			</div>
	</section>


			
				





	<!--MOBILE APP-->
	<section class="web-app com-padd">
		<div class="container">
			<div class="row">
				<div class="col-md-6 web-app-img"> <img src="../public/images/mobile.png" alt="" /> </div>
				<div class="col-md-6 web-app-con">
					<h2>Looking for the Best Service Provider? <span>Get the App!</span></h2>
					<ul>
						<li><i class="fa fa-check" aria-hidden="true"></i> Find nearby listings</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Easy service enquiry</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Listing reviews and ratings</li>
						<li><i class="fa fa-check" aria-hidden="true"></i> Manage your listing, enquiry and reviews</li>
					</ul> <span>We'll send you a link, open it on your phone to download the app</span>
					<form>
						<ul>
							<li>
								<input type="text" placeholder="+01" /> </li>
							<li>
								<input type="number" placeholder="Enter mobile number" /> </li>
							<li>
								<input type="submit" value="Get App Link" /> </li>
						</ul>
					</form>
					<a href="#"><img src="../public/images/android.png" alt="" /> </a>
					<a href="#"><img src="../public/images/apple.png" alt="" /> </a>
				</div>
			</div>
		</div>
	</section>




	 @extends('layouts.footer')








	<section>
			<!-- GET QUOTES POPUP -->
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
	<script src="<?php echo url('/'); ?>/public/assets/js/custom.min.js"></script>

	<script src="https://lipis.github.io/bootstrap-sweetalert/dist/sweetalert.js"></script>



<script>
	$('#login').click(function(){
		var email=$('#email').val();
		var pwd=$('#pwd').val();

		if (email=='') {
        swal("X-ray india",'Please enter username/email');
		}
		else if(pwd=='')
		{
        swal("X-ray india",'Please enter password');

		}
		else
		{
     $.ajax({
            url:'<?php echo url('/'); ?>/check_login' ,
            type: 'POST',
            data:$('#signin').serialize(),
            success: function (data) {
               if (data==0) {
               	swal("X-ray india", "Username And Password do not match")
       

               }
               else
               {
               	location.href="<?php echo url('/'); ?>/dashboard";

               }
            }
        });
 }
    });

    $(document).ready(function () {
        $('#top-select-search').typeahead({
            source: function (query, result) {
                $.ajax({
                    url: "secserver.php",
					data: 'query=' + query,            
                    dataType: "json",
                    type: "POST",
                    success: function (data) {
						result($.map(data, function (item) {
							return item;
                        }));
                    }
                });
            }
        });
    });
</script>

<script>
    $(document).ready(function () {
        $('#top-select-city').typeahead({
            source: function (query, result) {
                $.ajax({
                    url: "server.php",
					data: 'query=' + query,            
                    dataType: "json",
                    type: "POST",
                    success: function (data) {
						result($.map(data, function (item) {
							return item;
                        }));
                    }
                });
            }
        });
    });
</script>

<script>
    $(document).ready(function () {
        $('#top-select-category').typeahead({
            source: function (query, result) {
                $.ajax({
                    url: "cat_server.php",
					data: 'query=' + query,            
                    dataType: "json",
                    type: "POST",
                    success: function (data) {
						result($.map(data, function (item) {
							return item;
                        }));
                    }
                });
            }
        });
    });
</script>

<script>
    $(document).ready(function () {
        $('#top-select-institute').typeahead({
            source: function (query, result) {
                $.ajax({
                    url: "institute_search.php",
					data: 'query=' + query,            
                    dataType: "json",
                    type: "POST",
                    success: function (data) {
						result($.map(data, function (item) {
							return item;
                        }));
                    }
                });
            }
        });
    });
</script>

	<script>
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
            })
          </script>

          <!-- <script type="text/javascript">
$(document).ready(function () {
    //Disable cut copy paste
    $('body').bind('cut copy paste', function (e) {
        e.preventDefault();
    });
   
    //Disable mouse right click
    $("body").on("contextmenu",function(e){
        return false;
    });
});
</script> -->


	


	

<!-- 
<script>
    $(document).ready(function () {
        $('#top-select-search').typeahead({
            source: function (querys, results) {
                $.ajax({
                    url: "secserver.php",
					data: 'querys=' + querys,            
                    dataType: "json",
                    type: "POST",
                    success: function (data) {
                    	console.log(data);
                		/*result($.map(data, function (items) {
							return items;
                        }));*/
                    }
                });
            }
        });
    });
</script> -->
<script type="text/javascript">
$(document).ready(function(){
    $('.customer-logos').slick({
        slidesToShow: 6,
        slidesToScroll: 1,
        autoplay: true,
        autoplaySpeed: 1500,
        arrows: false,
        dots: false,
        pauseOnHover: false,
        responsive: [{
            breakpoint: 768,
            settings: {
                slidesToShow: 4
            }
        }, {
            breakpoint: 520,
            settings: {
                slidesToShow: 3
            }
        }]
    });
});
</script>
</body>
</php>	<script type="text/javascript">
    $(document).ready(function(){
       
        $("#signin").validate();
       
    });
</script>
<script type="text/javascript">
    $(document).ready(function(){
       
        $("#signin1").validate();
       
    });
</script>


 <script>
$(document).ready(function(){
       $("a#setpas").click(function(event){
      event.preventDefault();
      $("#userlog").hide();
       $("#forgetpas").show();
      
   
    });
});



 </script>