@extends("crudbooster::admin_template")
@section('content')
	<div class="callout callout-info">
		<h4><i class="fa fa-info"></i> Note:</h4>
		Selamat Datang {{ CRUDBooster::myName() }}! 
	</div>
<div class="row">
	<div class="col-md-3 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon bg-aqua"><i class="fa fa-home"></i></span>

			<div class="info-box-content">
				<span class="info-box-text">Sekolah</span>
				<span class="info-box-number">{{ CB::statisticDb(0) }}</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->
	<div class="col-md-3 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon bg-green"><i class="fa fa-user"></i></span>

			<div class="info-box-content">
				<span class="info-box-text">Pemilih</span>
				<span class="info-box-number">{{ CB::statisticDb(1) }}</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->
	<div class="col-md-3 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon bg-yellow"><i class="fa fa-user-secret"></i></span>

			<div class="info-box-content">
				<span class="info-box-text">Kandidat</span>
				<span class="info-box-number">{{ CB::statisticDb(2) }}</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->
	<div class="col-md-3 col-sm-6 col-xs-12">
		<div class="info-box">
			<span class="info-box-icon bg-red"><i class="fa fa-download"></i></span>

			<div class="info-box-content">
				<span class="info-box-text">Suara Masuk</span>
				<span class="info-box-number">{{ CB::statisticDb('anjaymabar') }}</span>
			</div>
			<!-- /.info-box-content -->
		</div>
		<!-- /.info-box -->
	</div>
	<!-- /.col -->
</div>
<!-- /.row -->
<div class="row">
	<div class="col-md-8">
		<div class="box box-warning">
			<div class="box-header with-border">
				<h3 class="box-title">Total Saldo</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					</button>
				</div>
				<!-- /.box-tools -->
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<center><h2>Rp800,000.00</h2></center>
			</div>
			<!-- /.box-body -->
		</div>
		<div class="box box-info">
			<div class="box-header with-border">
				<h3 class="box-title">Agenda Hari Ini</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<div class="table-responsive">
					<table class="table no-margin">
						<thead>
							<tr>
								<th>#</th>
								<th>Jam</th>
								<th>Judul</th>
								<th>Nama</th>
								<th>Desc</th>
								<th>File</th>
							</tr>
						</thead>
						<tbody>
							@foreach($agenda as $key => $a)
							<tr>
								<td>{{ $key + 1 }}</td>
								<td><span class="label label-danger">{{ $a->time_start }}</span> - <span class="label label-success">{{ $a->time_end }}</span></td>
								<td>{{ $a->title }}</td>
								<td>{{ $a->name }}</td>
								<td>{{ str_limit($a->description, 100) }}</td>
								<td>
									<?php
									if ($a->file == NULL) {
										$result = '<button disabled class="btn btn-warning btn-xs btn-document"><span class="fa fa-download"></span> File Not Found</button>';
									}else{
										$result = '<a href="'.url($a->file).'" class="btn btn-primary btn-xs btn-document"><span class="fa fa-download"></span> Download</a>';
									}
									echo $result;
									?>
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
				<!-- /.table-responsive -->
			</div>
			<!-- /.box-body -->
			<div class="box-footer clearfix">
				<a href="{{ CRUDBooster::adminPath('agenda/add') }}" class="btn btn-sm btn-info btn-flat pull-left">Tambah Agenda Baru</a>
				<a href="{{ CRUDBooster::adminPath('agenda') }}" class="btn btn-sm btn-default btn-flat pull-right">Agenda Lainnya</a>
			</div>
			<!-- /.box-footer -->
		</div>
	</div>
	<div class="col-md-4">

		<div class="box box-primary">
			<div class="box-header with-border">
				<h3 class="box-title">Sekolah Terbaru</h3>

				<div class="box-tools pull-right">
					<button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i>
					</button>
					<button type="button" class="btn btn-box-tool" data-widget="remove"><i class="fa fa-times"></i></button>
				</div>
			</div>
			<!-- /.box-header -->
			<div class="box-body">
				<ul class="products-list product-list-in-box">
					@foreach($new_users as $n)
					<li class="item">
						<div class="product-img">
							<img src="{{ url($n->photo) }}" alt="{{ $n->name }}">
						</div>
						<div class="product-info">
							<a href="javascript:void(0)" class="product-title">{{ $n->name }}
								@if($n->status == 'Active')
								<span class="label label-warning pull-right">{{ $n->status }}</span>
								@else
								<span class="label label-primary pull-right">{{ $n->status }}</span>
								@endif
							</a>
							<span class="product-description">
								Bergabung Pada {{ \Carbon\Carbon::parse($n->created_at)
								->format('d F Y') }}
							</span>
						</div>
					</li>
					@endforeach
				</ul>
			</div>
			<!-- /.box-body -->
			<div class="box-footer text-center">
				<a href="{{ CRUDBooster::adminPath('client') }}" class="uppercase">Lihat Semua Sekolah</a>
			</div>
			<!-- /.box-footer -->
		</div>
		<!-- /.box -->
	</div>
</div>
@endsection