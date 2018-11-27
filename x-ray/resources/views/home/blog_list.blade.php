<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>OrionQuotes.com</title>

    <!-- Bootstrap core CSS -->
    <link href="<?php echo url('/'); ?>/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
    <!-- Custom styles for this template -->
    <script src="<?php echo url('/'); ?>/assets/js/web.min.js"></script>
    <script type="text/javascript" src="<?php echo url('/'); ?>/assets/js/webmig.min.js"></script>
    <link href="<?php echo url('/'); ?>/css/custom.css" rel="stylesheet">
  </head>

  <body oncontextmenu="return false;" oncopy="return false" oncut="return false" onpaste="return false">
    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-dark fixed-top">
      <div class="container">
        <a class="navbar-brand" href="<?php echo url('/'); ?>"><img src="<?php echo url('/'); ?>/images/logo.png" align="OrionQuotes" title="OrionQuotes"></a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item active">
              <a class="nav-link" href="<?php echo url('/'); ?>">HOME  
                <span class="sr-only">(current)</span>
              </a>
            </li>
            <?php 
            foreach ($category as $categories) { ?>
              <li class="nav-item">
                <a class="nav-link" href="<?php echo url('/')."/product-list/".base64_encode($categories->id) ?>"><?php echo strtoupper($categories->title); ?></a>
              </li>
            <?php
            } ?>
            <li class="nav-item">
              <a class="nav-link" href="<?php echo url('/')."/blog-list"; ?>">BLOGE</a>
            </li>
          </ul>
            <div class="form-inline my-2 my-lg-0">
              <a href="" class="btn btn-info mr-1"><i class="fab fa-facebook-f"></i></a>
              <a href="" class="btn btn-info mr-1"><i class="fab fa-twitter"></i></i></a>
              <a href="" class="btn btn-info"><i class="fab fa-google-plus"></i></a>
            </div>
        </div>
      </div>
    </nav>

    <header>
      <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">

        <div class="carousel-inner" role="listbox">
          <!-- Slide One - Set the background image for this slide in the line below -->
          <div class="carousel-item-bg active" style="background-image: url(<?php echo url('/'); ?>/images/hd-background.jpg)">
            
          </div>         
        </div>
 
      </div>
    </header>

    <!-- Page Content -->  
      <section>
        <div class="container">
          <div class="row">
            <?php
            foreach ($blogs as $key5 => $blog) { ?>
              <div class="col-md-4 mt-4">
                <div class="card profile-card-5">
                  <div class="card-img-block">
                  <img class="card-img-top" src="<?php echo url('/'); ?>/blogs/<?php echo $blog->image ?>" alt="Card image cap">
                  </div>
                  <div class="card-body pt-3">
                    <h5 class="card-title">{{ $blog->title }}</h5>
                    <p class="card-text">
                     <?php //mb_strimwidth($blog->description, 0, 300, '...'); ?></p>
                    <a href="<?php echo url('/')."/blog-details/".base64_encode($blog->id); ?>" class="btn">Read More</a>
                  </div>
                </div>                
              </div>     
            <?php
            }?>
          </div>    
        </div>
        <div class="col-md-12 text-center">
          <nav aria-label="Page navigation example">
            {{ $blogs->links() }}
          </nav>
        </div>
      </section>
    <!-- Footer -->
<script async src="https://static.addtoany.com/menu/page.js"></script>
<footer class="pt-5 bg-dark tp-150 section footer-classic context-dark bg-image">
        <div class="container">
          <div class="row row-30">
            <div class="col-md-4 col-xl-5">
              <div class="pr-xl-4"><a class="brand" href="<?php echo url('/'); ?>"><img class="brand-logo-light" src="<?php echo url('/'); ?>/images/logo.png" alt="" width="140" height="37" srcset="<?php echo url('/'); ?>/images/agency/logo-retina-inverse-280x74.png 2x"></a>
                <p>We are an award-winning creative agency, dedicated to the best result in web design, promotion, business consulting, and marketing.</p>
                <!-- Rights-->
                <p class="rights"><span>©  </span><span class="copyright-year">2018</span><span> </span><span>Waves</span><span>. </span><span>All Rights Reserved.</span></p>
              </div>
            </div>
            <div class="col-md-4">
              <h5>Contacts</h5>
              <dl class="contact-list">
                <dt>Address:</dt>
                <dd>798 South Park Avenue, Jaipur, Raj</dd>
              </dl>
              <dl class="contact-list">
                <dt>email:</dt>
                <dd><a href="mailto:#">OrionQuotes@gmail.com</a></dd>
              </dl>
              <dl class="contact-list">
                <dt>phones:</dt>
                <dd><a href="tel:#">+91 895785878</a> <span>or</span> <a href="tel:#">+91 254879585</a>
                </dd>
              </dl>
            </div>
            <div class="col-md-4 col-xl-3">
              <h5>Links</h5>
              <ul class="nav-list">
                <li><a href="#">About</a></li>
                <li><a href="#">Projects</a></li>
                <li><a href="<?php echo url('/')."/blog-list"; ?>">Blog</a></li>
                <li><a href="#">Contacts</a></li>
                <li><a href="#">Pricing</a></li>
              </ul>
            </div>
          </div>
        </div>
        <div class="row no-gutters social-container">
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-facebook"></span><span>Facebook</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-instagram"></span><span>instagram</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-twitter"></span><span>twitter</span></a></div>
          <div class="col"><a class="social-inner" href="#"><span class="icon mdi mdi-youtube-play"></span><span>google</span></a></div>
        </div>
      </footer>
    <!-- Bootstrap core JavaScript -->
    <script src="<?php echo url('/'); ?>/vendor/jquery/jquery.min.js"></script>
    <script src="<?php echo url('/'); ?>/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

  </body>

</html>
