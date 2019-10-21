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
<div class="row">
	<div class="col-md-12">
		<div class="box box-default row_two">
			<div class="box-header ui-sortable-handle">
				<div class="row">
					<div class="col-md-9">
						<div class="box-header ui-sortable-handle" >
							<p class="box-title"><i class="fa fa-map-pin"></i> | Daftar Posisi Sekolah</p>
						</div>
					</div>
					<div class="col-md-3 search">
						<div class="box-tools pull-right">
							<div class="input-group">
								<input type="text" class="form-control" id="input_sales" onkeyup="return FilteringTrackingSales()" placeholder="Nama Sekolah" aria-describedby="basic-addon1">
								<span class="input-group-addon" id="basic-addon1"><i class="fa fa-users"></i></span>
							</div>
						</div>
					</div>
				</div>
				<div class="box-body">
					<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
					<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBXAlmy8YjaQWWJvGU77Hh-_R_wEPkkn7Y">
					</script>
					<div class="row">
						<div class="col-md-8">
							<div id="map"/></div>
						</div>
						<div class="col-md-4 sales_tracking">  
							<table class="table table-striped" id="result_sales_tracking" style="max-height: 400px !important;display: block;overflow-y: scroll">
								<thead>
									<tr>
										<th>No</th>
										<th>Name</th>
										<th>Status</th>
										<th>Detail</th>
									</tr>
								</thead>
								<tbody>
									@foreach($map as $data)
									<tr>
										<td>{{ $map+1 }}</td>
										<td>{{ $data->name }}</td>
										@if($data->status=='Active')
										<td><span style="color:green">Active</span></td>
										@else
										<td><span style="color:red">Non Active</span></td>
										@endif
										<td><a href="javascript:google.maps.event.trigger(gmarkers['{{ $data->id }}'],'click');" class="btn btn-xs btn-primary"><i class="fa fa-eye" title="Cari posisi sales"></i></a></td>
									</tr>
									@endforeach
								</tbody>
							</table>
						</div>
					</div>
					<script type="text/javascript">
						var locations = [
						@foreach($map as $item)
						[
						"{{$item->id}}",
						"<?php
						if($item->status=='Active'){
							$isi = 'Koordinator';
							$marker = '{!!asset("images/ic-marker-green.png")!!}';
						}else{
							$isi = 'Kanvaser';
							$marker = '{!!asset("images/ic-marker.png")!!}';
						}

						?>
						<div style='width:30%;height:90px;float:left;background-color:white;margin-top:-20px;z-index:10;position:relative'><img style='width:50px;height:50px;border-radius:100%;margin-right:8px;margin-top:20px;margin-right:60px' src='{{asset('/')}}{{$item->photo}}'></div><div style='width:70%;float:left;margin-bottom:16px'><span style='font-size:14px;font-weight:bold;color:#54667e'>{{$item->name}}</span><br><span>{{$isi}}</span><br><span>( {{date('d-m-Y H:i:s', strtotime($item->updated_at)) }} )</span></div>",
						"{{$item->ltd}}",
						"{{$item->lng}}",
						"{{$marker}}"
						],
						@endforeach
						];

						gmarkers = [];
						for(var a = 0; a < locations.length; a++){
							var image = {
                url: locations[a][4], // url
                scaledSize: new google.maps.Size(20, 30), // scaled size
            };
        }

        var map = new google.maps.Map(document.getElementById('map'),{
        	zoom: 12,
        	center: new google.maps.LatLng({{$first_lat}}, {{$first_long}}),
        	mapTypeId: google.maps.MapTypeId.ROADMAP
        });

        var infowindow = new google.maps.InfoWindow({
        	maxWidth: 280
        });

        function createMarker(latlng, html,icon) {
        	var marker = new google.maps.Marker({
        		position: latlng,
        		map: map,
        		icon: icon,
        	});

        	google.maps.event.addListener(marker, 'click', function(){
        		infowindow.setContent(html);
        		infowindow.open(map, marker);
        		map.setCenter(getPosition()); 
        		map.setZoom(10);
        	});

        	marker.addListener('mouseover', function(){
        		infowindow.setContent(html);
        		infowindow.open(map, marker);

        	});

              // assuming you also want to hide the infowindow when user mouses-out
              marker.addListener('mouseout', function(){
              	infowindow.close();
              });

              return marker;
          }

          for (var i = 0; i < locations.length; i++){
          	gmarkers[locations[i][0]] =
          	createMarker(new google.maps.LatLng(locations[i][2], locations[i][3]), locations[i][0] + "<br>" + locations[i][1], locations[i][4]);
          }
      </script>
  </div>
</div>
</div>
</div>
</div>
@endsection