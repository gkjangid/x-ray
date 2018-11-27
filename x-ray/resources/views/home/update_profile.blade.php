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
<link href="<?php echo url('/'); ?>/public/assets/toast/css/jquery.toast.css" media="screen" rel="stylesheet" type="text/css" >
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
						<li><img src="<?php echo url('/'); ?>/public/users/<?php echo $profile->image ?>" alt=""> </li>
						<li><span></span> <?php echo $profile->name ?></li>
						<li><span></span> </li>
					</ul>
				</div>
				<div class="tz-l-2">
					<ul>
                        <li >
                            <a href="<?php echo url('/'); ?>/dashboard"><img src="http://xray-india.com/public/images/icon/dbl2.png" alt=""> My Dashboard</a>
                        </li>
                        <!--  <li>
                            <a href="db-all-listing"><img src="http://xray-india.com/public/images/icon/dbl2.png" alt=""> All Listing</a>
                        </li>  -->
                        <li class="<?php if($active=='update') { echo 'active';} ?>">
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
                    <h4>Manage Listings</h4>
                    <div class="db-list-com tz-db-table">
                        <div class="ds-boar-title">
                            <h2>Edit Listings</h2>
                        </div>
                        <div class="hom-cre-acc-left hom-cre-acc-right">
                            <div class="">
                                <form class="" method="post" action="<?php echo url('/'); ?>/save_profile" enctype="multipart/form-data">
                                                                        <div class="row">
                                        <input type="hidden" class="validate" value="34" name="user_id">
                                        <div class="input-field col s12">
                                            <input id="first_name" type="text" class="validate" value="<?php echo $profile->name ?>" placeholder="Enter Your Name" name="name">
                                        </div>
                                        
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="list_name" type="text" class="validate" value="<?php echo $profile->Institute_Name ?>" name="ins_name" placeholder="Institute Name">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="list_phone" type="text" class="validate" value="<?php echo $profile->phone ?>" name="phone" placeholder="Enter Your Phone">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="email" type="email" class="validate" value="<?php echo $profile->email ?>" name="emails" placeholder="Enter Your Email">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                            <input id="list_addr" type="text" class="validate" value="<?php echo $profile->Institute_Address ?>" name="addr" placeholder="Institute Address">
                                        </div>
                                    </div>


                                    <div class="row">
                                        <div class="input-field col s4">   
                                            <input type="text" name="state" value="<?php echo $profile->State ?>" placeholder="Enter Your State">
                                        </div>
                                   

                                   
                                        <div class="input-field col s4">   
                                            <input type="text" name="city" value="<?php echo $profile->City ?>" placeholder="Enter Your State">
                                        </div>

                                         <div class="input-field col s4">   
                                            <input type="text" name="pin" value="<?php echo $profile->Pin ?>" placeholder="Enter Your Pincode">
                                        </div>
                                    </div>
                                     
                                      <div class="row">
                                        <div class="input-field col s12">
                                            <input id="list_name" type="file" class="validate" value="" name="profile" placeholder="Institute Name">
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="input-field col s12">
                                    <p>your service:  </p>
                                    <div class="row">
                                        <div class="input-field col s12">   
                                            <input type="text" value="<?php echo $get_service->category ?>" readonly="">
                                        </div>
                                    </div> 
                                            
                                 <!--    <p>your Sub Service:  </p>
                                    <div class="row">
                                        <div class="input-field col s12">   
                                            <input type="text" value="Hospital" readonly="">
                                        </div>
                                    </div>  -->          
                                     
                                    <p>your Sub Child Services:  </p>                       
                                                    <?php
                                                    $sub=explode(",",$profile->sub_category);
                                                    foreach ($get_sub as $key => $value) {
                                                        # code...
                                                    
                                                    ?>                                                   
                                                    <label class="check-label">
                                                            <input type="checkbox" value="<?php echo $value->id ?>" name="child_cat[]" <?php if (in_array($value->id, $sub)){ ?>checked <?php } ?>>
                                                            <span><?php echo $value->category ?></span>
                                                    </label>
                                                    <?php } ?>
                                                

                                                                                    </div>
                                    </div>
                                   <!--  <div class="row">
                                        <div class="input-field col s6">
                                            <input id="list-open" type="text" class="validate" value="" name="start_time" placeholder="Enter Your Opening Time">
                                        </div>
                                        <div class="input-field col s6">
                                            <input id="list-close" type="text" class="validate" value="" name="end_time" placeholder="Enter Your Closing Time">
                                        </div>
                                    </div> -->
                                    <div class="row"> </div>
                                    <div class="row">
                                        <p>Listing Descriptions:</p>
                                        <div class="input-field col s12">
                                            <textarea id="textarea1" class="materialize-textarea" name="desc"><?php echo $profile->about ?>                                              </textarea>
                                            
                                        </div>
                                    </div>                          
                                    <div class="row">
                                        <div class="db-v2-list-form-inn-tit">
                                            <h5>Images  </h5>
                                                <input type="hidden" name="oldpicture" value="<?php echo $profile->image ?>">
                                                <input type="hidden" name="hiddimg2" value="">
                                                <input type="hidden" name="hiddimg3" value="">
                                                <input type="hidden" name="hiddimg4" value="">
                                                <input type="hidden" name="hiddimg5" value="">
                                        </div>
                                    </div>  
                                    <div class="row">
                                        
                                        <div class="col s12">
                                            <div class="row tz-file-upload">
                                                <div class="file-field input-field">
                                                    <div class="tz-up-btn"> <span>File</span>
                                                        <input type="file" name="img1"> </div>
                                                    <div class="file-path-wrapper db-v2-pg-inp">
                                                        <img src="http://xray-india.com/public/images/" alt="" width="100%">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>                                      
                                    </div>
                                
                                    
                                    
                                                                    
                                    <div class="row">
                                        <div class="input-field col s12 v2-mar-top-40"> <i class="waves-effect waves-light btn-large full-btn waves-input-wrapper" style=""><input type="submit" class="waves-button-input" name="update" value="Update Listing"></i></div>
                                    </div>
                                </form>
                            </div>
                        </div>
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
    <section>   <!--SCRIPT FILES-->
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

    $(document).ready(function () {
        
    

    // Single Select
 $( "#top-select-search" ).autocomplete({
  source: function( request, response ) {
   var city=$('#city :selected').val();
   $.ajax({
    url: "<?php echo url('/'); ?>/services_by_city",
    type: 'post',
    dataType: "json",
    data: {
     search: request.term,
     category:city
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
</body>
</php>  <script type="text/javascript">
    $(document).ready(function(){
        $("#contact").validate();
       
    });
</script>