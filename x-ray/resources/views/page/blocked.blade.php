<!DOCTYPE html>  
<html lang="en">
<head>
<link rel="icon" type="image/png" sizes="16x16" href="../plugins/images/favicon.png">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" >
<meta name="keywords" content="Wedding" >
<meta name="description" content="Wedding,directid" >
<title>Orion Quotes | Log In</title>
<link href="assets/bootstrap/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="assets/css/animate.css" media="screen" rel="stylesheet" type="text/css" >
<link href="assets/css/style.css" media="screen" rel="stylesheet" type="text/css" >
<link href="assets/css/colors/default.css" media="screen" rel="stylesheet" type="text/css" >
<link href="assets/css/colors/blue.css" media="screen" rel="stylesheet" type="text/css" >
<link href="assets/toast/css/jquery.toast.css" media="screen" rel="stylesheet" type="text/css" >
<link rel="icon" type="image/png" sizes="16x16" href="assets/pics/fav.png">
<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="/assets/js/html5shiv.js"></script>
    <script src="/assets/js/respond.min.js"></script>
<![endif]-->
<script src="assets/js/web.min.js"></script>
<script type="text/javascript" src="assets/js/webmig.min.js"></script>
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
<body>
<style type="text/css">
.login-box{position:fixed;height:100%;top:25px;margin-left: 2%;background:rgba(255, 255, 255, 0);}
.login-box .logo{display:inline-block;margin-bottom:20px;margin-left: 65px;}
.login-box .logo img{margin-right:10px;max-width:210px;}
.login-box .logo span{font-size:28px;color:#2d2e42;display: inline-block;vertical-align: middle;}
.login-box .logo font{color:#e84c3d;}
.forgotBtnAdmin a{color:#2d2e42;}
.login-box .white-box{background:none;box-shadow:none;}
.login-box .white-box form .form-control{color:#fff;}
</style>

<div class="preloader">
  <svg class="circular" viewBox="25 25 50 50">
      <circle class="path" cx="50" cy="50" r="20" fill="none" stroke-width="2" stroke-miterlimit="10"/>
  </svg>
</div>  
<section id="wrapper" class="login-register">
<form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
{{ csrf_field() }}
</form>
    <div style="margin: 0 auto; width: 100%; padding-top: 50px"><h1 style="color: #fff;text-align: center; font-family: monospace;">You are blocked please contact admin <a href="{{ route('logout') }}"
    onclick="event.preventDefault();
    document.getElementById('logout-form').submit();" ><i class="fa fa-power-off"></i> Click here </a></h1></div>


  <div class="login-box">
   
</section>
<script type="text/javascript" defer="defer" src="assets/js/mousetrap.min.js"></script>
<script type="text/javascript" defer="defer" src="assets/js/vanilla.idle.js"></script>
<script type="text/javascript" defer="defer" src="assets/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" defer="defer" src="assets/js/waves.js"></script>
<script type="text/javascript" defer="defer" src="assets/js/bootstrap-show-password.min.js"></script>
<script type="text/javascript" defer="defer" src="assets/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript" defer="defer" src="assets/jquery-validation/additional-methods.min.js"></script>
<script type="text/javascript" defer="defer" src="assets/js/js.cookie.js"></script>
<script type="text/javascript" defer="defer" src="assets/toast/js/jquery.toast.js"></script>
<script type="text/javascript" defer="defer" src="assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" defer="defer" src="assets/js/custom.min.js"></script>


</body>
</html>