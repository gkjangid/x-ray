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
<title>Orion Quotes | Manage Sub-Categories</title>
<link href="<?php echo url('/'); ?>/assets/bootstrap/css/bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/sidebar-nav/dist/sidebar-nav.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/morrisjs/morris.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/css/animate.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/css/style.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/css/colors/default.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/css/colors/blue.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/toast/css/jquery.toast.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/sweetalert/sweetalert.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/DataTables/media/css/dataTables.bootstrap.min.css" media="screen" rel="stylesheet" type="text/css" >
<link href="<?php echo url('/'); ?>/assets/DataTables/extensions/Responsive/css/responsive.dataTables.min.css" media="screen" rel="stylesheet" type="text/css" ><!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
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
<script type="text/javascript" src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
<script>
$(function() {
  $('input[name="daterange"]').daterangepicker({
    opens: 'left',
    locale: {
      format: 'YYYY-MM-DD'
    },
  }, function(start, end, label) {
    console.log("A new date selection was made: " + start.format('YYYY-MM-DD') + ' to ' + end.format('YYYY-MM-DD'));
  });
});
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
      <h4 class="page-title">Manage Sub-Categories</h4>
    </div>
    <div class="col-lg-9 col-sm-8 col-md-8 col-xs-12">
      &nbsp;
    </div>
</div>        
    <div class="col-md-12">
    <ul class="page-breadcrumb breadcrumb">
        <a href="<?php echo url('/'); ?>/orion-admin" style="color:#FFF;"><i class="fa fa-dashboard"></i> Dashboard</a>  
                    <i class="fa fa-chevron-right" style="vertical-align:middle; color:#FFF;"></i>
                    <a href="javascript:void(1);" style="color:#FFF;">Category</a>  
                             <i class="fa fa-chevron-right" style="vertical-align:middle; color:#FFF;"></i>
                    <a href="" style="color:#FFF;">Sub-Categories</a>  
                             <i class="fa fa-chevron-right" style="vertical-align:middle; color:#FFF;"></i>
            </ul>
</div>
<div style="clear:both;"></div>
      <div class="row">
  <div class="white-box">
      <form method="get" action="{{ action('PageController@subcategory') }}">
          <div class="col-md-3">
            <input type="hidden" name="page" value="<?php echo @$_GET['page']; ?>">
            <!-- <input type="hidden" name="name" value="<?php echo @$_GET['name']; ?>">
            <input type="hidden" name="daterange" value="<?php echo @$_GET['daterange']; ?>"> -->
            <div class="form-group">
            <label>Sub-Categories</label>
               
                <input type="text" class="form-control" name="name" value="<?php echo @$_GET['name']; ?>"" placeholder="Sub-categories">
              </div>
       
          </div>

          <div class="col-md-4">
            <div class="form-group">
              <label>Date Range</label>
              <div class="input-group">
                <div class="input-group-addon">
                  <i class="fa fa-calendar"></i>
                </div>
                <input type="text" name="daterange" class="form-control" value="@$_GET['daterange']" />
                <!-- <input name="daterange" class="form-control pull-right" id="reservation" type="text"> -->
              </div>
            </div>
          </div>

            <div class="col-md-3">
            
            <div class="form-group">
            <label>Select status</label> 
              <select class="form-control"  name="status">
                <option <?php if(empty(@$_GET['status'])) echo "Selected"; ?>>Select status</option>
                <option <?php if(@$_GET['status'] == 1) echo "Selected"; ?> value="1">Active</option>
                <option <?php if(@$_GET['status'] == 2) echo "Selected"; ?> value="2">Inactive</option>
              </select>
            </div>
          </div>

            <div class="col-md-2" style=" margin-top: 25px;">
              <button type="button" onclick="this.form.submit()" id="button-filter" class="btn btn-primary"><i class="fa fa-filter"></i> Filter</button>
              </div>
        </form>

    <div class="clearfix">&nbsp;</div>
 
        <div class="">
         <div class="col-md-1">
          <form>
              <input type="hidden" name="page" value="<?php echo @$_GET['page']; ?>">
              <input type="hidden" name="name" value="<?php echo @$_GET['name']; ?>">
              <input type="hidden" name="daterange" value="<?php echo @$_GET['daterange']; ?>">
              <select class="form-control"  name="limit" onchange="this.form.submit()">
                <option <?php if(@$_GET['limit'] == 10) echo "Selected"; ?> >10</option>
                <option <?php if(@$_GET['limit'] == 20) echo "Selected"; ?> >20</option>
                <option <?php if(@$_GET['limit'] == 50) echo "Selected"; ?> >50</option>
                <option <?php if(@$_GET['limit'] == 100) echo "Selected"; ?> >100</option>
              </select>
          </form>
          </div>

          <div class="col-md-10">
            <h4>
          Item Per Page: Total Result Found: Showing 1 to {{ $pages->perPage() }}  of {{ $pages->total() }} ({{ $pages->lastPage() }} Pages) </h4>
        </div>
      </div>
     
