@extends("crudbooster::admin_template")
@section('content')
<style type="text/css">
	.row-flex {
		display: flex;
		flex-wrap: wrap;
	}
</style>
<div class="row">
	<div class="col-md-12">
		<div class="box box-info">
			<div class="box-header with-border">
				<div class="row">
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box bg-aqua">
							<span class="info-box-icon"><i class="fa fa-bookmark-o"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Total Pemilih</span>
								<span class="info-box-number">{{ $total_voters }}</span>

								<div class="progress">
									<div class="progress-bar" style="width: 100%"></div>
								</div>
								<span class="progress-description">
									Siswa, Guru, & Karyawan
								</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box bg-green">
							<span class="info-box-icon"><i class="fa fa-thumbs-o-up"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Suara Masuk</span>
								<span class="info-box-number">{{ $in_come }}</span>

								<div class="progress">
									<div class="progress-bar" style="width: {{ $in_come_persen }}%"></div>
								</div>
								<span class="progress-description">
									{{ $in_come_persen }}% Dari Total Pemilih
								</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box bg-yellow">
							<span class="info-box-icon"><i class="fa fa-calendar"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Golput</span>
								<span class="info-box-number">{{ $golput }}</span>

								<div class="progress">
									<div class="progress-bar" style="width: {{ $golput_persen }}%"></div>
								</div>
								<span class="progress-description">
									{{ $golput_persen }}% Dari Total Pemilih
								</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
					<!-- /.col -->
					<div class="col-md-3 col-sm-6 col-xs-12">
						<div class="info-box bg-red">
							<span class="info-box-icon"><i class="fa fa-comments-o"></i></span>

							<div class="info-box-content">
								<span class="info-box-text">Suara Pemenang</span>
								<span class="info-box-number">[0]</span>

								<div class="progress">
									<div class="progress-bar" style="width: 0%"></div>
								</div>
								<span class="progress-description">
									[0]% Dari Total Pemilih
								</span>
							</div>
							<!-- /.info-box-content -->
						</div>
						<!-- /.info-box -->
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="row row-flex">
	<div class="col-xs-4">
		<div class="box box-widget widget-user-2">
			<!-- Add the bg color to the header using any of the bg-* classes -->
			<div class="widget-user-header bg-yellow">
				<div class="widget-user-image">
					<img class="img-circle" src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6YAZGBeKVKglAYLbtTTCPUOvdY_HCcmL0L1lJv1116G_8IaCE&s" alt="User Avatar">
				</div>
				<!-- /.widget-user-image -->
				<h3 class="widget-user-username">[ Maintenance ]</h3>
				<h5 class="widget-user-desc">Pemenang Ketua OSIS Periode 2019/2020</h5>
			</div>
			<div class="box-footer no-padding">
				<ul class="nav nav-stacked">
					<li><a href="#">Siswa <span class="pull-right badge bg-blue">0</span></a></li>
					<li><a href="#">Guru <span class="pull-right badge bg-aqua">0</span></a></li>
					<li><a href="#">Karyawan <span class="pull-right badge bg-green">0</span></a></li>
					<li><a href="#"><b>Jumlah</b> <span class="pull-right badge bg-red">0</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="col-xs-8">
		<div class="box box-info" style="height: 100%">
			<div class="box-header with-border">
				<h3 class="box-title">Statistik Perolehan Suara</h3>

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
								<th>Nama</th>
								<th>Kelas</th>
								<th>Jumlah Suara</th>
							</tr>
						</thead>
						<tbody>
							@foreach($statistic as $key => $s)
							<tr>
								<td>{{ $key+1 }}</td>
								<td>{{ $s->name }}</td>
								<td>{{ $s->class }}</td>
								<td>
									<b>{{ $s->total_vote }}</b> Suara
								</td>
							</tr>
							@endforeach
						</tbody>
					</table>
				</div>
				<!-- /.table-responsive -->
			</div>
			<!-- /.box-body -->
		</div>
	</div>
</div>
@endsection