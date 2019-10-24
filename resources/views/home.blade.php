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
<section class="p-md-3 mx-md-5 text-center text-lg-left">
	<h2 class="text-center mx-auto font-weight-bold mb-4 pb-2">Kandidat Ketua OSIS Periode {{ $this_year }}/{{ $next_year }}</h2>
	<div class="row d-flex justify-content-center align-items-center">
		@foreach($candidate as $row)
		<div class="col-lg-4 mb-4">
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