<div class="col-md-12"> 
     {{ $pages->links() }} 
</div>

      <div class="clearfix">&nbsp;</div>
       <form id="team_form" method="post" action="remove-subcategory"  onsubmit="return checkSelects('team_form');" >
        <input type="hidden" name="_token" id="token" value="{{ csrf_token() }}">
        <div class="table-toolbar">
         <div class="btn-group">
                 <a href="add-subcategory" class="btn btn-outline btn-info btn-sm waves-effect waves-light"><i class="fa fa-plus"></i> Add New </a>
                </div>  
          <div class="btn-group">
            <button id="sample_editable_1_new" class="btn btn-outline btn-danger btn-sm waves-effect waves-light"> <i class="fa fa-trash-o"></i>&nbsp;&nbsp;Delete Selected </button>
          </div>  
        </div>
                <div class="clearfix">&nbsp;</div>
        <table class="table table-striped table-bordered table-hover dataTable no-footer dtr-inline collapsed" id="sample_1" role="grid">
                    <thead>
                    <tr>
                        <th width="6%">S.No.</th>
                        <th width="4%"><div class="checkbox"><input id="deletebcchk" name="deletebcchk" type="checkbox" class="group-checkable"><label for="deletebcchk"></label></div></th>
                        <th>Sub-category</th>
                        <th>Category</th>
                        <th>Status</th>
                       <th width="20%">Created</th>
                        <th width="6%">Actions</th>
                    </tr>
                </thead>
                    <tbody>
                    <?php
                    $i = 0;
                    foreach ($pages as $key => $value) {
                    # code...
                    $i++;
                    ?>
                    <tr role="row" class="odd">
                      <td class="sorting_1"><?php echo $i; ?></td>
                      <td>
                        <div class="checkbox">
                          <input class="elem_ids checkboxes" type="checkbox" id="checkbox_<?php echo $value->id; ?>" name="clients[<?php echo $value->id; ?>]" value="<?php echo $value->id; ?>"><label for="checkbox_<?php echo $value->id; ?>"></label></div>
                        </td>
                      <td><?php echo $value->title ?></td>
                      <td><?php echo $value->C_title ?></td>
                      <td><?php if($value->status == 1){ echo "Acitve";}else{echo "Inactive";} ?></td>
                       <td><?php 
                      echo date('F d,Y h:i a', strtotime($value->created)); 
                       ?></td>
                      <td><a href="edit-subcategory/<?php echo $value->id?>" class="btn btn-outline btn-info btn-sm waves-effect waves-light" title="view"><i class="fa fa-edit"></i></a></td>
                    </tr>
                    <?php } ?>
                  </tbody>
        </table>
      </form>
      {{ $pages->links() }}
                </div>
 </div>


  </div>

  <script type="text/javascript" charset="utf-8">
  var sortinArr = [1,6];
  var listeText = 'categories';
  
$(document)  .ready(function(e) {
  $('#sample_1').dataTable({
    "language":{"lengthMenu": "Show _MENU_ "+listeText},
    "responsive":true,
    "aoColumnDefs":[
      {"bSortable":false,"aTargets":sortinArr},
     ],
  });
});
</script> 
<style type="text/css">
  .dataTables_filter, .dataTables_info { display: none; }
  .dataTables_length { display: none; }
  .dataTables_paginate { display: none; }

</style>
   <footer class="footer text-center"><?php echo date("Y"); ?> &copy; Orion Quotes </footer>
    <script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/js/mousetrap.min.js"></script>
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
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/DataTables/media/js/jquery.dataTables.min.js?a=1531913459"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/DataTables/media/js/dataTables.bootstrap.min.js"></script>
<script type="text/javascript" defer="defer" src="<?php echo url('/'); ?>/assets/DataTables/extensions/Responsive/js/dataTables.responsive.min.js"></script>


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