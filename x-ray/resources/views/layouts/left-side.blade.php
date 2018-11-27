  <?php use App\Page; 

  ?>
  @if (session()->has('success'))
<div class="jq-toast-wrap top-right">
  <div class="jq-toast-single jq-has-icon jq-icon-success" style="text-align: left; display: block;">
    <span class="jq-toast-loader"></span>
    <h2 class="jq-toast-heading">{!! session()->get('success') !!}</h2>
  </div>
</div>
@endif
  <nav class="navbar navbar-default navbar-static-top m-b-0">
    <div class="navbar-header"> <a class="navbar-toggle hidden-sm hidden-md hidden-lg " href="javascript:void(0)" data-toggle="collapse" data-target=".navbar-collapse"><i class="ti-menu"></i></a>
      <div class="top-left-part"><a class="logo" href="<?php echo url('/'); ?>/admin"><b><img src="<?php echo url('/'); ?>/public/assets/pics/adminLogo.png" alt="home" style="max-width:30px;" /></b><span class="hidden-xs">X-Ray India</span></a></div>
      <ul class="nav navbar-top-links navbar-left hidden-xs">
        <li><a href="javascript:void(0)" class="open-close hidden-xs waves-effect waves-light"><i class="icon-arrow-left-circle ti-menu"></i></a></li>
        
      </ul>
       <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
      <ul class="nav navbar-top-links navbar-right pull-right">
        
        <li class="waves-effect waves-light"> <a href="{{ route('logout') }}"
                   onclick="event.preventDefault();
                            document.getElementById('logout-form').submit();" ><i class="fa fa-power-off"></i> Logout</a></li>
      </ul>
    </div>
  </nav>  
<div class="navbar-default sidebar" role="navigation">
  <div class="sidebar-nav navbar-collapse slimscrollsidebar">
    <ul class="nav" id="side-menu">
      <li class="sidebar-search hidden-sm hidden-md hidden-lg">
        <div class="input-group custom-search-form">
          <input type="text" class="form-control" placeholder="Search...">
          <span class="input-group-btn">
          <button class="btn btn-default" type="button"> <i class="fa fa-search"></i> </button>
          </span> </div>
      </li>
      <li class="user-pro ">
        <?php $checkedp =  Page::admin_details(); ?>
        <a href="<?php echo url('/'); ?>" class="waves-effect" id="profile-avatar-link">
          <?php if(!empty($checkedp->picture)) { ?>
            <img src="<?php echo url('/'); ?>/users/<?php echo $checkedp->picture ?>" class="img-circle" alt="img" />
          <?php
          }else{ ?>
              <img src="<?php echo url('/'); ?>/users/default.png" class="img-circle" alt="img" />
          <?php
          } ?>
          <span class="hide-menu"> ADMIN <span class="fa arrow"></span></span>
          </a>
        <ul class="nav nav-second-level collapse">
          <li><a href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();" ><i class="fa fa-power-off"></i> Logout</a>
          </li>
        </ul>
      </li>
      <li class=''>
        <a class="waves-effect" href="<?php echo url('/'); ?>/admin">
        <i class="zmdi zmdi-view-dashboard zmdi-hc-fw fa-fw"></i>
        <span class="hide-menu">Dashboard</span>
        </a>
      </li>
 
      <li class=' has-sub <?php if($active_menu == "ManageCategory") { echo "active"; } ?>'>
        <a class="waves-effect   has-sub " href="javascript:void(1);">
        <i class="zmdi zmdi-plus-circle-o-duplicate"></i>
        <span class="hide-menu">Manage-Category</span>
        <span class="fa arrow"></span>
        <span class="fa arrow"></span>
        </a>
        <ul class='nav nav-second-level collapse'>
        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/add-category">
        Add Category</a>
        </li>

        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/manage-category">
        All Category</a>
        </li>

        
      
        </ul>
      </li>

       <li class=' has-sub <?php if($active_menu == "ManageBlog") { echo "active"; } ?>'>
        <a class="waves-effect   has-sub " href="javascript:void(1);">
        <i class="zmdi zmdi-plus-circle-o-duplicate"></i>
        <span class="hide-menu">Manage-Blogs</span>
        <span class="fa arrow"></span>
        <span class="fa arrow"></span>
        </a>
        <ul class='nav nav-second-level collapse'>
        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/add-blog">
        Add Blog</a>
        </li>

        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/manage-blog">
        All Blogs</a>
        </li>

        
      
        </ul>
      </li>


       <li class=' has-sub <?php if($active_menu == "ManageBlog") { echo "active"; } ?>'>
        <a class="waves-effect   has-sub " href="javascript:void(1);">
        <i class="zmdi zmdi-plus-circle-o-duplicate"></i>
        <span class="hide-menu">Manage-Products</span>
        <span class="fa arrow"></span>
        <span class="fa arrow"></span>
        </a>
        <ul class='nav nav-second-level collapse'>
        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/add-product">
        Add Product</a>
        </li>

        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/manage-product">
        All Product</a>
        </li>

        
      
        </ul>
      </li>


   <li class=' has-sub <?php if($active_menu == "Manageleads") { echo "active"; } ?>'>
        <a class="waves-effect   has-sub " href="javascript:void(1);">
        <i class="zmdi zmdi-plus-circle-o-duplicate"></i>
        <span class="hide-menu">Manage-Leads</span>
        <span class="fa arrow"></span>
        <span class="fa arrow"></span>
        </a>
        <ul class='nav nav-second-level collapse'>
       
        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/leads">
        All Leads</a>
        </li>

        
      
        </ul>
      </li>

      <li class=' has-sub <?php if($active_menu == "Manageusers") { echo "active"; } ?>'>
        <a class="waves-effect   has-sub " href="javascript:void(1);">
        <i class="zmdi zmdi-plus-circle-o-duplicate"></i>
        <span class="hide-menu">user's</span>
        <span class="fa arrow"></span>
        <span class="fa arrow"></span>
        </a>
        <ul class='nav nav-second-level collapse'>
        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/manage-users">
        All User's</a>
        </li>

         <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/upload-vendor">
       Upload From CSV</a>
        </li>

         <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/manage-users?type=city">
         Delete User's by City</a>
        </li>
        </ul>
      </li>

        <li class=' has-sub <?php if($active_menu == "ads") { echo "active"; } ?>'>
        <a class="waves-effect   has-sub " href="javascript:void(1);">
        <i class="zmdi zmdi-plus-circle-o-duplicate"></i>
        <span class="hide-menu">Manage-Ads</span>
        <span class="fa arrow"></span>
        <span class="fa arrow"></span>
        </a>
        <ul class='nav nav-second-level collapse'>
        <li class="">
        <a class="" href="http://destinysolution.in/x-ray/admin/manage-ads">
        Manage-Ads</a>
        </li>

        </ul>
      </li>


    </ul>
  </div>
</div>

