@extends('layouts.front')
@section('scripts')
<script type="text/javascript">
	$(document).ready(function(){

	});

	$(document).on("click", "#candidate", function () {
		var _token = '{{ csrf_token() }}';
		var users_id = {{ Auth::user()->id }};
		var candidate_id = $(this).attr('data-id');
		var candidate_name = $(this).attr('data-name');
		var cms_users_id = {{ Auth::user()->cms_users_id }};

		swal({
			title: "Yakin Ingin Memilih",
			text: candidate_name+" ?",
			type: "info",
			showCancelButton: true,
			closeOnConfirm: false,
			showLoaderOnConfirm: true
		}, function () {
			setTimeout(function () {
				$.ajax({
					type : "POST",
					url  : "{{ url('electy') }}",
					dataType : "JSON",
					data : {_token:_token,
						users_id:users_id,
						candidate_id:candidate_id,
						cms_users_id:cms_users_id
					},
					success: function(data){
						swal("Selamat!", "Anda Telah Memilih ^_^", "success");
						location.href="{{ url('logout') }}";
					},
					error: function(data) { 
						console.log(data);
					}
				});
			}, 2000);
		});
	});
</script>
@endsection
@section('content')
<section class="p-md-3 mx-md-3 text-center text-lg-left">
	<h2 class="text-center mx-auto font-weight-bold mb-4 pb-2">Kandidat Ketua OSIS Periode {{ $this_year }}/{{ $next_year }}</h2>
	<div class="row d-flex justify-content-center align-items-center">
		@foreach($candidate as $row)
		@if($candidate->count() == 4)
		<div class="col-lg-3 mb-4">
			@else
			<div class="col-lg-4 mb-4">
				@endif
				<div class="p-4">
					<div class="avatar w-100 white d-flex justify-content-center align-items-center">
						<img
						src="{{ url($row->photo) }}"
						class="img-fluid hoverable rounded-circle z-depth-1"
						id="candidate"
						data-id="{{ $row->id }}"
						data-name="{{ $row->name }}"
						/>
					</div>
					<div class="text-center mt-3">
						<h3 class="font-weight-bold pt-2">{{ $row->name }}</h3>
						<p class="font-weight-bold h5">
							{{ $row->class }}
						</p>
					</div>
				</div>
			</div>
			@endforeach
		</div>
	</section>
	@endsection
	@section('header')
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
@endsection