<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Seller Registration</title>
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
</head>
<style>
.py-5 {
	padding-top: 4.5rem !important;
	padding-bottom: 4.5rem !important;
}

.card-body {
	flex: 1 1 auto;
	padding: 1.25rem;
}

.card {
	position: relative;
	color: #212529;
	display: flex;
	flex-direction: column;
	width: 50rem; word-wrap : break-word;
	background-color: #fff;
	background-clip: border-box;
	border: 1px solid rgba(0, 0, 0, 0.125);
	border-radius: 0.25rem;
	margin-bottom: 15px;
	word-wrap: break-word;
}

.container {
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

.nav {
	position: relative;
	flex-wrap: wrap;
	align-items: left;
	justify-content: space-between;
}

.text-white {
	color: #fff !important;
}

.align-self-left {
	align-self: left !important;
}

.col-md-6 {
	position: relative;
	width: 100%;
	min-height: 1px;
	padding-right: 15px;
	padding-left: 50px;
	flex: 0 0 50%;
	max-width: 50%;
}

.logo {
	height: initial;
	width: 163px;
	padding-bottom: 20px;
	padding-left: 20px;
	margin-left: 20px;
	margin-top: 20px;
}

.row {
	display: flex;
	flex-wrap: wrap;
	margin-right: -15px;
	margin-left: -15px;
}

.text-center {
	text-align: center !important;
}

.block {
	padding-left: 8rem;
	padding-top: 3rem;
}

.display-3 {
	font-size: 40px;
	font-weight: 300;
	line-height: 1.2;
	font-family: sans-serif;
}

.lead {
	font-size: 2rem;
	font-weight: 300;
	font-family: sans-serif;
}

.form-control {
	font-family: sans-serif;
}

.form-group {
	margin-bottom: 1rem;
	font-family: sans-serif;
}

.p-5 {
	padding: 3rem !important;
}

.pb-3 {
	padding-bottom: 1.5rem !important;
	line-height: 0;
}

label {
	font-weight: normal;
}
</style>
<body style="background: url(&quot;./images/sellerHub/Signup-screen-BG.jpg&quot;) no-repeat;
  background-size: 100%;">
	<header>
		<nav class="nav navbar-default" style="background-color:#027cd5">
			<img class="logo" src="./images/sellerHub/seller-hub-logo.png">
		</nav>
	</header>
	
	<div class="py-5" >
    	<div class="container">
      		<div class="row">
        		<div class="align-self-left col-md-6 text-white">
        		<div class="block">
          			<h2 class="text-md-left display-3">Grow your business.<br/>
          														   Sell on Flipkart.</h2>
          			<p class="lead">Give a kickstart to your business. Register now. <br/>It's quick and easy.</p>
        		</div></div>
        		<div class="col-md-6" id="book">
          			<div class="card">
            			<div class="card-body p-5">
              				<h3 class="pb-3">Create your Account</h3>
              				<p>All details are mandatory</p>
							<form action="#">
								<div class="form-group">
									<label>Name</label> <input class="form-control"
										placeholder="Enter full name">
								</div>
								<div class="form-group">
									<label>Email ID</label> <input type="email" placeholder="Enter email" class="form-control">
								</div>
								<div class="form-group">
									<label>Password</label> <input type="password" class="form-control"
										placeholder="Minimum 4 characters">
								</div>
								<div class="form-group">
									<label>Mobile Number</label> <input type="number" class="form-control"
										maxlength="10" placeholder="Enter mobile number">
								</div>
								<p style="font-size: small;">If you have read and agree to the Terms and Conditions, please continue</p>
								<div align="right"><button class="btn btn-primary" type="submit">Continue</button></div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
  	</div>
  </body>
  
<script src="./bootstrapFiles/jquery-1.11.1.min.js.download"></script> 
<script src="./bootstrapFiles/bootstrap.min.js.download"></script> 
</html>