@extends('layouts.front')
@section('script')
<script type="text/javascript">
	$(document).ready(function(){
		$('#fab').click(function(){
			var data = $('#fab').attr('val');
			alert(data);
		});
	});
</script>
@endsection
@section('content')
<div class="row profile">
	<div class="col-md-3 py-3">
		<div class="profile-sidebar">
			<div class="profile-userpic">
				<center>
					<img src="https://pngimage.net/wp-content/uploads/2018/06/user-png-images-4.png" class="img-responsive" alt="">
				</center>
			</div>
			<!-- SIDEBAR USER TITLE -->
			<div class="profile-usertitle">
				<div class="profile-usertitle-name">
					{{ $user->name }}
				</div>
				<div class="profile-usertitle-job">
					@if($user->type == 0)
						<?php
							$class = DB::table('users')
							->select('class.name')
							->join('class','users.class_id','=','class.id')
							->where('users.id', $user->id)
							->first();

							echo $class->name;
						?>
					@elseif($user->type == 1)
						Guru
					@else
						Karyawan
					@endif
				</div>
			</div>
			<!-- END SIDEBAR USER TITLE -->
			<!-- SIDEBAR BUTTONS -->
			<div class="profile-userbuttons">
				<a href="#" onclick="swal({
				title: &quot;Kamu Belum Memilih Loh, Jangan Keluar Dulu. Yakin?&quot;,
				text: &quot;&quot;,
				type: &quot;warning&quot;,
				showCancelButton: true,
				confirmButtonColor: &quot;#3C8DBC&quot;,
				confirmButtonText: &quot;Ya!&quot;,
				cancelButtonText: &quot;Tidak&quot;,
				closeOnConfirm: false },
				function(){  location.href=&quot;{{ url('logout') }}&quot; });" class="btn btn-danger btn-sm mb-3"><i class="fa fa-arrow-left"></i> Keluar</a>
			</div>
			<!-- END SIDEBAR BUTTONS -->            
		</div>
	</div>
	<div class="col-md-9">
		<div class="row flex-items-center">
			@foreach($candidate as $row)
			<div class="col-6 col-md-4 clearfix py-3">
				<div class="card profile-card">
					<figure>
						<input id="fab" type="button" class="fab" val="{{ $row->id }}"><label for="fab" class="toggle"><i class="fa fa-telegram"></i></label>
						<img src="{{ url($row->photo) }}" class="img-fluid img-profile" alt="Card image" style="max-width: 320px">
					</figure>
					<div class="card-block text-xs-center">
						<p class="h4 card-title font-weight-bold ml-3">{{ $row->name }}</p>
						<p class="h6 card-subtitle text-muted ml-3">{{ $row->class }}</p><br>
					</div>
				</div>
			</div>
			@endforeach
		</div>
	</div>
</div>
@endsection
