@extends("crudbooster::admin_template")
@section('content')
<div class="row">
  <div class="col-md-6">
    <div class="callout callout-info callout-dismissible">
      <h4><i class="fa fa-pencil"></i> Note:</h4>
      <strong>Selamat Datang {{ CRUDBooster::myName() }}!</strong>
    </div>
  </div>
  <div class="col-md-6">
    <div class="callout callout-warning callout-dismissible">
      <h4><i class="fa fa-info"></i> Info:</h4>
      <marquee><strong>Saat Ini Sistem Pilkatos.Tech Masih Dalam Versi BETA, Jika Ada Masalah/Bug Bisa Hubungi Kami Melalui Live Chat Dibawah. Terimakasih!</strong></marquee>
    </div>
  </div>
</div>
<!-- Small boxes (Stat box) -->
<div class="row">
  <div class="col-md-12">
    <div class="box box-info">
      <div class="box-header with-border">
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-aqua">
            <div class="inner">
              <h3>{{$j_kandidat}}</h3>

              <p>Kandidat</p>
            </div>
            <div class="icon">
              <i class="ion ion-bag"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-green">
            <div class="inner">
              <h3>{{$pemilih}}</h3>

              <p>Pemilih</p>
            </div>
            <div class="icon">
              <i class="ion ion-stats-bars"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-yellow">
            <div class="inner">
              <h3>{{$suara_masuk}}</h3>

              <p>Hak Suara</p>
            </div>
            <div class="icon">
              <i class="ion ion-person-add"></i>
            </div>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-3 col-xs-6">
          <!-- small box -->
          <div class="small-box bg-red">
            <div class="inner">
              <h3>{{$golput}}</h3>

              <p>Golput</p>
            </div>
            <div class="icon">
              <i class="ion ion-pie-graph"></i>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
  <!-- ./col -->
</div>
<!-- /.row -->
<div class="row">
  <div class="col-md-8">
    <div class="box box-info">
      <div class="box-header with-border">
        <canvas id="bar-chart"></canvas>
      </div>
    </div>
  </div>
  <div class="col-md-4">
    <div class="box box-widget widget-user">
      <!-- Add the bg color to the header using any of the bg-* classes -->
      <div class="widget-user-header bg-aqua-active">
        <h3 class="widget-user-username">{{ CRUDBooster::myName() }}</h3>
        <h5 class="widget-user-desc">Jumlah Pemilih</h5>
      </div>
      <div class="widget-user-image">
        <img class="img-circle" src="{{ CRUDBooster::myPhoto() }}" alt="User Avatar">
      </div>
      <div class="box-footer">
        <div class="row">
          <div class="col-sm-4 border-right">
            <div class="description-block">
              <h5 class="description-header">{{ CB::countVoters(0) }}</h5>
              <span class="description-text">Siswa</span>
            </div>
            <!-- /.description-block -->
          </div>
          <!-- /.col -->
          <div class="col-sm-4 border-right">
            <div class="description-block">
              <h5 class="description-header">{{ CB::countVoters(1) }}</h5>
              <span class="description-text">Guru</span>
            </div>
            <!-- /.description-block -->
          </div>
          <!-- /.col -->
          <div class="col-sm-4">
            <div class="description-block">
              <h5 class="description-header">{{ CB::countVoters(2) }}</h5>
              <span class="description-text">Karyawan</span>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="box box-info">
      <div class="box-header with-border">
        <h3 class="box-title">Progress</h3>
      </div>
      <div class="box-body no-padding">
        <table class="table table-striped">
          <tr>
            <th>Title</th>
            <th>Progress</th>
            <th style="width: 40px">(%)</th>
          </tr>
          <tr>
            <td>Siswa</td>
            <td>
              <div class="progress progress-xs">
                <div class="progress-bar progress-bar-info{{(CB::progressElection(0) == 100) ? '' : ' active'}}" style="width: {{ CB::progressElection(0) }}%"></div>
              </div>
            </td>
            <td><span class="badge bg-red">{{ CB::progressElection(0) }}%</span></td>
          </tr>
          <tr>
            <td>Guru</td>
            <td>
              <div class="progress progress-xs">
                <div class="progress-bar progress-bar-primary{{(CB::progressElection(1) == 100) ? '' : ' active'}}" style="width: {{ CB::progressElection(1) }}%"></div>
              </div>
            </td>
            <td><span class="badge bg-yellow">{{ CB::progressElection(1) }}%</span></td>
          </tr>
          <tr>
            <td>Karyawan</td>
            <td>
              <div class="progress progress-xs progress-striped{{(CB::progressElection(2) == 100) ? '' : ' active'}}">
                <div class="progress-bar progress-bar-danger" style="width: {{ CB::progressElection(2) }}%"></div>
              </div>
            </td>
            <td><span class="badge bg-light-blue">{{ CB::progressElection(2) }}%</span></td>
          </tr>
        </table>
      </div>
    </div>
    <!-- <div class="box box-info">
      <div class="box-header with-border">
        <h3 class="box-title">Progress</h3>
      </div>
      <div class="box-body no-padding">
        <iframe src="https://tawk.to/chat/5daebaa578ab74187a5adbe7/default" style="border: 0px;width: 100%;height: 300px;" scrolling="no"></iframe>
      </div>
    </div> -->
  </div>
  <script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0/dist/Chart.min.js"></script>
  <script>
    new Chart(document.getElementById("bar-chart"), {
      type: 'bar',
      data: {
        datasets: [
        @foreach($kandidat as $k)
        {
         label: '{{$k->name}}',
         data: [{{$k->total}}],
         backgroundColor: ['{{$k->color}}']
       },
       @endforeach

       ]
     },
     options: {
      tooltips: {
        callbacks: {
         title: function() {}
       }
     },
     scales: {
      xAxes: [{
        barPercentage: 0.4
      }],
      yAxes: [{
       ticks: {
         beginAtZero: true,
         userCallback: function(label, index, labels) {
                     // when the floored value is the same as the value we have a whole number
                     if (Math.floor(label) === label) {
                       return label;
                     }

                   },
                 }
               }]
             },
             title: {
              display: true,
              text: 'Statistik Hasil Pemilihan Ketua OSIS Periode 2019/2020'
            },

          }
        });
      </script>
      @endsection
