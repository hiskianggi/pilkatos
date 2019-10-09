@extends("crudbooster::admin_template")
@section('content')
<div class="panel panel-default">
	<div class="panel-heading">
		<strong><i class='fa fa-gears'></i> {{ $page_title }}</strong>
	</div> 

	<div class="panel-body" style="padding:20px 0px 0px 0px">
		@if(Session::has('message-success'))
		<div class="alert alert-success" role="alert" style="margin: 10px 20px">
			{{ Session::get('message-success')}}
		</div>
		@endif
		<form class='form-horizontal' method='post' id="form" enctype="multipart/form-data" action='{{ CRUDBooster::mainPath("data") }}'>
			{{ csrf_field() }}
			<div class="box-body">
				<div class='form-group header-group-0'>
					<label class='control-label col-sm-2'>Path to Login <span class='text-danger' title='This field is required'>*</span></label>
					<div class="col-sm-10">
						<input type='text' title="Nama Sekolah" required class='form-control' name="path" id="path" value='{{ $detail->path }}'/>
						<p class='help-block'>
							@if($detail->path)
							<a href="{{ url($detail->path.'/login') }}">Klik Disini Untuk Melihat Tampilan Login</a>
							@endif
						</p>
					</div>
				</div>
				<div class='form-group header-group-0'>
					<label class='control-label col-sm-2'>Background Login <span class='text-danger' title='This field is required'>*</span></label>
					<div class="col-sm-10">
						@if($background->photo)
						<p><a data-lightbox='roadtrip' href='{{ url($background->photo) }}'><img style='max-width:160px' title="Image For Background Login" src='{{ url($background->photo) }}'/></a></p>
						@endif
						<input type='file' title="Background Login" required class='form-control' name="photo" id="photo" value=''/>
						<p class='help-block'>File types support : JPG, JPEG, PNG, GIF, BMP. HD Resolution. Kosongkan Jika Anda Tidak Ingin Merubah Apapun.</p>
					</div>
				</div>
			</div>
			<div class="box-footer" style="background: #F5F5F5">  
				<div class="form-group">
					<label class="control-label col-sm-2"></label>
					<div class="col-sm-10">
						<input type="submit" name="submit" value='Simpan' class='btn btn-success'>
						<a href='http://localhost/pilkatos/public/admin/' class='btn btn-default'><i class='fa fa-chevron-circle-left'></i> Kembali ke Dashboard</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection