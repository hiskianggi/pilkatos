<title>Kartu Pemilih</title>
<div class="kotak-kartu">
	@foreach($data as $d)
	<div class="k-kartu">
		<table style="border-bottom: 2px solid #333; width: 320px;">
			<tr>
				<td>
					<div class="logo">
						<img src="{{ url($logo) }}" class="img-logo">
					</div>
				</td>
				<td colspan="2">
					<p class="judul">KARTU PEMILIH PILKATOS</p>
					<P class="judul" style="margin-top: -10px;">Tahun {{ date("Y") }}/{{ (int)date('Y')+1 }}</p>
					</td>
				</tr>	
			</table>
			<table class="tabel">								
				<tr>
					<td >Nama</td>
					<td>:</td>
					<td>{{ $d->name }}</td>
				</tr>
				<tr>
					<td style="width: 80px;">Username</td>
					<td>:</td>
					<td style="width: 200px;">{{ $d->username }}</td>
				</tr>
				<tr>
					<td>Password</td>
					<td>:</td>
					<td>Tanggal Lahir (Format : yyyy-mm-dd)</td>
				</tr>


			</table>
			<table style="border-top: 2px solid #333;width: 320px;">
				<tr>
					<td colspan="3" style="color: #333; font-size: 12px; text-align: center;padding: 5px; font-family:kalam;font-weight: bold;">PILKATOS.TECH</td>
				</tr>
			</table>

		</div>
	</div>
	@endforeach
	<style type="text/css">
		
		@page { size: auto; margin: 15mm 0 54mm 50; } body { margin:0; padding:0; } 
		
		.k-kartu{
			float: left;
			margin: 10px;
			border: 2px solid #777;
		}
		
		.tabel{
			width: 320px;
			border-top: 0px;
			padding: 10px;
			height: 100px;
		}
		.judul{
			color: #333;
			text-align: center;
			font-size: 12px;
			font-family: tahoma;
			font-weight: bold;
		}
		tr,td{
			color: #333;
			font-size: 12px;
			font-family: tahoma;
		}
		.logo .img-logo{
			width: 50px;
			float: left;
			margin-left: 15px;
			height: 50px;
		}
	</style>
	<script type="text/javascript">
		window.print();
	</script>