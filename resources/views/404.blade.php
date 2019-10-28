@extends('layouts.front')
@section('header')
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
@endsection
@section('content')
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
@endsection