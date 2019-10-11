@extends('crudbooster::admin_template')
@section('content')
@if(g('return_url'))
<p><a title='Return' href='{{ g("return_url") }}'><i class='fa fa-chevron-circle-left '></i> &nbsp; Kembali</a></p>     
@endif
<div class='panel panel-default'>
  <div class='panel-heading'><strong><i class='fa fa-user'></i> {{ $page_title }}</strong></div>
  <div class='panel-body'>
    <div class="row">
      <div class="col-md-8" style="padding: 5rem;">
        <table id='table-detail' class='table table-striped'>
          <tr>
            <td>
              @if($row->type == 0)
              Kode / NIS
              @elseif($row->type == 1)
              Kode Guru
              @else
              Kode Karyawan
              @endif
            </td>
            <td>{{ $row->username }}</td>
          </tr>
          @if($row->email != NULL)
          <tr>
            <td>Email</td>
            <td>{{ $row->email }}</td>
          </tr>
          @endif
          <tr>
            <td>Nama</td>
            <td>{{ $row->name }}</td>
          </tr>
          @if($row->type == 0)
          <tr>
            <td>Kelas</td>
            <td>{{ $row->class }}</td>
          </tr>
          @endif
          <tr>
            <td>Sekolah</td>
            <td>{{ $row->school }}</td>
          </tr>
        </table>
      </div>
      <div class="col-md-4">
        <center>
          <img src="data:image/png;base64, {!! base64_encode($image) !!} ">
        </center>
      </div>
    </div>
  </div>
</div>
@endsection