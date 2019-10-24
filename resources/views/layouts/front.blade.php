<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>{{ $page_title }}</title>
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
  </style>
</head>
<body>
  <header>
    <nav class="navbar fixed-top navbar-expand-lg navbar-light white scrolling-navbar">
      <div class="container">
        <a class="navbar-brand waves-effect" href="#" target="_blank">
          <img class="mr-2" src="{{ asset('images/logo.png')}}" alt="Logo"> PILKATOS.TECH
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
        </ul>
        <ul class="navbar-nav nav-flex-icons">
          <li class="nav-item">
            <a href="javascript:void(0)" class="nav-link border border-light rounded waves-effect mr-2" id="logout">
            <i class="fas fa-sign-out-alt mr-1"></i> Log Out
          </a>
        </li>
      </ul>
    </div>
  </div>
</nav>
<div class="card card-intro blue-gradient">
  <div class="card-body white-text text-center">
    <div class="row d-flex justify-content-center">
      <div class="col-md-6">
        <p class="h5 mb-2 mt-4">
          Selamat Datang, {{ Auth::user()->name }}!
        </p>
        <p class="mb-0">Silahkan Memilih Salah Satu Kandidat Ketua OSIS Periode {{ $this_year }}/{{ $next_year }} Dibawah ^_^</p>
        <p class="mt-5"><button type="button" class="btn btn-outline-light" data-toggle="modal" data-target="#tutorialPenggunaan"><i class="fas fa-magic mr-1"></i> Tutorial Penggunaan</button></p>
        <div class="modal fade right" id="tutorialPenggunaan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel"
        aria-hidden="true" data-backdrop="false">
        <div class="modal-dialog modal-full-height modal-right modal-notify modal-info" role="document">
          <!--Content-->
          <div class="modal-content">
            <!--Header-->
            <div class="modal-header">
              <p class="heading lead">Tutorial Penggunaan</p>

              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true" class="white-text">&times;</span>
              </button>
            </div>

            <!--Body-->
            <div class="modal-body">
              <div class="text-center">
                <i class="fa fa-info-circle fa-4x mb-3 animated rotateIn"></i>
              </div>
              <div class="text-justify">
                <p class="h3">Tutorial Penggunaan :</p>
                <p>
                  <ol>
                    <li>Klik Salah Satu Foto Kandidat Ketua OSIS Dibawah.</li>
                    <li>Nanti Akan Muncul Peringatan, Jika Anda Yakin Bahwa Itu Pilihan Anda, Silahkan Konfirmasi Dengan Klik Tombol "YA", Jika Masih Ragu - Ragu atau Belum Yakin, Silahkan Konfirmasi Dengan Klik Tombol "NO"</li>
                    <li>
                      Jika Anda Menekan Tombol "YA", Maka Anda Otomatis Log Out dan Halaman Website Akan Teralihkan ke Menu Login.
                    </li>
                  </ol>
                </p>
              </div>
            </div>

            <!--Footer-->
            <div class="modal-footer justify-content-center">
              <a role="button" class="btn btn-outline-secondary waves-effect" data-dismiss="modal"><i class="fa fa-sign-out-alt mr-1"></i> Tutup</a>
            </div>
          </div>
          <!--/.Content-->
        </div>
      </div>
    </div>
  </div>
</div>
</div>
</header>
<main id="app" class="container my-2 py-2">
  @yield('content')
</main>

<footer class="page-footer font-small blue"> 
  <div class="footer-copyright text-center py-3">© 2019 Copyright:
    <a href="#"> Pilkatos [dot] Tech.</a>
  </div>
</footer>

<!-- SCRIPTS -->
<!-- JQuery -->
<script type="text/javascript" src="mdb/js/jquery-3.4.1.min.js"></script>
<!-- Bootstrap tooltips -->
<script type="text/javascript" src="mdb/js/popper.min.js"></script>
<!-- Bootstrap core JavaScript -->
<script type="text/javascript" src="mdb/js/bootstrap.min.js"></script>
<!-- MDB core JavaScript -->
<script type="text/javascript" src="mdb/js/mdb.min.js"></script>
<script type="text/javascript" src="mdb/main.js"></script>
@yield('scripts')

</body>

</html>
