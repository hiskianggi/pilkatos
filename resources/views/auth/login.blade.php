@extends('layouts.app')

@section('content')
<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1>Login</h1>
		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
			<div class="header-left-bottom">
				<form method="POST" action="{{ route('login') }}">
					{{ csrf_field() }}
					<div class="icon1">
						<span class="fa fa-user"></span>
						<input id="username" type="text" name="username" value="{{ old('username') }}" required autofocus placeholder="Email Password" />
					</div>
					<div class="icon1">
						<span class="fa fa-lock"></span>
						<input id="password" type="password" name="password" required/>
					</div>
					<div class="login-check">
						<label class="checkbox"><input type="checkbox" name="remember" {{ old('remember') ? 'checked' : '' }}><i> </i> Keep me logged in</label>
					</div>
					<div class="bottom">
						<button class="btn" type="submit">Log In</button>
					</div>
				</form>	
			</div>
		</div>
		
		<!-- copyright -->
		<div class="copyright">
			<p>© 2019 {{ config('app.name', 'Laravel') }}. All rights reserved.</p>
		</div>
		<!-- //copyright --> 
	</div>
</div>	
@endsection