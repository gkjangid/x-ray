<!DOCTYPE html>
<!--[if lt IE 7]> <html class="lt-ie9 lt-ie8 lt-ie7" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="lt-ie9 lt-ie8" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="lt-ie9" lang="en"> <![endif]-->
<!--[if gt IE 8]><!--><html lang="en"><!--<![endif]-->
<head>
<meta charset="utf-8" />
<link rel="icon" type="image/png" sizes="16x16" href="assets/pics/fav.png">
<meta http-equiv="Content-Type" content="text/html;charset=utf-8" >
<meta name="keywords" content="Wedding" >
<meta name="description" content="Wedding,directid" >
<title>Orion Quotes | Profile</title>
<link href="<?php echo url('/'); ?>/assets/bootstrap/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/sidebar-nav/dist/sidebar-nav.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/morrisjs/morris.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/css/animate.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/css/style.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/css/colors/default.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/css/colors/blue.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/toast/css/jquery.toast.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/sweetalert/sweetalert.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/html5-editor/bootstrap-wysihtml5.css" media="screen" rel="stylesheet" type="text/css" ><!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="/assets/js/html5shiv.js"></script>
  <script src="/assets/js/respond.min.js"></script>
<![endif]-->
<script src="<?php echo url('/'); ?>/assets/js/web.min.js"></script>
<script type="text/javascript" src="<?php echo url('/'); ?>/assets/js/webmig.min.js"></script>
<script type="text/javascript">
  var LoggedUser=1;
  var ADMIN_APPURL="<?php echo url('/'); ?>";
  var AVTURL="<?php echo url('/users'); ?>";
  var MEDIAURL="<?php echo url('/'); ?>";
  var AVTBIGURL="<?php echo url('/users'); ?>";
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
      <h4 class="page-title">Profile</h4>
    </div>
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
      &nbsp;
    </div>
</div>            <div class="col-md-12">
    <ul class="page-breadcrumb breadcrumb">
        <a href="<?php echo url('/') ?>" style="color:#FFF;"><i class="fa fa-dashboard"></i> Dashboard</a>  
                    <i class="fa fa-chevron-right" style="vertical-align:middle; color:#FFF;"></i>
                    <a href="javascript:void(1);" style="color:#FFF;">ADMIN</a>  
                             <i class="fa fa-chevron-right" style="vertical-align:middle; color:#FFF;"></i>
                    <a href="" style="color:#FFF;">My Profile</a> 
                </ul>
</div>

    <div class="row">
      <div class="col-md-4 col-xs-12">
        <div class="white-box">
          <div class="user-bg">
            <img width="100%" src="<?php echo url('/'); ?>/users/<?php echo $pages->picture ?>" alt="big-img" />
            <div class="overlay-box">
              <div class="user-content">
                <img src="<?php echo url('/'); ?>/users/<?php echo $pages->picture ?>" class="thumb-lg img-circle" alt="img" />
              </div>
            </div>
          </div>
         <!--  <div class="user-btm-box">
            <h4 class="text-center">Don T</h4>
            <h5 class="text-center">dw@direct-id.sg</h5> 
          </div> -->
        </div>
      </div>
  <div class="col-md-8 col-xs-12">
        <div class="white-box" style="min-height:347px;">
          <ul class="nav nav-tabs tabs customtab">
                <li class="tab active"><a href="#settings" data-toggle="tab" aria-expanded="true"> <span class="visible-xs"><i class="fa fa-user"></i></span> <span class="hidden-xs">Profile</span></a></li>
                <li class="tab"><a href="#picture" data-toggle="tab" aria-expanded="false"> <span class="visible-xs"><i class="fa fa-picture"></i></span> <span class="hidden-xs">Picture</span></a></li>
           </ul>
           <div class="tab-content">
              <div class="tab-pane active" id="settings">
                <!-- <form class="form-horizontal form-material" id="profile_form" action="<?php echo url('/'); ?>/update-profile" enctype="multipart/form-data" novalidate="post">  -->
                  <form id="" enctype="multipart/form-data" role="form" class="form-horizontal form-material" action="<?php echo url('/'); ?>/update-profile" novalidate method="post">
                  <input type="hidden" name="_token" value="{{ csrf_token() }}">
                  <input type="hidden" name="old_pass" value="<?php echo $pages->password ?>">
                  <div class="form-body">
                    <h3 class="box-title">Person Info</h3>
                    <hr class="m-t-0">
                    <div class="form-group">
                      <label for="example-email" class="col-md-12">User Name<br/> 
                      <span class="text-info"><small>Please enter only Letters,Numbers and underscores </small></span>
                      </label>
                      <div class="col-md-12">  
                        <input type="text" name="name" id="name" value="<?php echo $pages->name ?>" class="form-control form-control-line required" placeholder="Name">                     
                      </div>
                    </div>
                    <h3 class="box-title">Account Info</h3>
                    <hr class="m-t-0">
                    <div class="form-group">
                      <label for="example-email" class="col-md-12">Email Address</label>
                      <div class="col-md-12">
                      <input type="text" name="email" id="email" value="<?php echo $pages->email ?>" class="form-control form-control-line required email validateEmail" placeholder="email" readonly> 
                      </div>
                    </div>
                    <div class="form-group">
                      <label class="col-md-12">Password </label>
                      <div class="col-md-12 well p-10 m-10">
                        <ul class="list-icons">
                        <li style="line-height:30px !important;"><i class="fa fa-check text-success"></i> Minimum 6 characters in length <small style="color:red;">*</small></li>
                        <li style="line-height:30px !important;"><i class="fa fa-check text-success"></i> Contains Uppercase Letters, Lowercase Letters, Numbers, Symbols</li>
                        </ul>
                      </div>
                      <div class="col-md-12">
                        <input type="password" name="password" id="password" value="" class="form-control form-control-line" autocomplete="off" placeholder="Password" onkeyUp="return checkPwdStrenth(this.value);" minLength="6"> 
                        <span id="passstrength"></span>
                      </div>
                    </div>
                    <button class="btn fcbtn btn-outline btn-info btn-1e">Update</button>
                  </div>
              </form>
              </div>
              <div class="tab-pane" id="picture">
                  <!-- <form class="form-horizontal form-material"> -->
                     <form id="" enctype="multipart/form-data" role="form" class="form-horizontal form-material" action="<?php echo url('/'); ?>/upload" novalidate method="post">
                      <input type="hidden" name="_token" value="{{ csrf_token() }}">
                      <input type="hidden" name="old_image" value="<?php echo $pages->picture ?>">
                    <div class="form-body">
                      <div class="form-group">
                          <label class="col-sm-12">Upload your profile Image</label>
                            <div class="col-sm-12">
                              <div class="fileinput fileinput-new input-group" data-provides="fileinput">
                                <div class="form-control" data-trigger="fileinput"> <i class="glyphicon glyphicon-file fileinput-exists"></i> <span class="fileinput-filename"></span></div>
                                <span class="input-group-addon btn btn-default btn-file"> <span class="fileinput-new">Select file</span> <span class="fileinput-exists">Change</span>
                                <input type="file" onchange="avatarUploader1();" name="admin_picture" id="admin_picture" class="file-upload">
                                </span> <a href="javascript:void(1);" class="input-group-addon btn btn-default fileinput-exists" data-dismiss="fileinput">Remove</a> </div>
                            </div>
                        </div>
                        <div id="pic-progress" class="progress progress-sm" style="display:none;"><div id="pic-bar" class="progress-bar progress-bar-info progress-bar-striped active" role="progressbar" aria-valuenow="85" aria-valuemin="0" aria-valuemax="100"></div></div>
                    </div>
                   </form>
              </div>
           </div>
        </div>
   </div>
</div>
<script type="text/javascript">
$(document).ready(function(e) {
    $("#profile_form").validate({
     rules:{
       admin_password:{pwd_username_not_same:true}
     },
  });
});
function avatarUploader1(){
  $('.file-upload').fileupload({
    //url:ADMIN_APPURL+'/upload',
    add:function(e, data) {  
      var uploadErrors=[];
      var file_name=data.originalFiles[0]['name'];
      var Extension=file_name.substr((file_name.lastIndexOf('.') + 1));
      var extension_array=['jpg','jpeg','png','JPG','JPEG','PNG'];
      if(($.inArray(Extension, extension_array)<0)){ 
        $('.fileinput-filename').html('');
        $('.fileinput').removeClass('fileinput-exists');
        $('.fileinput').addClass('fileinput-new');
        showAppAlert(SITENAME,extError,"warning");
      }
      else {
        data.submit();
      }
      
    },
    done: function(e,data){
      $('.fileinput-filename').html('');
      $('.fileinput').removeClass('fileinput-exists');
      $('.fileinput').addClass('fileinput-new');
      if(data.result==0){
        $('#pic-progress').hide();
        showAppAlert(SITENAME,extError,"warning");
      }else{
        //alert(data.result);
        ///var data=JSON.parse(data.result);
        //alert(data);
        var data=data.result;
        if($('.user-content img').length>0){
          $('.user-content img').remove();
        }if($('.user-pro img').length>0){
          $('.user-pro img').remove();
        }if($('.user-bg img').length>0){
          $('.user-bg img').remove();
        }
        var bigImgTag="<img src='"+AVTBIGURL+"/"+data+"' style='width:100%;' alt='big-avatar' />"
        var imgTag="<img src='"+AVTURL+"/"+data+"' class='thumb-lg img-circle' alt='avatar' />";
        var smallimgTag="<img src='"+AVTURL+"/"+data+"' class='img-circle' alt='avatar' />";
        $('.user-content').html(imgTag);
        $('a#profile-avatar-link').prepend(smallimgTag);
        $('.user-bg').prepend(bigImgTag);
        $('#pic-progress').hide();
        toastInit(AvtUpdated,"success");
      }
    },
    progress: function(e, data){
      $('#pic-progress').show();
      var progress = parseInt(data.loaded / data.total * 100, 10);
      $("#pic-bar").width(progress+'%');
      $('#pic-progress').css('width', progress+'%');
    }
  });}
</script>   </div>
    <footer class="footer text-center"><?php echo date("Y"); ?> &copy; Orion Quotes </footer>
<script type="text/javascript" defer="defer" src="<?php echo url('/') ?>/js/bootsetrap.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/vanilla.idle.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/jquery.slimscroll.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/waves.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/sidebar-nav/dist/sidebar-nav.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/jquery-validation/additional-methods.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/sweetalert/sweetalert.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/toast/js/jquery.toast.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/initial.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/js.cookie.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/mask.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/custom.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/html5-editor/wysihtml5-0.3.0.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/html5-editor/bootstrap-wysihtml5.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/jquery-ui.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/jasny-bootstrap.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/jquery-file-upload/js/jquery.fileupload.js"></script>


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