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
<title>X-ray India | Manage Product</title>
<link href="<?php echo url('/'); ?>/public/assets/bootstrap/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/sidebar-nav/dist/sidebar-nav.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/morrisjs/morris.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/css/animate.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/css/style.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/css/colors/default.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/css/colors/blue.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/toast/css/jquery.toast.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/sweetalert/sweetalert.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/DataTables/media/css/dataTables.bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/public/assets/DataTables/extensions/Responsive/css/responsive.dataTables.min.css" media="screen" rel="stylesheet" type="text/css" ><!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!--[if lt IE 9]>
  <script src="/assets/js/html5shiv.js"></script>
  <script src="/assets/js/respond.min.js"></script>
<![endif]-->

<script src="<?php echo url('/'); ?>/public/assets/js/web.min.js"></script>
<script type="text/javascript" src="<?php echo url('/'); ?>/public/assets/js/webmig.min.js"></script>
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
      <h4 class="page-title">Add Edit</h4>
    </div>
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
      &nbsp;
    </div>
</div>            <div class="col-md-12">
    <ul class="page-breadcrumb breadcrumb">
        <a href="<?php echo url('/'); ?>/orion-admin" style="color:#FFF;"><i class="fa fa-dashboard"></i> Dashboard</a>  
                    <i class="fa fa-chevron-right" style="vertical-align:middle; color:#FFF;"></i>
                    <a href="javascript:void(1);" style="color:#FFF;">Products</a>  
                             <i class="fa fa-chevron-right" style="vertical-align:middle; color:#FFF;"></i>
                    <a href="<?php echo url('/'); ?>/admin/manage-product" style="color:#FFF;">Products</a>  
                             <i class="fa fa-chevron-right" style="vertical-align:middle; color:#FFF;"></i>
                    <a href="" style="color:#FFF;">Add Product</a>  
                </ul>
</div>
<div style="clear:both;"></div>
      <div class="row">
  <div class="white-box">
  <form id="page-form" enctype="multipart/form-data" role="form" class="" action="<?php echo url('/'); ?>/admin/save-product" novalidate method="post">
    <input type="hidden" name="_token" value="{{ csrf_token() }}">
    <input type="hidden" name="id" value="">
    <input type="hidden" name="old_image" value="">
      <div class=" form-group ">
        <label for="title" class="required" aria-required="true">Title</label>
        <input type="text" name="title" id="category_title" value="" class="form-control required" placeholder="Title" autocomplete="off" required="" aria-required="true">
      </div>
        <div class=" form-group ">
        <label for="title" class="required" aria-required="true">Price</label>
        <input type="text" name="price" id="category_title" value="" class="form-control required" placeholder="Price" autocomplete="off" required="" aria-required="true">
      </div>
   

      <div class="row">
        <div class="form-group">
          <div class="col-md-12">
            <label for="page_desc" class="optional">Text</label>
            <textarea name="description" id="page_desc" rows="7" class="form-control required ckeditor" placeholder="Eamil Description" cols="80">
             
            </textarea>                    
          </div>
        </div>
      </div>
      <div class="clearfix">&nbsp;</div>
      <div class="form-group ">
        <label for="etabeebdXNlcnM_image" class="required" aria-required="true">Image</label>
        <input type="hidden" name="MAX_FILE_SIZE" value="268435456" id="MAX_FILE_SIZE">
        <input type="file" name="image" id="etabeebdXNlcnM_image" class="default input-file" accept="image/*" aria-required="true">
      </div>
      <img src="<?php echo url('/'); ?>/blogs/" alt="" style="max-width: 100px;display: block;margin-bottom: 10px;">
      <div class=" form-group ">
        <label for="coin" class="required" aria-required="true">Status</label>
        <select name="status" class="form-control required">
          <option value="1" >Active</option>
          <option value="0">Inactive</option>
        </select>
      </div>


          <div class=" form-group ">
        <label for="coin" class="required" aria-required="true">Product Type</label>
        <select name="status" class="form-control required">
          <option value="1" >Featured Product</option>
          <option value="2">Popular Product</option>
          <option value="3">Best Product</option>
          <option value="4">Recent Product</option>
        </select>
      </div>


      <div class=" form-group ">
        <button name="bttnsubmit" id="bttnsubmit" type="submit" value="
        Save" class="btn fcbtn btn-outline btn-info btn-1e btn btn-default">
        Save</button>
      </div>
    </form>
  </div>
</div>
<script type="text/javascript">
  $(document).ready(function(e) {
      $('#page-form').validate({
      ignore:":hidden:not(textarea)",     
    });
      $('.editor').wysihtml5();
    if($('a[data-wysihtml5-command="insertImage"]').length>0){
      $('a[data-wysihtml5-command="insertImage"]').remove();
    }
    });
</script>   </div>
    <footer class="footer text-center"><?php echo date("Y"); ?> &copy; X-ray India </footer>
    <script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/mousetrap.min.js"></script>
  <script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/js/mousetrap.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/js/vanilla.idle.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/js/jquery.slimscroll.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/js/waves.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/sidebar-nav/dist/sidebar-nav.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/jquery-validation/jquery.validate.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/jquery-validation/additional-methods.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/sweetalert/sweetalert.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/toast/js/jquery.toast.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/js/initial.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/js/js.cookie.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/js/mask.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/ckeditor/ckeditor.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/js/custom.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/DataTables/media/js/jquery.dataTables.min.js?a=1531913459"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/DataTables/media/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/public/assets/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>


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