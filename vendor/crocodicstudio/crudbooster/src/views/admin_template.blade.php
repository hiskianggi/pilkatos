<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>{{ ($page_title)?CRUDBooster::getSetting('appname').': '.strip_tags($page_title):"Admin Area" }}</title>
  <meta name="csrf-token" content="{{ csrf_token() }}" />
  <meta name='generator' content='CRUDBooster 5.3'/>
  <meta name='robots' content='noindex,nofollow'/>
  <link rel="shortcut icon" href="{{ CRUDBooster::getSetting('favicon')?asset(CRUDBooster::getSetting('favicon')):asset('vendor/crudbooster/assets/logo_crudbooster.png') }}">
  <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>

  @include('crudbooster::admin_template_plugins')

  <!-- Theme style -->
  <link href="{{ asset("vendor/crudbooster/assets/adminlte/dist/css/AdminLTE.min.css")}}" rel="stylesheet" type="text/css" />    
  <link href="{{ asset("vendor/crudbooster/assets/adminlte/dist/css/skins/_all-skins.min.css")}}" rel="stylesheet" type="text/css" />

  <!-- support rtl-->
  @if (App::getLocale() == 'ar')
  <link rel="stylesheet" href="//cdn.rawgit.com/morteza/bootstrap-rtl/v3.3.4/dist/css/bootstrap-rtl.min.css">
  <link href="{{ asset("vendor/crudbooster/assets/rtl.css")}}" rel="stylesheet" type="text/css" />
  @endif

  <!-- load css -->
  <style type="text/css">
    @if($style_css)
    {!! $style_css !!}
    @endif
  </style>
  @if($load_css)
  @foreach($load_css as $css)
  <link href="{{$css}}" rel="stylesheet" type="text/css" />
  @endforeach
  @endif

  <!-- load js -->
  <script type="text/javascript">
    var site_url = "{{url('/')}}" ;
    @if($script_js)
    {!! $script_js !!}
    @endif 
  </script>
  @if($load_js)
  @foreach($load_js as $js)
  <script src="{{$js}}"></script>
  @endforeach
  @endif
  <style type="text/css">
    .dropdown-menu-action {left:-130%;}
    .btn-group-action .btn-action {cursor: default}
    #box-header-module {box-shadow:10px 10px 10px #dddddd;}
    .sub-module-tab li {background: #F9F9F9;cursor:pointer;}
    .sub-module-tab li.active {background: #ffffff;box-shadow: 0px -5px 10px #cccccc}
    .nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {border:none;}
    .nav-tabs>li>a {border:none;}                
    .breadcrumb {
      margin:0 0 0 0;
      padding:0 0 0 0;
    }
    .form-group > label:first-child {display: block}

  </style>
</head>
<body class="@php echo (Session::get('theme_color'))?:'skin-blue'; echo config('crudbooster.ADMIN_LAYOUT') @endphp">
  <div id='app' class="wrapper">    

    <!-- Header -->
    @include('crudbooster::header')

    <!-- Sidebar -->
    @include('crudbooster::sidebar')

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

      <section class="content-header">
        <?php 
        $module = CRUDBooster::getCurrentModule();
        ?>
        @if($module)
        <h1>
          <i class='{{$module->icon}}'></i>  {{($page_title)?:$module->name}} &nbsp;&nbsp;

          <!--START BUTTON -->         

          @if(CRUDBooster::getCurrentMethod() == 'getIndex')
          @if($button_show)
          <a href="{{ CRUDBooster::mainpath().'?'.http_build_query(Request::all()) }}" id='btn_show_data' class="btn btn-sm btn-primary" title="{{trans('crudbooster.action_show_data')}}">
            <i class="fa fa-table"></i> {{trans('crudbooster.action_show_data')}}
          </a>
          @endif

          @if($button_add && CRUDBooster::isCreate())                          
          <a href="{{ CRUDBooster::mainpath('add').'?return_url='.urlencode(Request::fullUrl()).'&parent_id='.g('parent_id').'&parent_field='.$parent_field }}" id='btn_add_new_data' class="btn btn-sm btn-success" title="{{trans('crudbooster.action_add_data')}}">
            <i class="fa fa-plus-circle"></i> {{trans('crudbooster.action_add_data')}}
          </a>
          @endif                          
          @endif


          @if($button_export && CRUDBooster::getCurrentMethod() == 'getIndex')
          <a href="javascript:void(0)" id='btn_export_data' data-url-parameter='{{$build_query}}' title='Export Data' class="btn btn-sm btn-primary btn-export-data">
            <i class="fa fa-upload"></i> {{trans("crudbooster.button_export")}}
          </a>
          @endif

          @if($button_import && CRUDBooster::getCurrentMethod() == 'getIndex')
          <a href="{{ CRUDBooster::mainpath('import-data') }}" id='btn_import_data' data-url-parameter='{{$build_query}}' title='Import Data' class="btn btn-sm btn-primary btn-import-data">
            <i class="fa fa-download"></i> {{trans("crudbooster.button_import")}}
          </a>
          @endif
          <?php
          $school = DB::table('cms_users')
          ->where('id','!=',1)
          ->where('status','Active')
          ->get()
          ?>
          @if(Request::segment(2)=='statistic' && CRUDBooster::getCurrentMethod() == 'getIndex')
          <button data-toggle="modal" data-target="#statisticSchool" class="btn btn-primary btn-sm"><i class="fa fa-upload"></i>&nbsp; Cek Statistik Sekolah</button>
          <div class="modal fade in" tabindex="-1" role="dialog" id="statisticSchool">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button class="close" type="button" data-dismiss="modal"><span aria-hidden="true">x</span></button>
                  <h4 class="modal-title"><i class="fa fa-download"></i> &nbsp; Cek Statistik Sekolah</h4>
                </div>
                <form action="{{ CRUDBooster::mainPath() }}" method="GET" enctype="multipart/form-data">
                  <div class="modal-body">
                    <div class="form-group">
                      <label style="font-size: 14px;">Sekolah</label>
                      <select class="form-control select2" name="id" required="">
                        <option selected="" disabled="">== PILIH SEKOLAH ==</option>
                        @foreach($school as $s)
                        <option value="{{ $s->id }}">{{ $s->name }}</option>
                        @endforeach
                      </select>
                    </div>
                  </div>
                  <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
                    <button class="btn btn-primary" type="submit">Submit</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          @endif
          @if(Request::segment(2)=='student' && CRUDBooster::getCurrentMethod() == 'getIndex' || Request::segment(2)=='teachers' && CRUDBooster::getCurrentMethod() == 'getIndex' || Request::segment(2)=='employee' && CRUDBooster::getCurrentMethod() == 'getIndex')
          <button data-toggle="modal" data-target="#importData" class="btn btn-primary btn-sm"><i class="fa fa-upload"></i>&nbsp; Import Data</button>
          <div class="modal fade in" tabindex="-1" role="dialog" id="importData">
            <div class="modal-dialog">
              <div class="modal-content">
                <div class="modal-header">
                  <button class="close" type="button" data-dismiss="modal"><span aria-hidden="true">x</span></button>
                  <h4 class="modal-title"><i class="fa fa-download"></i> &nbsp; Import Data {{ $page_title }} From Excel</h4>
                </div>
                <form action="{{ CRUDBooster::mainPath('import-data') }}" method="POST" enctype="multipart/form-data">
                  {{ csrf_field() }}
                  <div class="modal-body">
                    <div class="form-group">
                      <label style="font-size: 14px;">Import File</label>
                      <input type="file" name="importdata" class="form-control" required="">
                      <p class='help-block' style="font-size: 14px;">Contoh Format Pengisian -> <a href="{{ asset('import/example.xlsx') }}">Download</a></p>
                    </div>
                    @if(CRUDBooster::myId() == 1)
                    <div class="form-group">
                      <label style="font-size: 14px;">Sekolah</label>
                      <select class="form-control" name="cms_users_id" id="cms_users_id" required="">
                        <option selected="" disabled="">== PILIH SEKOLAH ==</option>
                        @foreach($school as $s)
                        <option value="{{ $s->id }}">{{ $s->name }}</option>
                        @endforeach
                      </select>
                    </div>
                    @endif
                  </div>
                  <div class="modal-footer">
                    <button class="btn btn-default" type="button" data-dismiss="modal">Close</button>
                    <button class="btn btn-primary" type="submit">Submit</button>
                  </div>
                </form>
              </div>
            </div>
          </div>
          @if(CRUDBooster::myPrivilegeId() == 1)
          <button class="btn btn-sm btn-warning btn-fill" data-toggle="modal" data-target="#printCard"><i class="fa fa-download"></i> Print Card</button>

          <div id="printCard" class="modal fade" role="dialog">
            <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content">
                <form autocomplete="off" method="post" action="{{ CRUDBooster::mainpath('printcard') }}" enctype="multipart/form-data">
                  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Pilih Sekolah</h4>
                  </div>
                  <div class="modal-body">
                    <select class="form-control" name="cms_users_id" id="cms_users_id" required="">
                      <option selected="" disabled="">== PILIH SEKOLAH ==</option>
                      @foreach($school as $s)
                      <option value="{{ $s->id }}">{{ $s->name }}</option>
                      @endforeach
                    </select>
                  </div>

                  <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Kirim</button>
                  </div>

                </form>
              </div>

            </div>
          </div>

          <button class="btn btn-sm btn-danger btn-fill" data-toggle="modal" data-target="#sendEmailAll"><i class="fa fa-inbox"></i> Kirim Semua Email</button>

          <div id="sendEmailAll" class="modal fade" role="dialog">
            <div class="modal-dialog">
              <!-- Modal content-->
              <div class="modal-content">
                <form autocomplete="off" method="post" action="{{ CRUDBooster::mainpath('send-all-email') }}" enctype="multipart/form-data">
                  <input type="hidden" name="_token" value="{{ csrf_token() }}" />
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Pilih Sekolah</h4>
                  </div>
                  <div class="modal-body">
                    <?php
                    $with_email = DB::table('cms_users')
                    ->where('id','!=',1)
                    ->where('with_email',1)
                    ->get()
                    ?>
                    <select class="form-control" name="cms_users_id" id="cms_users_id" required="">
                      <option selected="" disabled="">== PILIH SEKOLAH ==</option>
                      @foreach($with_email as $s)
                      <option value="{{ $s->id }}">{{ $s->name }}</option>
                      @endforeach
                    </select>
                  </div>

                  <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Kirim</button>
                  </div>

                </form>
              </div>

            </div>
          </div>
          @else
          <a href="{{ CRUDBooster::mainpath('printcard') }}" id='btn_import_data' title='Print Card' class="btn btn-sm btn-warning">
            <i class="fa fa-download"></i> Print Card
          </a>
          @if(CB::checkSecurity() == 1)
          <a href="{{ CRUDBooster::mainpath('send-all-email') }}" id='btn_all_email' title='Send All Email' class="btn btn-sm btn-danger">
            <i class="fa fa-inbox"></i> Send All Email
          </a>
          @endif
          @endif
          @endif
          @if(Request::segment(2)=='golput' && CRUDBooster::getCurrentMethod() == 'getIndex')
          <a href="{{ CRUDBooster::mainpath() }}?filter=students" title='Filter Berdasarkan Siswa' class="btn btn-sm btn-info">
            <i class="fa fa-user"></i> Siswa
          </a>
          <a href="{{ CRUDBooster::mainpath() }}?filter=teachers" title='Filter Berdasarkan Guru' class="btn btn-sm btn-success">
            <i class="fa fa-user-plus"></i> Guru
          </a>
          <a href="{{ CRUDBooster::mainpath() }}?filter=employees" title='Filter Berdasarkan Karyawan' class="btn btn-sm btn-warning">
            <i class="fa fa-users"></i> Karyawan
          </a>
          @if(g('filter'))
          <a href="{{ CRUDBooster::mainpath() }}" title='Reset Filter' class="btn btn-sm btn-danger">
            <i class="fa fa-list"></i> Reset Filter
          </a>
          @endif
          @endif
          @if(Request::segment(2)=='finance' && CRUDBooster::getCurrentMethod() == 'getIndex')
          <a href="{{ CRUDBooster::mainpath() }}?type=in" title='Filter Pemasukan' class="btn btn-sm btn-primary">
            <i class="fa fa-plus"></i> IN
          </a>
          <a href="{{ CRUDBooster::mainpath() }}?type=out" title='Filter Pengeluaran' class="btn btn-sm btn-danger">
            <i class="fa fa-minus"></i> OUT
          </a>
          @if(g('type'))
          <a href="{{ CRUDBooster::mainpath() }}" title='Reset Filter' class="btn btn-sm btn-warning">
            <i class="fa fa-list"></i> Reset Filter
          </a>
          @endif
          @endif

          <!--ADD ACTIon-->
          @if($index_button)                          

          @foreach($index_button as $ib)
          <a href='{{$ib["url"]}}' id='{{str_slug($ib["label"])}}' class='btn {{($ib['color'])?'btn-'.$ib['color']:'btn-primary'}} btn-sm' 
          @if($ib['onClick']) onClick='return {{$ib["onClick"]}}' @endif
          @if($ib['onMouseOever']) onMouseOever='return {{$ib["onMouseOever"]}}' @endif
          @if($ib['onMoueseOut']) onMoueseOut='return {{$ib["onMoueseOut"]}}' @endif
          @if($ib['onKeyDown']) onKeyDown='return {{$ib["onKeyDown"]}}' @endif
          @if($ib['onLoad']) onLoad='return {{$ib["onLoad"]}}' @endif
          >
          <i class='{{$ib["icon"]}}'></i> {{$ib["label"]}}
        </a>
        @endforeach                                                          
        @endif
        <!-- END BUTTON -->
      </h1>


      <ol class="breadcrumb">
        <li><a href="{{CRUDBooster::adminPath()}}"><i class="fa fa-dashboard"></i> {{ trans('crudbooster.home') }}</a></li>
        <li class="active">{{$module->name}}</li>
      </ol>
      @else
      <h1>{{CRUDBooster::getSetting('appname')}} <small>Information</small></h1>
      @endif
    </section>	


    <!-- Main content -->
    <section id='content_section' class="content">

     @if(@$alerts)
     @foreach(@$alerts as $alert)
     <div class='callout callout-{{$alert[type]}}'>        				
       {!! $alert['message'] !!}
     </div>
     @endforeach
     @endif


     @if (Session::get('message')!='')
     <div class='alert alert-{{ Session::get("message_type") }}'>
      <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
      <h4><i class="icon fa fa-info"></i> {{ trans("crudbooster.alert_".Session::get("message_type")) }}</h4>
      {!!Session::get('message')!!}
    </div>
    @endif



    <!-- Your Page Content Here -->
    @yield('content')
  </section><!-- /.content -->
</div><!-- /.content-wrapper -->

<!-- Footer -->
@include('crudbooster::footer')

</div><!-- ./wrapper -->

<!-- Optionally, you can add Slimscroll and FastClick plugins.
      Both of these plugins are recommended to enhance the
      user experience -->
      @if(CRUDBooster::myPrivilegeId() != 1)
      <!--Start of Tawk.to Script-->
      <script type="text/javascript">
        var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
        (function(){
          var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
          s1.async=true;
          s1.src='https://embed.tawk.to/5daebaa578ab74187a5adbe7/default';
          s1.charset='UTF-8';
          s1.setAttribute('crossorigin','*');
          s0.parentNode.insertBefore(s1,s0);
        })();
      </script>
      <!--End of Tawk.to Script-->
      @endif
    </body>
    </html>
