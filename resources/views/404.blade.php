<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>404 Not Found</title>
  <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
  <!-- Bootstrap core CSS -->
  <link href="{{ asset('mdb/css/bootstrap.min.css') }}" rel="stylesheet">
  <!-- Material Design Bootstrap -->
  <link href="{{ asset('mdb/css/mdb.min.css') }}" rel="stylesheet">
  <!--SWEET ALERT-->
  <script src="{{ asset('vendor/crudbooster/assets/sweetalert/dist/sweetalert.min.js')}}"></script> 
  <link rel="stylesheet" type="text/css" href="{{ asset('vendor/crudbooster/assets/sweetalert/dist/sweetalert.css') }}">  
  <!-- Your custom styles (optional) -->
  <link href="{{ asset('mdb/css/style.css') }}" rel="stylesheet">
  <link href="{{ asset('mdb/stylesheet.css') }}" rel="stylesheet">
  <style>
    section {
      margin-top: 1rem !important;
      margin-bottom: 3rem !important;
    }

    footer {
      position: fixed;
      bottom: 0;
      width: 100%;
    }
    @media (max-width: 575.98px){
      #image-404{
        display: none;
      }
    }
  </style>
</head>

<body>


  <header>
    <nav class="navbar navbar-expand-lg navbar-light white">
      <div class="container">
        <button class="navbar-toggler float-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button> 
      <div class="collapse navbar-collapse justify-content-center" id="navbarSupportedContent">
        <ul class="navbar-nav">
          <li class="nav-item">
            <button class="btn btn-primary btn-sm" type="button"><i class="fa fa-magic mr-2"></i> Facebook</button>
          </li>
          <li class="nav-item">
            <button class="btn btn-info btn-sm" type="button"><i class="fa fa-magic mr-2"></i> Twitter</button>
          </li>
          <li class="nav-item">
            <button class="btn btn-success btn-sm" type="button"><i class="fa fa-magic mr-2"></i> Whatsapp</button>
          </li>
        </ul>
      </div>
    </div>
  </nav>
</header>

<main id="app" class="container my-4 py-4">

  <section class="px-md-5 mx-md-5 dark-grey-text">
    <div class="row">
      <div class="col-md-6 mb-4">
        <img src="{{ asset('images/pilkatos.png') }}"
        alt="Logo" width="90%">
        <h3 class="font-weight-bold mt-3">404 Not Found</h3>
        <p class="text-muted">Halaman Yang Anda Maksud Tidak Tersedia. Silahkan Kembali Ke Menu Utama.</p>
        <a class="btn blue-gradient btn-md ml-0 mt-4" href="https://pilkatos.tech" role="button">Kembali ke Web Utama<i class="fa fa-magic ml-2"></i></a>
      </div>
      <div class="col-md-6 mb-4" id="image-404">
        <div class="view overlay z-depth-1-half">
          <img src="https://4.bp.blogspot.com/-CqNByKzkEWU/WAPK6EQQPPI/AAAAAAAAEaA/1FLxGHF5SjkAjjzBAWz2asyi2-eE5RFIQCLcB/s1600/error-404.jpg" class="img-fluid"
          alt="">
          <a href="#">
            <div class="mask rgba-white-light"></div>
          </a>
        </div>
      </div>
    </div>
  </section>

</main>

<footer class="page-footer font-small blue"> 
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <a href="#"> Pilkatos.Tech</a>
  </div>
</footer>


<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="{{ asset('mdb/js/jquery-3.4.1.min.js') }}"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="{{ asset('mdb/js/popper.min.js') }}"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="{{ asset('mdb/js/bootstrap.min.js') }}"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="{{ asset('mdb/js/mdb.min.js') }}"></script>
<script type="text/javascript" src="{{ asset('mdb/main.js') }}"></script>
</body>

</html>
