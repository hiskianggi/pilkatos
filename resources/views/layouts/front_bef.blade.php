<!doctype html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
  <!--SWEET ALERT-->
  <script src="{{ asset('vendor/crudbooster/assets/sweetalert/dist/sweetalert.min.js')}}"></script> 
  <link rel="stylesheet" type="text/css" href="{{ asset('vendor/crudbooster/assets/sweetalert/dist/sweetalert.css') }}">  
  <title>{{ $page_title}} | Pilkatos.tech</title>
  <style type="text/css">
    @import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro&display=swap');
    *{
      font-family: 'Source Sans Pro', sans-serif;
    }
    .card.profile-card {
      box-shadow: 0px 0px 20px #DFDFDF;
      border: none;
      border-radius: 0;
    }

    input.fab {
      display: none
    }

    figure {
      overflow: hidden
    }

    .img-profile {
      -webkit-clip-path: circle(50% at 56% 43%);;
      -moz-clip-path: circle(50% at 56% 43%);;
      clip-path: circle(50% at 56% 43%);;
      transform: translatez(0);
      transition: all .3s linear;
    }
    .profile-card .fab+.toggle {
      top: 55%;
      z-index: 10;
      right: 1rem;
      width: 50px;
      height: 50px;
      cursor: pointer;
      font-size: 2rem;
      line-height: 50px;
      text-align: center;
      border-radius: 50%;
      position: absolute;
      color: #fff;
      background: #F44336;
      -webkit-user-select: none;
      box-shadow: 0 4px 4px #666;
      transition: all 0.3s ease-in-out 0s;
    }

    body {
      background: #F1F3FA;
    }

    /* Profile container */
    .profile {
      margin: 20px 0;
    }

    /* Profile sidebar */
    .profile-sidebar {
      padding: 20px 0 10px 0;
      background: #fff;
    }

    .profile-userpic img {
      float: none;
      margin: 0 auto;
      width: 50%;
      height: 50%;
      -webkit-border-radius: 50% !important;
      -moz-border-radius: 50% !important;
      border-radius: 50% !important;
    }

    .profile-usertitle {
      text-align: center;
      margin-top: 20px;
    }

    .profile-usertitle-name {
      color: #5a7391;
      font-size: 16px;
      font-weight: 600;
      margin-bottom: 7px;
    }

    .profile-usertitle-job {
      text-transform: uppercase;
      color: #5b9bd1;
      font-size: 12px;
      font-weight: 600;
      margin-bottom: 15px;
    }

    .profile-userbuttons {
      text-align: center;
      margin-top: 10px;
    }

    .profile-userbuttons .btn {
      text-transform: uppercase;
      font-size: 11px;
      font-weight: 600;
      padding: 6px 15px;
      margin-right: 5px;
    }

    .profile-userbuttons .btn:last-child {
      margin-right: 0px;
    }

    .profile-usermenu {
      margin-top: 30px;
    }

    .profile-usermenu ul li {
      border-bottom: 1px solid #f0f4f7;
    }

    .profile-usermenu ul li:last-child {
      border-bottom: none;
    }

    .profile-usermenu ul li a {
      color: #93a3b5;
      font-size: 14px;
      font-weight: 400;
    }

    .profile-usermenu ul li a i {
      margin-right: 8px;
      font-size: 14px;
    }

    .profile-usermenu ul li a:hover {
      background-color: #fafcfd;
      color: #5b9bd1;
    }

    .profile-usermenu ul li.active {
      border-bottom: none;
    }

    .profile-usermenu ul li.active a {
      color: #5b9bd1;
      background-color: #f6f9fb;
      border-left: 2px solid #5b9bd1;
      margin-left: -2px;
    }

    /* Profile Content */
    .profile-content {
      padding: 20px;
      background: #fff;
      min-height: 460px;
    }

    .dashboard-stat, .portlet {
      -webkit-border-radius: 4px;
      -moz-border-radius: 4px;
      -ms-border-radius: 4px;
      -o-border-radius: 4px;
    }
    .portlet {
      margin-top: 0;
      margin-bottom: 25px;
      padding: 0;
      border-radius: 4px;
    }
    .portlet.bordered {
      border-left: 2px solid #e6e9ec!important;
    }
    .portlet.light {
      padding: 12px 20px 15px;
      background-color: #fff;
    }
    .portlet.light.bordered {
      border: 1px solid #e7ecf1!important;
    }
    .list-separated {
      margin-top: 10px;
      margin-bottom: 15px;
    }
    .profile-stat {
      padding-bottom: 20px;
      border-bottom: 1px solid #f0f4f7;
    }
    .profile-stat-title {
      color: #7f90a4;
      font-size: 25px;
      text-align: center;
    }
    .uppercase {
      text-transform: uppercase!important;
    }

    .profile-stat-text {
      color: #5b9bd1;
      font-size: 10px;
      font-weight: 600;
      text-align: center;
    }
    .profile-desc-title {
      color: #7f90a4;
      font-size: 17px;
      font-weight: 600;
    }
    .profile-desc-text {
      color: #7e8c9e;
      font-size: 14px;
    }
    .margin-top-20 {
      margin-top: 20px!important;
    }
    [class*=" fa-"]:not(.fa-stack), [class*=" glyphicon-"], [class*=" icon-"], [class^=fa-]:not(.fa-stack), [class^=glyphicon-], [class^=icon-] {
      display: inline-block;
      line-height: 14px;
      -webkit-font-smoothing: antialiased;
    }
    .profile-desc-link i {
      width: 22px;
      font-size: 19px;
      color: #abb6c4;
      margin-right: 5px;
    }
  </style>
