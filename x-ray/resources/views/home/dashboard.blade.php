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
.active{
  background: linear-gradient(#25e0d1,#01776d) !important
}
</style>









<body oncontextmenu="return false;" oncopy="return false" oncut="return false" onpaste="return false">
	<!-- <div id="preloader">
		<div id="status">&nbsp;</div>
	</div> -->
	<!--TOP SEARCH SECTION-->
		    @extends('layouts.header')


			<div class="tz">
			<!--LEFT SECTION-->
			<div class="tz-l">
				<div class="tz-l-1">
					<ul>
						<li><img src="../public/images/1534248247gallery-276x255-7.jpg" alt=""> </li>
						<li><span></span> kamal kumar</li>
						<li><span></span> </li>
					</ul>
				</div>
				<div class="tz-l-2">
					<ul>
						<li class="<?php if($active=='home') { echo 'active';} ?>">
							<a href="<?php echo url('/'); ?>/dashboard"><img src="http://xray-india.com/public/images/icon/dbl2.png" alt=""> My Dashboard</a>
						</li>
						<!--  <li>
							<a href="db-all-listing"><img src="http://xray-india.com/public/images/icon/dbl2.png" alt=""> All Listing</a>
						</li>  -->
						<li>
<!-- db-listing-add --> <a href="<?php echo url('/'); ?>/update-profile"><img src="../public/images/dash_icon/dbl3.png" alt=""> Update Listing</a>
						</li>
                             <li class="<?php if($active=='product') { echo 'active';} ?> ">
<!-- db-listing-add --> <a href="<?php echo url('/'); ?>/manage-product"><img src="../public/images/dash_icon/dbl3.png" alt=""> Manage Product</a>
                        </li>
						<li>
							<a href="db-message.html"><img src="../public/images/dash_icon/dbl14.png" alt=""> Messages
                              							</a>
						</li>
						<!-- <li>
							<a href="db-review"><img src="http://xray-india.com/public/images/icon/dbl13.png" alt=""> Reviews(05)</a>
						</li> -->
						<li>
							<a href="<?php echo url('/'); ?>/myprofile"><img src="../public/images/dash_icon/dbl6.png" alt=""> My Profile</a>
						</li>
						<li>
							<a href="<?php echo url('/'); ?>/mylead"><img src="../public/images/dash_icon/db_1.png" alt=""> My Leads</a>
						</li>
						<li>
							<a href="<?php echo url('/'); ?>/setting"><img src="../public/images/dash_icon/dbl210.png" alt=""> Setting</a>
						</li>
						<li>
							<a href="#"><img src="../public/images/dash_icon/dbl12.png" alt=""> Log Out</a>
						</li>
					</ul>
				</div>
			</div>			<!--CENTER SECTION-->
			<div class="tz-2">
				<div class="tz-2-com tz-2-main">
					<h4>Manage Booking</h4>
					<div class="tz-2-main-com">
						<div class="tz-3-main-1">
							<div class="tz-2-main-2"> <span>All Listings</span>
								<h2>1</h2> </div>
						</div>
						
						<div class="tz-3-main-1">
							<div class="tz-2-main-2"><span>Messages</span>
								<h2>0</h2> </div>
						</div>
					</div>
					<div class="db-list-com tz-db-table">
						<div class="ds-boar-title">
							<h2>Listings</h2>
							
						</div>
						<table class="responsive-table bordered">
							<thead>
								<tr>
									<th>Listing Name</th>
									<th>Date</th>
									<th>Status</th>
									
								</tr>
							</thead>
							<tbody>
																<tr>
									<td></td>
									<td>0000-00-00</td>
									<td>										<span class="db-list-ststus">Panding</span>
                                                                                																			</td>
									
								</tr>
															</tbody>
						</table>
					</div>
					
				</div>
			</div>
			<!--RIGHT SECTION-->
			  <div class="tz-3">
				<h4>Reviews(0)</h4>
				<ul>
									</ul>
			</div>		</div>
				

	 @extends('layouts.footer')



	<!--QUOTS POPUP-->

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