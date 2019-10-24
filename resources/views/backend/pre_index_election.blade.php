<div class="box box-default">
	<div class="box-body table-responsive no-padding">
		<form autocomplete="off" method="get" action="/" enctype="multipart/form-data">
			<input type="hidden" name="_token" value="{{ csrf_token() }}"/>	
			<div class="col-md-3">
				<p class="font_bold">Date Range</p>
				<input name="range" type="" class="form-control" id="range" autocomplete="off" required>
				<input name="range" id="ranged" type="" class="form-control" form="form_export" autocomplete="off" style="display: none">
				<input name="range" id="rangedd" type="" class="form-control" form="form_detail" autocomplete="off" style="display: none">
			</div>
			<div class="col-md-3">
				<p class="font_bold">Coordinator</p>
				<select class="form-control" name="koordinator" id="coordinator" required>
					@if(g('koordinator')=='')
					<option value="">** Select Coordinator</option>
					@endif
					@foreach($koordinator as $k)
					@if(g('koordinator')==$k->id)
					<option selected value="{{$k->id}}">{{$k->name}}</option>
					@else
					<option value="{{$k->id}}">{{$k->name}}</option>
					@endif
					@endforeach
				</select>

				@if(g('koordinator')!='')
				<input type="hidden" name="koordinator" form="form_export" id="coordinatord" value="{{g('koordinator')}}">
				@else
				<input type="hidden" name="koordinator" form="form_export" id="coordinatord" value="{{$first_koordinator->id}}">
				@endif

				@if(g('kanvaser')!='')
				<input type="hidden" name="kanvaser" form="form_export" id="canvaserd" value="{{g('kanvaser')}}">
				<input type="hidden" name="kanvaser" form="form_detail" id="canvaserdd" value="{{g('kanvaser')}}">
				@else
				<input type="hidden" name="kanvaser" form="form_export" id="canvaserd" value="{{$first_kanvaser->id}}">
				<input type="hidden" name="kanvaser" form="form_detail" id="canvaserdd" value="{{$first_kanvaser->id}}">
				@endif
			</div>
			<div class="col-md-3">
				<p class="font_bold">Canvaser</p>
				<select class="form-control" name="kanvaser" id="canvaser" required>
					@if(g(kanvaser)=='')
					<option value="">** Select Canvaser</option>
					@else
					<option value="All">All Canvaser</option>
					@foreach($kanvaser as $k)
					@if(g('kanvaser')==$k->id)
					<option selected value="{{$k->id}}">{{$k->name}}</option>
					@else
					<option value="{{$k->id}}">{{$k->name}}</option>
					@endif
					@endforeach
					@endif

				</select>
			</div>
			<div class="col-md-3">
				<br>
				<button type="submit" class="btn btn-md btn-primary"><i class="fa fa-filter"></i><br>Filter</button>
				@if(g('range'))
				<button form="form_export" type="submit" type="button" id="export" class="btn btn-md btn-success"><i class="fa fa-file-excel-o"></i><br>Export</button>
				@endif
			</div>
			<div class="col-md-12"><hr>
			</div>
		</form>
	</div>
</div>