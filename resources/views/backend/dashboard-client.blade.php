@extends("crudbooster::admin_template")
@section('content')
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

              <p>Suara Masuk</p>
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
  <div class="col-md-12">
    <div class="box box-info">
      <div class="box-header with-border">
        <canvas id="bar-chart"></canvas>
      </div>
    </div>
  </div>
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
