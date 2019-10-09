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
					<label class='control-label col-sm-2'>Nama <span class='text-danger' title='This field is required'>*</span></label>
					<div class="col-sm-10">
						<input type='text' title="Nama" required class='form-control' name="name" id="name" value='{{ ($data ? $data->name : "") }}'/>
						<p class='help-block'>
							
						</p>
					</div>
				</div>
				<div class='form-group header-group-0 ' id='form-group-content' style="">
					<label class='control-label col-sm-2'>Testimoni <span class='text-danger' title='This field is required'>*</span></label>							
					<div class="col-sm-10">
						<textarea name="content" id="content" required maxlength=5000 class='form-control' rows='5'>{{ ($data ? $data->content : "") }}</textarea>
						<div class="text-danger"></div>
						<p class='help-block'>
							
						</p>
					</div>
				</div>			     
			</div>
			<div class="box-footer" style="background: #F5F5F5">  
				<div class="form-group">
					<label class="control-label col-sm-2"></label>
					<div class="col-sm-10">
						<button type="submit" name="submit" class="btn btn-success"><i class='fa fa-chevron-circle-left'></i> {{ ($data ? "Edit" : "Simpan") }}</button>
						@if($data)
						<a href='{{ CRUDBooster::mainPath("del") }}' class='btn btn-danger'><i class='fa fa-chevron-circle-left'></i> Hapus Testimoni</a>
						@endif
						<a href='http://localhost/pilkatos/public/admin/' class='btn btn-default'><i class='fa fa-chevron-circle-left'></i> Kembali ke Dashboard</a>
					</div>
				</div>
			</div>
		</form>
	</div>
</div>
@endsection