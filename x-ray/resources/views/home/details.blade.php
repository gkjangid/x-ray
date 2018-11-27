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
[class~=pg-list-1] {
    padding-top: 120px;
}
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
  .slider {
    height: auto !important;
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

	
			<section class="pg-list-1">
    <div class="container">
      <div class="row">
        <div class="pg-list-1-left"> <h3><?php echo $vendor->Institute_Name ?></h3>
          <p><b>Type of Xray</b> Radiography (Fixed)</p>
          <p><b>Profile:</b> </p>
          <p><b>Address: </b> <?php echo $vendor->Institute_Address ?></p>
          <div class="list-number pag-p1-phone">
            <ul>
            <li> <b>Pin:</b>  <?php echo $vendor->Pin ?></li>
            <li> <b>City:</b>  <?php echo $vendor->City ?></li>
              <a href="tel:0"><li><b>Phone No:</b>  <?php echo $vendor->phone ?></li></a>
              <a href="mailto:"><li> <b>Email:</b> <?php echo $vendor->email ?> </li></a>

            </ul>
          </div>
        </div>
        <div class="pg-list-1-right">
          <div class="list-enqu-btn pg-list-1-right-p1">
            <ul>
               <?php  if(Session::get('user_id')) { ?>
              <li>
                <a href="#"><i class="fa fa-star" aria-hidden="true"></i> Write Review</a>
              </li>
             <!--  -<li><a href="tel:+"><i class="fa fa-phone" aria-hidden="true"></i> Call Now</a> </li>---> -->
             
              <li>
                <a href="#" data-dismiss="modal" data-toggle="modal" data-target="#list-quo<?php echo $vendor->id ?>"><i class="fa fa-usd" aria-hidden="true"></i> Get Quotes</a>
              </li>
               <?php } if(Session::get('user_id')) { ?>
              <div class="modal fade dir-pop-com" id="list-quo<?php echo $vendor->id ?>" role="dialog">
                  <div class="modal-dialog">
                    <div class="modal-content">
                      <div class="modal-header dir-pop-head">
                        <button type="button" class="close" data-dismiss="modal">×</button>
                        <h4 class="modal-title">Get a Quotes</h4>
                        <!--<i class="fa fa-pencil dir-pop-head-icon" aria-hidden="true"></i>-->
                      </div>
                      <div class="modal-body dir-pop-body">
                        <form method="post" class="form-horizontal" id="leadfrm<?php echo $vendor->id ?>" action="">
                          <!--LISTING INFORMATION-->
                          <input type="hidden" class="form-control" name="user_id" value="26">
                          <div class="form-group has-feedback ak-field">
                            <label class="col-md-4 control-label">Full Name *</label>
                            <div class="col-md-8">
                              <input type="text" class="form-control" readonly value="<?php echo $profile->name; ?>" name="fname" placeholder="" required=""> </div>
                          </div>
                          <!--LISTING INFORMATION-->
                          <div class="form-group has-feedback ak-field">
                            <label class="col-md-4 control-label">Mobile</label>
                            <div class="col-md-8">
                              <input type="text" class="form-control" readonly name="mobile" value="<?php echo $profile->phone; ?>" placeholder=""> </div>
                          </div>
                          <!--LISTING INFORMATION-->
                          <div class="form-group has-feedback ak-field">
                            <label class="col-md-4 control-label">Email</label>
                            <div class="col-md-8">
                              <input type="text" class="form-control" readonly name="email" value="<?php echo $profile->email; ?>" placeholder=""> </div>
                          </div>
                          <!--LISTING INFORMATION-->
                          <input type="hidden" name="uid" value="<?php echo $profile->id ?>">
                           <input type="hidden" name="vid" value="<?php echo $vendor->id ?>">
                         
                          <div class="form-group has-feedback ak-field">
                            <label class="col-md-4 control-label">Message</label>
                            <div class="col-md-8 get-quo">
                              <textarea class="form-control" name="message"></textarea>
                            </div>
                          </div>
                          <!--LISTING INFORMATION-->
                          <div class="form-group has-feedback ak-field">
                            <div class="col-md-6 col-md-offset-4">
                              <input type="button" value="SUBMIT" id="<?php echo $vendor->id ?>" class="pop-btn lead"> </div>
                          </div>
                        </form>
                      </div>
                    </div>
                  </div>
                </div>
                <?php } ?>
              </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
  

    <div class="clearfix"></div>

    <div class="google_ads_011">
      <div class="container">
         <section class="customer-logos slider">
            <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>
                       <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>
            <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>
            <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>
            <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>
            <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>
            <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>
            <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>
            <div class="slide"><img src="http://xray-india.com/public/images/1534248247gallery-276x255-2.jpg"></div>

         </section>
      </div>
    </div>
  
<?php
if (!empty($product[0])) {
  # code...

?>
<section class="new-product-area">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-12 text-center">
                    <div class="section-title">
                        <h2 class="title">Similar Products</h2>
                    </div><!-- //. section title -->
                </div>
            </div>
            <div class="row">
              <?php
              foreach ($product as $key => $value) {
           
              ?>
                <div class="col-lg-3 col-md-6">
                    <div class="single-new-collection-item "><!-- single new collections -->
                        <div class="thumb">
                            <img src="<?php echo url('/'); ?>/public/uploads/<?php echo $value->image ?>" alt="new collcetion image">
                            <div class="hover">
                                <a href="#" class="addtocart">View</a>
                            </div>
                        </div>
                        <div class="content">
                            <a href="product-details.html"><h4 class="title"><?php echo $value->title ?></h4></a>
                            <div class="price"><span class="sprice"><?php echo $value->price ?></span> <del class="dprice">Rs.<?php echo $value->price ?></del></div>
                        </div>
                    </div><!-- //. single new collections  -->
                </div>
               
               <?php } ?>
                
              
            </div>
        </div>
    </section>
<?php } ?>
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
    <script src="https://lipis.github.io/bootstrap-sweetalert/dist/sweetalert.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.6.0/slick.js"></script>

<script type="text/javascript">

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
<script>

    $(document).ready(function () {
        
     $('.lead').click(function(){
        var id=$(this).attr('id');
          var data=$('#leadfrm'+id).serialize();
           $.ajax({
                    url: "<?php echo url('/'); ?>/get_lead",
          data: data,            
                   
                    type: "POST",
                    success: function (data) {
            if (data==1) {
              //$('.modal').modal('hide');
          

            swal("Thank You!", "Lead Sent we will connect you soon", "success")


 
            }
                    }
                });
      });




$( "#top-select-search" ).autocomplete({
  source: function( request, response ) {
   var category=$('.mm').val();
   //alert(category);
   $.ajax({
    url: "<?php echo url('/'); ?>/services_by_city",
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