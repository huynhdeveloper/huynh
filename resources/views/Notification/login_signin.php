<!DOCTYPE html>
<!-- Template Name: Packet - Responsive Admin Template build with Twitter Bootstrap 3.x | Author: ClipTheme -->
<!--[if IE 8]><html class="ie8" lang="en"><![endif]-->
<!--[if IE 9]><html class="ie9" lang="en"><![endif]-->
<!--[if !IE]><!-->
<html lang="en">
	<!--<![endif]-->
	<!-- start: HEAD -->
	<head>
		<title>Packet - Responsive Admin Template</title>
		<!-- start: META -->
		<!--[if IE]><meta http-equiv='X-UA-Compatible' content="IE=edge,IE=9,IE=8,chrome=1" /><![endif]-->
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimum-scale=1.0, maximum-scale=1.0">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta content="" name="description" />
		<meta content="" name="author" />
		<!-- end: META -->
		<!-- start: GOOGLE FONTS -->
		<link href="http://fonts.googleapis.com/css?family=Lato:300,400,400italic,600,700|Raleway:300,400,500,600,700|Crete+Round:400italic" rel="stylesheet" type="text/css" />
		<!-- end: GOOGLE FONTS -->
		<!-- start: MAIN CSS -->
		<?php include_once "frontend_top.html"; ?>
		<?php include_once "facebook.html"; ?>

	</head>
	<!-- end: HEAD -->
	<!-- start: BODY -->
	<body class="login">
		<!-- start: LOGIN -->
		<div class="row">
			<div class="main-login col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4 col-lg-2 col-lg-offset-5">
				<div class="logo text-center">
					<img src="assets/images/logo-big.png" alt="{{app.name}}" class="img-responsive" />
				</div>
				<p class="text-center text-dark text-bold text-extra-large margin-top-15">
					Welcome to Packet
				</p>
				<p class="text-center">
					You can build just about any type of dashboard you want with Packet, a developer friendly admin theme.
				</p>
				<p class="text-center">
					Please enter your name and password to log in.
				</p>
				<!-- start: LOGIN BOX -->
				<div class="box-login">
					<form class="form-login" action="index.html">
						<div class="form-group">
							<input type="text" class="form-control" name="username" placeholder="Username">
						</div>
						<div class="form-group form-actions">

							<input type="password" class="form-control password" name="password" placeholder="Password">

						</div>
						<div class="text-center">
							<a href="login_forgot.html"> I forgot my password </a>
						</div>
						<div class="form-actions">
							<fb:login-button scope="public_profile,email" onlogin="checkLoginState();">
							</fb:login-button>
							<div id="status">
							</div>
							<div class="checkbox clip-check check-primary">
								<input type="checkbox" id="remember" value="1">
								<label for="remember"> Keep me signed in </label>
							</div>
						</div>
						<div class="new-account text-center">
							Don't have an account yet?
							<a href="login_registration.html"> Create an account </a>
						</div>
					</form>
					<!-- start: COPYRIGHT -->
					<div class="copyright">
						2016 &copy; Packet by ClipTheme.
					</div>
					<!-- end: COPYRIGHT -->
				</div>
				<!-- end: LOGIN BOX -->
			</div>
		</div>
		<!-- end: LOGIN -->
		<!-- start: MAIN JAVASCRIPTS -->
		<?php include_once "frontend_bot.html"; ?>
		<!-- end: JavaScript Event Handlers for this page -->
	</body>
</html>