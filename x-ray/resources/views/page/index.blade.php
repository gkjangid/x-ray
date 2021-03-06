<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" sizes="16x16" href="http://www.direct-id.sg/assets/pics/fav.png">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" >
<meta name="keywords" content="Wedding" >
<meta name="description" content="Wedding,directid" >
<title>X-Ray India</title>
<link href="public/assets/bootstrap/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="public/assets/sidebar-nav/dist/sidebar-nav.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="public/assets/morrisjs/morris.css" media="screen" rel="stylesheet" type="text/css" >
<link href="public/assets/css/animate.css" media="screen" rel="stylesheet" type="text/css" >
<link href="public/assets/css/style.css" media="screen" rel="stylesheet" type="text/css" >
<link href="public/assets/css/colors/default.css" media="screen" rel="stylesheet" type="text/css" >
<link href="public/assets/css/colors/blue.css" media="screen" rel="stylesheet" type="text/css" >
<link href="public/assets/toast/css/jquery.toast.css" media="screen" rel="stylesheet" type="text/css" >
<link href="public/assets/sweetalert/sweetalert.css" media="screen" rel="stylesheet" type="text/css" ><!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="/assets/js/html5shiv.js"></script>
  <script src="/assets/js/respond.min.js"></script>
<![endif]-->
<script src="public/assets/js/web.min.js"></script>
<script type="text/javascript" src="http://www.direct-id.sg/assets/js/webmig.min.js"></script>
<script type="text/javascript">
  var LoggedUser=1;
  var ADMIN_APPURL="<?php echo url('/'); ?>";
  var AVTURL="<?php echo url('/'); ?>";
  var MEDIAURL="<?php echo url('/'); ?>";
  var AVTBIGURL="<?php echo url('/'); ?>";
  var SITENAME="Orion Quotes";
  var Action="editfrontpage";
  var Controller="static";
  var ConfirmTitle="Are you sure?";
  var ConfirmBtn="Yes";
  var CancelBtn="Cancel";
  var extError="Uploaded file is not a valid image. Only JPG,PNG and JPEG files are allowed.";
  var AvtUpdated="Your profile avatar has been updated";
  var PwdUserError="Username and password must not be same";
</script>
</head>
<body class="fix-sidebar fix-header">
<div class="preloader"><svg class="circular" viewBox="25 25 50 50"><circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/></svg></div>
<div id="wrapper">  
@extends('layouts.left-side')

<!--<li class="nav-small-cap m-t-10">--- Main Menu</li>-->     <div id="page-wrapper">
      <div class="container-fluid">
          <div class="row bg-title">
    <div class="col-lg-3 col-md-4 col-sm-4 col-xs-12">
      <h4 class="page-title">Dashboard</h4>
    </div>
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
      &nbsp;
    </div>
</div>            <div class="col-md-12">
    <ul class="page-breadcrumb breadcrumb">
        <a href="<?php echo url('/'); ?>" style="color:#FFF;"><i class="fa fa-dashboard"></i> Dashboard</a>  
            </ul>
</div>
<div style="clear:both;"></div>
      <style type="text/css">
.box-title{color:#fff;}
</style>
<div class="row">
<div class="col-lg-12 col-sm-12 col-xs-12 adminDashboard">
  <div class="row">
    <!-- onclick="window.location.href='<?php echo url('/'); ?>/sub-admin'" -->
    <div class="col-lg-4 col-sm-6 col-xs-12 Success">
      <div class="white-box " >
        <h3 class="box-title">Category</h3>
        <ul class="list-inline two-part">
          <li><i class="icon-people"></i></li>
          <li class="text-right"><span class="counter">9</span></li>
        </ul>
      </div>
    </div>
    <div class="col-lg-4 col-sm-6 col-xs-12 Warning">
      <div class="white-box ">
        <h3 class="box-title">Product</h3>
        <ul class="list-inline two-part">
          <li><i class="icon-people"></i></li>
          <li class="text-right"><span class="counter">0</span></li>
        </ul>
      </div>
    </div>
  </div> 
</div>

</div>

    </div>
    <footer class="footer text-center"><?php echo date("Y"); ?> &copy; X-Ray India </footer>
    <script type="text/javascript" defer="defer" src="public/assets/js/mousetrap.min.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/js/vanilla.idle.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/js/jquery.slimscroll.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/js/waves.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/sidebar-nav/dist/sidebar-nav.min.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/jquery-validation/additional-methods.min.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/sweetalert/sweetalert.min.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/toast/js/jquery.toast.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/js/initial.min.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/js/js.cookie.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/js/mask.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/js/custom.min.js"></script>
<script type="text/javascript" defer="defer" src="public/assets/counterup/jquery.counterup.min.js?a=1531805675"></script>
<script type="text/javascript" defer="defer" src="public/assets/raphael/raphael-min.js?a=1531805675"></script>
<script type="text/javascript" defer="defer" src="public/assets/morrisjs/morris.js?a=1531805675"></script>
<script type="text/javascript" defer="defer" src="public/assets/waypoints/lib/jquery.waypoints.js?a=1531805675"></script>
<script type="text/javascript" defer="defer" src="public/assets/jquery-sparkline/jquery.sparkline.min.js?a=1531805675"></script>
<script type="text/javascript" defer="defer" src="public/assets/jquery-sparkline/jquery.charts-sparkline.js?a=1531805675"></script>
<script type="text/javascript" defer="defer" src="public/assets/js/dashboard3.js?a=1531805675"></script>


    </div>
</div>
<div id="admin-webapp-modal" class="modal fade in" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
        <h4 class="modal-title"></h4>
      </div>
      <div class="modal-body"></div>
    </div>
  </div>
</div>
</body>  
</html>