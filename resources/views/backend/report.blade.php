@extends("crudbooster::admin_template")
@section('content')
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
								<span class="info-box-number">{{ $winner_votes }}</span>

								<div class="progress">
									<div class="progress-bar" style="width: {{ $winner_votes_persen }}%"></div>
								</div>
								<span class="progress-description">
									{{ $winner_votes_persen }}% Dari Total Pemilih
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
<div class="row">
	<div class="col-md-4">
		<div class="box box-widget widget-user-2">
			<!-- Add the bg color to the header using any of the bg-* classes -->
			<div class="widget-user-header bg-yellow">
				<div class="widget-user-image">
					<img class="img-circle" src="../dist/img/user7-128x128.jpg" alt="User Avatar">
				</div>
				<!-- /.widget-user-image -->
				<h3 class="widget-user-username">Nadia Carmichael</h3>
				<h5 class="widget-user-desc">Pemenang Ketua OSIS Periode 2019/2020</h5>
			</div>
			<div class="box-footer no-padding">
				<ul class="nav nav-stacked">
					<li><a href="#">Siswa <span class="pull-right badge bg-blue">31</span></a></li>
					<li><a href="#">Guru <span class="pull-right badge bg-aqua">5</span></a></li>
					<li><a href="#">Karyawan <span class="pull-right badge bg-green">12</span></a></li>
					<li><a href="#"><b>Jumlah</b> <span class="pull-right badge bg-red">12</span></a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="col-md-8">
		<div class="box box-info">
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
							<tr>
								<td>#1</td>
								<td>Call of Duty IV</td>
								<td>XII RPL</td>
								<td>
									<b>29</b> Suara
								</td>
							</tr>
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