</head>
<body>
  <nav class="navbar navbar-light navbar-expand-lg sticky-top shadow-lg bg-light text-white" style="background-image: linear-gradient(-90deg, #007BFF, #705ECF);">
    <a href="{{url('/')}}" class="navbar-brand text-white"><h3>Pilkatos.Tech</h3></a>
    <button type="button" data-toggle="collapse" data-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler"><span class="navbar-toggler-icon"></span></button>
    <div id="navbarHeader" class="collapse navbar-collapse">
      <ul class="navbar-nav ml-auto">

      </ul>
      <div class="navbar-text ml-lg-3">
        <a class="btn btn-light shadow"  href="#" onclick="swal({
        title: &quot;Kamu Belum Memilih Loh, Jangan Keluar Dulu. Yakin?&quot;,
        text: &quot;&quot;,
        type: &quot;warning&quot;,
        showCancelButton: true,
        confirmButtonColor: &quot;#3C8DBC&quot;,
        confirmButtonText: &quot;Ya!&quot;,
        cancelButtonText: &quot;Tidak&quot;,
        closeOnConfirm: false },
        function(){  location.href=&quot;{{ url('logout') }}&quot; });"><i class="fa fa-arrow-left"></i> Keluar</a>
      </div>
    </div>
  </nav>
  <div class="container">
    <div class="row pt-3" style="margin-bottom: -1rem;">
      <div class="col-12">
        <div class="alert alert-light" role="alert">
          <h4 class="alert-heading">Selamat Datang, {{ Auth::user()->name }} ^_^ </h4>
          <hr>
          <p class="mb-0">Silahkan Memilih Satu Dari Beberapa Kandidat Dibawah.</p>
        </div>
      </div>
    </div>
    @yield('content')
  </div>
  <div class="py-3 text-white bg-dark footer">
    <div class="container">
      <div class="row">
        <div class="col-md-7 text-center text-md-left">
          <p class="mb-md-0">&copy; 2019 Pilkatos. All rights reserved. </p>
        </div>
        <div class="col-md-5 text-center text-md-right">
          <p class="mb-0">Development By <a href="https://pilkatos.tech" class="external text-white">Pilkatos.Tech Team</a> </p>
        </div>
      </div>
    </div>
  </div>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js" integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy" crossorigin="anonymous"></script>
  @yield('script')
</body>
</html>