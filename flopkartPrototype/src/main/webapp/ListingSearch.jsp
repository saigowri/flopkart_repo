<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0060)http://www.themesground.com/flipmart-demo/HTML/category.jsp -->
<html>
<!-- Meta -->
<!-- minnu ann -->
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="MediaCenter, Template, eCommerce">
<meta name="robots" content="all">
<title>Welcome to Flopkart</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/main.css">
<link rel="stylesheet" href="./bootstrapFiles/css/blue.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.carousel.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.transitions.css">
<link rel="stylesheet" href="./bootstrapFiles/css/animate.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/rateit.css">
<link rel="stylesheet"
	href="./bootstrapFiles/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="./bootstrapFiles/css/font-awesome.css">
<link rel="stylesheet" href="./bootstrapFiles/fontawesome-all.css">

<!-- Fonts -->
<link href="./bootstrapFiles/css(3).css" rel="stylesheet"
	type="text/css">
<link href="./bootstrapFiles/css(1).css" rel="stylesheet"
	type="text/css">
<link href="./bootstrapFiles/css(2).css" rel="stylesheet"
	type="text/css">
</head>

<style>
input {
	display: block;
	border: none;
	border-bottom: 1px solid #ccc;
	width: 100%
}

.floating-div {
	position: relative; /*  make label relate to div  */
	padding-top: 5%; /*  make space for label      */
}

.floating-label {
	position: absolute;
	pointer-events: none;
	top: 20%;
	color: #878787;
}

input:focus ~ .floating-label {
	transition: 0.2s ease all;
	top: -5%;
	font-size: 70%;
}

input:valid ~ .floating-label {
	transition: 0.2s ease all;
	top: -5%;
	font-size: 70%;
}
.box {
  transition: box-shadow .3s;
  width: 300px;
  height: 500px;
  background: #fff;
  float: left;
  
}
.box:hover {
  box-shadow: 0 0 11px rgba(33,33,33,.2); 
}
</style>


<body>
	<!-- ============================================== HEADER ============================================== -->

	<header class="header-style-1">

		<!-- ============================================== TOP MENU ============================================== -->
		<div class="top-bar animate-dropdown">
			<div class="container">
				<div class="header-top-inner">
					<div class="cnt-account">
						<ul class="list-unstyled">
							<li><a href="sellerHub.jsp">Sell on Flopkart</a></li>
							<li><a data-toggle="modal" data-target="#loginModal">Track
									Order</a></li>
							<li><a data-toggle="modal">Sign up</a></li>
							<li>
								<form id="myProfile" method="post" action="./myProfile.jsp">
									<label id="Login_btn"> <a data-toggle="modal"
										data-target="#loginModal"> Login </a>
									</label>
									<input type="submit" id="user_btn" name="user_btn" value="My Account"
										class="login_user btn btn-link" style="color: white; font-size: 90%;" /> 								</form>
							</li>
							<!-- ============================================== Login Modal ============================================== -->

							<div class="modal" id="loginModal" role="dialog" align="center">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="row" style="display: table;">
										<div class="col-sm-5"
											style="background-color: #2455f4; padding-left: 45px; padding-right: 45px; float: none; display: table-cell; vertical-align: top;">
											<div class="row">
												<h2 class="modal-title" align="left"
													style="font-family: sans-serif; color: white;">
													<b>Login</b>
												</h2>
												<h4 class="modal-title" align="left"
													style="font-family: sans-serif; color: white; line-height: 1.5">
													Get access to your Orders, Wishlist and Recommendations</h4>
											</div>
											<div class="row"
												style="padding-top: 100px; padding-bottom: 30px;">
												<img src="./images/login_img_1.png" align="middle"
													align="bottom" width="200px" />
											</div>
										</div>
										<div class="col-sm-6"
											style="background-color: #ffffff; padding-left: 45px; padding-right: 45px; float: none; display: table-cell; vertical-align: top;">

											<div class="row"
												style="padding-top: 15px; padding-bottom: 15px;"></div>
<!--//////////// begin changing code -->		
								<div id="signup">					
											<div class="floating-div"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
												<span class='blocking-span'> <input type="text"
													id="f_name" name="f_name" class="inputText"
													required /> <span style="align: left"
													class="floating-label pull-left"><b>Enter
															First Name</b></span>
												</span> <span class="warning" id="warning_fname"
													style="align: left; padding-left: 0px; color: red; font-size: 80%"
													class="pull-left"> <b>Please enter
														First Name</b>
												</span>
											</div>
											
											<div class="floating-div"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
												<span class='blocking-span'> <input type="text"
													id="l_name" name="l_name" class="inputText"
													required /> <span style="align: left"
													class="floating-label pull-left"><b>Enter
															Last Name</b></span>
												</span> <span class="warning" id="warning_lname"
													style="align: left; padding-left: 0px; color: red; font-size: 80%"
													class="pull-left"> <b>Please enter Last Name</b>
												</span> 
											</div>
											
											<div class="floating-div"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
												<span class='blocking-span'> <input type="text"
													id="phone" name="phone" class="inputText"
													required /> <span style="align: left"
													class="floating-label pull-left"><b>Enter
															Mobile number</b></span>
												</span> <span class="warning" id="warning_phone_new"
													style="align: left; padding-left: 0px; color: red; font-size: 80%"
													class="pull-left"> <b>Please enter valid Mobile number</b>
												</span>
												
											</div>
											<div class="floating-div"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
												<span class='blocking-span'> <input type="text"
													id="email" name="phone" class="email"
													required /> <span style="align: left"
													class="floating-label pull-left"><b>Enter
															Email ID</b></span>
												</span> <span class="warning" id="warning_email_new"
													style="align: left; padding-left: 0px; color: red; font-size: 80%"
													class="pull-left"> <b>Please enter valid email</b>
												</span>
												
											</div>
											
								
								<div class="floating-div"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
												<span class='blocking-span'> <input type="password"
													id="pass_txt" name="pass_txt" class="inputText" required />
													<span class="floating-label"><b>Set Password</b></span>
												</span> <span class="warning" id="warning_pass_new"
													style="align: left; padding-left: 0px; color: red; font-size: 80%"
													class="pull-left"> <b>Enter password</b>
												</span> 
								</div>	
								
								
								<div class="row"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
												<button type="button" id="login_btn"
													class="btn btn-primary btn-lg btn-block"
													style="border-radius: 0px; background-color: #F26419; border-width: 0mm"
													value="Login" onclick="signup();">SIGN UP</button>
								</div>
						
								<div class="row"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
												<button type="button" id=""
													class="btn btn-primary btn-lg btn-block"
													style="border-radius: 0px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); color: #2455f4; background-color: white; border-width: 0mm"
													onclick="show_old();">Existing User? Login</button>
											</div>	
											
							</div>
<!--//////////// end changing code -->
							<div id ="old">
											<div class="floating-div"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
												<span class='blocking-span'> <input type="text"
													id="email_phone" name="email_phone" class="inputText"
													required /> <span style="align: left"
													class="floating-label pull-left"><b>Enter
															Email/Mobile number</b></span>
												</span> <span class="warning" id="warning_email"
													style="align: left; padding-left: 0px; color: red; font-size: 80%"
													class="pull-left"> <b>Please enter valid Email
														ID/Mobile number</b>
												</span> <span class="warning" id="warning_register"
													style="align: left; padding-left: 0px; color: red; font-size: 80%"
													class="pull-left"> <b>Email ID/Mobile number not
														registered</b>
												</span>
											</div>
					
											<div class="floating-div"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px; text-align: left">
												<span class='blocking-span'> <input type="password"
													id="pass_text" name="pass_text" class="inputText" required />
													<span class="floating-label"><b>Enter Password</b></span>
												</span> <span class="warning" id="warning_pass"
													style="align: left; padding-left: 0px; color: red; font-size: 80%"
													class="pull-left"> <b>Invalid password</b>
												</span> <a> <span style="text-align: right">Forgot?</span>
												</a>
											</div>
											
											
											<div class="row"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
												<button type="button" id="login_btn"
													class="btn btn-primary btn-lg btn-block"
													style="border-radius: 0px; background-color: #F26419; border-width: 0mm"
													value="Login" onclick="validate();">Login</button>
											</div>
											<div class="row"
												style="padding-left: 0px; padding-top: 15px; padding-bottom: 15px;">
												<button type="button" id=""
													class="btn btn-primary btn-lg btn-block"
													style="border-radius: 0px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); color: #2455f4; background-color: white; border-width: 0mm"
													onclick="show_signup();">New to Flopkart? Sign up</button>
											</div>
							</div>
							
									
										</div>
										<div class="col-sm-1">
											<button type="button" class="close" data-dismiss="modal">x</button>
										</div>
									</div>
								</div>
							</div>
							<!-- ============================================== END Login Modal ============================================== -->

						</ul>
					</div>
					<!-- /.cnt-account -->

					<div class="clearfix"></div>
				</div>
				<!-- /.header-top-inner -->
			</div>
			<!-- /.container -->
		</div>
		<!-- /.header-top -->
		<!-- ============================================== TOP MENU : END ============================================== -->
		<div class="main-header">
			<div class="container">
				<div class="row">
					<div class="col-xs-12 col-sm-12 col-md-2 logo-holder">
						<!-- ============================================================= LOGO ============================================================= -->
						<div class="logo">
							<a href="index.jsp"> <img height="50px"
								src="./images/flopkartLogo.jpg" alt="">
							</a>
						</div>
						<!-- /.logo -->
						<!-- ============================================================= LOGO : END ============================================================= -->
					</div>
					<!-- /.logo-holder -->

					<div class="col-xs-12 col-sm-12 col-md-8 top-search-holder">
						<!-- /.contact-row -->
						<!-- ============================================================= SEARCH AREA ============================================================= -->
						<div class="search-area">
							<form>
								<div class="control-group">
									<div class="row">
										<div class="col-md-10">
											<input class="search-field"
												placeholder="Search for products, brands and more" />
										</div>
										<div class="col-md-2">
											<a class="search-button" href="underConstruct.html"></a>
										</div>
									</div>
								</div>
							</form>
						</div>
						<!-- /.search-area -->
						<!-- ============================================================= SEARCH AREA : END ============================================================= -->
					</div>
					<!-- /.top-search-holder -->

					<div
						class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row">
						<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->

						<div class="dropdown dropdown-cart">
							<a href="#" class="dropdown-toggle lnk-cart"
								data-toggle="dropdown">
								<div class="items-cart-inner">
									<div class="basket">
										<i class="glyphicon glyphicon-shopping-cart"></i>
									</div>
									<div class="basket-item-count">
										<span class="count">1</span>
									</div>
									<div class="total-price-basket">
										<span class="lbl"> CART </span>
									</div>
								</div>
							</a>
							<ul class="dropdown-menu">
								<li>
									<div class="cart-item product-summary">
										<div class="row">
											<div class="col-xs-4">
												<div class="image">
													<a href="underConstruct.html"><img
														src="./images/cart.jpg" alt=""></a>
												</div>
											</div>
											<div class="col-xs-7">
												<h3 class="name">
													<a href="index.php?page-detail">Simple Product</a>
												</h3>
												<div class="price">$600.00</div>
											</div>
											<div class="col-xs-1 action">
												<a href="#"><i class="fa fa-trash"></i></a>
											</div>
										</div>
									</div> <!-- /.cart-item -->
									<div class="clearfix"></div>
									<hr>
									<div class="clearfix cart-total">
										<div class="pull-right">
											<span class="text">Sub Total :</span><span class='price'>$600.00</span>
										</div>
										<div class="clearfix"></div>
										<a href="underConstruct.html"
											class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a>
									</div> <!-- /.cart-total-->

								</li>
							</ul>
							<!-- /.dropdown-menu-->
						</div>
						<!-- /.dropdown-cart -->

						<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
					</div>
					<!-- /.top-cart-row -->
				</div>
				<!-- /.row -->

			</div>
			<!-- /.container -->

		</div>
		<!-- /.main-header -->

		<!-- ============================================== NAVBAR ============================================== -->
		<div class="header-nav animate-dropdown">
			<div class="container">
				<div class="yamm navbar navbar-default" role="navigation">
					<div class="navbar-header">
						<button data-target="#mc-horizontal-menu-collapse"
							data-toggle="collapse" class="navbar-toggle collapsed"
							type="button">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<div class="nav-bg-class">
						<div class="navbar-collapse collapse"
							id="mc-horizontal-menu-collapse">
							<div class="nav-outer">
								<ul class="nav navbar-nav">
									<li class="active dropdown yamm-fw"><a href="index.jsp"
										data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">Home</a></li>
									<li class="dropdown yamm mega-menu"><a href="category.jsp"
										data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">Clothing</a>
										<ul class="dropdown-menu container">
											<li>
												<div class="yamm-content ">
													<div class="row">
														<div class="col-xs-12 col-sm-6 col-md-3 col-menu">
															<h2 class="title">Men</h2>
															<ul class="links">
																<li><a href="underConstruct.html">Dresses</a></li>
																<li><a href="underConstruct.html">Shoes </a></li>
																<li><a href="underConstruct.html">Jackets</a></li>
																<li><a href="underConstruct.html">Sunglasses</a></li>
																<li><a href="underConstruct.html">Sport Wear</a></li>
																<li><a href="underConstruct.html">Blazers</a></li>
																<li><a href="underConstruct.html">Shirts</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-6 col-md-3 col-menu">
															<h2 class="title">Women</h2>
															<ul class="links">
																<li><a href="underConstruct.html">Handbags</a></li>
																<li><a href="underConstruct.html">Jewellery</a></li>
																<li><a href="underConstruct.html">Swimwear </a></li>
																<li><a href="underConstruct.html">Tops</a></li>
																<li><a href="underConstruct.html">Flats</a></li>
																<li><a href="underConstruct.html">Shoes</a></li>
																<li><a href="underConstruct.html">Winter Wear</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-6 col-md-3 col-menu">
															<h2 class="title">Boys</h2>
															<ul class="links">
																<li><a href="underConstruct.html">Toys and Games</a></li>
																<li><a href="underConstruct.html">Jeans</a></li>
																<li><a href="underConstruct.html">Shirts</a></li>
																<li><a href="underConstruct.html">Shoes</a></li>
																<li><a href="underConstruct.html">School Bags</a></li>
																<li><a href="underConstruct.html">Lunch Box</a></li>
																<li><a href="underConstruct.html">Footwear</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-6 col-md-3 col-menu">
															<h2 class="title">Girls</h2>
															<ul class="links">
																<li><a href="underConstruct.html">Sandals </a></li>
																<li><a href="underConstruct.html">Shorts</a></li>
																<li><a href="underConstruct.html">Dresses</a></li>
																<li><a href="underConstruct.html">Jewellery</a></li>
																<li><a href="underConstruct.html">Bags</a></li>
																<li><a href="underConstruct.html">Night Dress</a></li>
																<li><a href="underConstruct.html">Swim Wear</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<!-- div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image"> <img class="img-responsive" src="./images/banners/top-menu-banner.jpg" alt=""> </div>
                          <!-- /.yamm-content -->
													</div>
												</div>
											</li>
										</ul></li>
									<li class="dropdown mega-menu"><a href="underConstruct.html"
										data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">Electronics <span
											class="menu-label hot-menu hidden-xs">hot</span>
									</a>
										<ul class="dropdown-menu container">
											<li>
												<div class="yamm-content">
													<div class="row">
														<div class="col-xs-12 col-sm-12 col-md-2 col-menu">
															<h2 class="title">Laptops</h2>
															<ul class="links">
																<li><a href="underConstruct.html">Gaming</a></li>
																<li><a href="underConstruct.html">Laptop Skins</a></li>
																<li><a href="underConstruct.html">Apple</a></li>
																<li><a href="underConstruct.html">Dell</a></li>
																<li><a href="underConstruct.html">Lenovo</a></li>
																<li><a href="underConstruct.html">Microsoft</a></li>
																<li><a href="underConstruct.html">Asus</a></li>
																<li><a href="underConstruct.html">Adapters</a></li>
																<li><a href="underConstruct.html">Batteries</a></li>
																<li><a href="underConstruct.html">Cooling Pads</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-12 col-md-2 col-menu">
															<h2 class="title">Desktops</h2>
															<ul class="links">
																<li><a href="underConstruct.html">Routers and Modems</a></li>
																<li><a href="underConstruct.html">CPUs, Processors</a></li>
																<li><a href="underConstruct.html">PC Gaming Store</a></li>
																<li><a href="underConstruct.html">Graphics Cards</a></li>
																<li><a href="underConstruct.html">Components</a></li>
																<li><a href="underConstruct.html">Webcam</a></li>
																<li><a href="underConstruct.html">Memory (RAM)</a></li>
																<li><a href="underConstruct.html">Motherboards</a></li>
																<li><a href="underConstruct.html">Keyboards</a></li>
																<li><a href="underConstruct.html">Headphones</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-12 col-md-2 col-menu">
															<h2 class="title">Cameras</h2>
															<ul class="links">
																<li><a href="underConstruct.html">Accessories</a></li>
																<li><a href="underConstruct.html">Binoculars</a></li>
																<li><a href="underConstruct.html">Telescopes</a></li>
																<li><a href="underConstruct.html">Camcorders</a></li>
																<li><a href="underConstruct.html">Digital</a></li>
																<li><a href="underConstruct.html">Film Cameras</a></li>
																<li><a href="underConstruct.html">Flashes</a></li>
																<li><a href="underConstruct.html">Lenses</a></li>
																<li><a href="underConstruct.html">Surveillance</a></li>
																<li><a href="underConstruct.html">Tripods</a></li>
															</ul>
														</div>
														<!-- /.col -->
														<div class="col-xs-12 col-sm-12 col-md-2 col-menu">
															<h2 class="title">Mobile Phones</h2>
															<ul class="links">
																<li><a href="underConstruct.html">Apple</a></li>
																<li><a href="underConstruct.html">Samsung</a></li>
																<li><a href="underConstruct.html">Lenovo</a></li>
																<li><a href="underConstruct.html">Motorola</a></li>
																<li><a href="underConstruct.html">LeEco</a></li>
																<li><a href="underConstruct.html">Asus</a></li>
																<li><a href="underConstruct.html">Acer</a></li>
																<li><a href="underConstruct.html">Accessories</a></li>
																<li><a href="underConstruct.html">Headphones</a></li>
																<li><a href="underConstruct.html">Memory Cards</a></li>
															</ul>
														</div>
														<div
															class="col-xs-12 col-sm-12 col-md-4 col-menu custom-banner">
															<a href="underConstruct.html"><img alt=""
																src="./images/banner-side.png"></a>
														</div>
													</div>
													<!-- /.row -->
												</div> <!-- /.yamm-content -->
											</li>
										</ul></li>
									<li class="dropdown hidden-sm"><a href="category.jsp">Health
											and Beauty <span class="menu-label new-menu hidden-xs">new</span>
									</a></li>
									<li class="dropdown hidden-sm"><a href="category.jsp">Watches</a>
									</li>
									<li class="dropdown"><a href="contact.html">Jewellery</a>
									</li>
									<li class="dropdown"><a href="contact.html">Shoes</a></li>
									<li class="dropdown"><a href="contact.html">Kids and
											Girls</a></li>
									<li class="dropdown"><a href="underConstruct.html" class="dropdown-toggle"
										data-hover="dropdown" data-toggle="dropdown">Pages</a>
										<ul class="dropdown-menu pages">
											<li>
												<div class="yamm-content">
													<div class="row">
														<div class="col-xs-12 col-menu">
															<ul class="links">
																<li><a href="home.html">Home</a></li>
																<li><a href="category.jsp">Category</a></li>
																<li><a href="underConstruct.html">Detail</a></li>
																<li><a href="shopping-cart.html">Shopping Cart
																		Summary</a></li>
																<li><a href="checkout.html">Checkout</a></li>
																<li><a href="blog.html">Blog</a></li>
																<li><a href="blog-details.html">Blog Detail</a></li>
																<li><a href="contact.html">Contact</a></li>
																<li><a href="sign-in.html">Sign In</a></li>
																<li><a href="my-wishlist.html">Wishlist</a></li>
																<li><a href="terms-conditions.html">Terms and
																		Condition</a></li>
																<li><a href="track-orders.html">Track Orders</a></li>
																<li><a href="product-comparison.html">Product-Comparison</a></li>
																<li><a href="faq.html">FAQ</a></li>
																<li><a href="404.html">404</a></li>
															</ul>
														</div>
													</div>
												</div>
											</li>
										</ul></li>
									<li class="dropdown  navbar-right special-menu"><a
										href="underConstruct.html">Todays offer</a></li>
								</ul>
								<!-- /.navbar-nav -->
								<div class="clearfix"></div>
							</div>
							<!-- /.nav-outer -->
						</div>
						<!-- /.navbar-collapse -->

					</div>
					<!-- /.nav-bg-class -->
				</div>
				<!-- /.navbar-default -->
			</div>
			<!-- /.container-class -->

		</div>
		<!-- /.header-nav -->
		<!-- ============================================== NAVBAR : END ============================================== -->

	</header>
    
    
    <div class=row id="body" style="margin-top: 10px;margin-left:10px;margin-right:40px">
      <div class=col-sm-2 id="filters" style="background-color: white;border: 1px solid black">
        <div style = 'font-size:30px; text-align:center; font-family:bold'>Filters</div>
        <section>
           <div style = 'font-size:25px; text-align:left; font-family:bold; margin-top:40px'>price</div>
           <div style = 'font-size:20px; text-align:center; font-family:bold; margin-top:20px'>Minimum</div>
           <div align="center">
           <select style="width:100px" id = "MinPrice">
                <option value="0">0</option>
                <option value="2000">2000</option>
                <option value="4000">4000</option>
                <option value="6000">6000</option>
                <option value="8000">8000</option>
                <option value="10000">10000</option>
                <option value="15000">15000</option>
           </select>
           </div>
              <div style = 'font-size:20px; text-align:center; font-family:bold; margin-top:20px'>Maximum</div>
              <div align="center">
              <select style="width:100px" id = "MaxPrice">
                <option value="max">35000+</option>
                <option value="10000">10000</option>
                <option value="15000">15000</option>
                <option value="20000">20000</option>
                <option value="25000">25000</option>
                <option value="30000">30000</option>
                <option value="35000">35000</option>
           </select>
           </div>
              <button type="button" style="margin:auto;display:block;margin-top:40px" onclick="InitialLoad()"><b>Apply Filter</b></button>
        </section>
        
      </div>
      <div class=col-sm-10 id="listingDisplay" style="background-color:white">
         <div class=row style="text-align:center">
           <section style="text-align:left; font-family:bold; font-size:20px">
             <span>
              <span>Sort By</span>
             </span>
             <ul>
              <li style="display:inline-block;margin-right:5px;border: 1px solid black;cursor:pointer;background-color:red" onclick="SortAsscending('ActualPrice')">Price -- Low to High</li>
              <li style="display:inline-block;margin-right:5px;border: 1px solid black;cursor:pointer;background-color:red" onclick="SortDescending('ActualPrice')">Price -- High to low</li>
             </ul>
            </section>
           <div id="listing"></div>
         </div>
      </div>
    </div>
	
	
	
	<!-- ============================================================= FOOTER ============================================================= -->
<footer id="footer" class="footer color-bg">
  <div class="footer-bottom">
    <div class="container">
      <div class="row">
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="module-heading">
            <h4 class="module-title">Contact Us</h4>
          </div>
          <!-- /.module-heading -->
          
          <div class="module-body">
            <ul class="toggle-footer" style="">
              <li class="media">
                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-map-marker fa-stack-1x fa-inverse"></i> </span> </div>
                <div class="media-body">
                  <p>IIITB, Electronic City, Bangalore</p>
                </div>
              </li>
              <li class="media">
                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-mobile fa-stack-1x fa-inverse"></i> </span> </div>
                <div class="media-body">
                  <p>+80 23456789<br>
                    +91 9876543210</p>
                </div>
              </li>
              <li class="media">
                <div class="pull-left"> <span class="icon fa-stack fa-lg"> <i class="fa fa-envelope fa-stack-1x fa-inverse"></i> </span> </div>
                <div class="media-body"> <span>flopkart@flopkart.com </span> </div>
              </li>
            </ul>
          </div>
          <!-- /.module-body --> 
        </div>
        <!-- /.col -->
        
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="module-heading">
            <h4 class="module-title">Customer Service</h4>
          </div>
          <!-- /.module-heading -->
          
          <div class="module-body">
            <ul class='list-unstyled'>
              <li class="first"><a href="underConstruct.html" title="About us">Order History</a></li>
              <li><a href="underConstruct.html" title="faq">FAQ</a></li>
              <li><a href="underConstruct.html" title="24x7">24x7 Customer Care</a></li>
              <li><a href="underConstruct.html" title="Popular Searches">Specials</a></li>
              <li class="last"><a href="underConstruct.html" title="Where is my order?">Help Center</a></li>
            </ul>
          </div>
          <!-- /.module-body --> 
        </div>
        <!-- /.col -->
        
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="module-heading">
            <h4 class="module-title">Corporation</h4>
          </div>
          <!-- /.module-heading -->
          
          <div class="module-body">
            <ul class='list-unstyled'>
              <li class="first"><a title="Your Account" href="underConstruct.html">About us</a></li>
              <li><a title="Addresses" href="underConstruct.html">Company</a></li>
              <li><a href="admin.jsp">Admin</a></li>
              <li><a title="Addresses" href="underConstruct.html">Investor Relations</a></li>
              <li class="last"><a title="Orders History" href="underConstruct.html">Advanced Search</a></li>
            </ul>
          </div>
          <!-- /.module-body --> 
        </div>
        <!-- /.col -->
        
        <div class="col-xs-12 col-sm-6 col-md-3">
          <div class="module-heading">
            <h4 class="module-title">Why Choose Us</h4>
          </div>
          <!-- /.module-heading -->
          
          <div class="module-body">
            <ul class='list-unstyled'>
              <li class="first"><a href="underConstruct.html" title="About us">Shopping Guide</a></li>
              <li><a href="underConstruct.html" title="Blog">Blog</a></li>
              <li><a href="underConstruct.html" title="Company">Company</a></li>
              <li><a href="underConstruct.html" title="Investor Relations">Investor Relations</a></li>
              <li class=" last"><a href="underConstruct.html" title="Suppliers">Contact Us</a></li>
            </ul>
          </div>
          <!-- /.module-body --> 
        </div>
      </div>
    </div>
  </div>
  <div class="copyright-bar">
    <div class="container">
      <div class="col-xs-12 col-sm-6 no-padding social">
        <ul class="link">
          <li class="fb pull-left"><a target="_blank" rel="nofollow" href="#" title="Facebook"></a></li>
          <li class="tw pull-left"><a target="_blank" rel="nofollow" href="#" title="Twitter"></a></li>
          <li class="googleplus pull-left"><a target="_blank" rel="nofollow" href="#" title="GooglePlus"></a></li>
          <li class="rss pull-left"><a target="_blank" rel="nofollow" href="#" title="RSS"></a></li>
          <li class="pintrest pull-left"><a target="_blank" rel="nofollow" href="#" title="PInterest"></a></li>
          <li class="linkedin pull-left"><a target="_blank" rel="nofollow" href="#" title="Linkedin"></a></li>
          <li class="youtube pull-left"><a target="_blank" rel="nofollow" href="#" title="Youtube"></a></li>
        </ul>
      </div>
      <div class="col-xs-12 col-sm-6 no-padding">
        <div class="clearfix payment-methods">
          <ul>
            <li><img src="./images/payments/1.png" alt=""></li>
            <li><img src="./images/payments/2.png" alt=""></li>
            <li><img src="./images/payments/3.png" alt=""></li>
            <li><img src="./images/payments/4.png" alt=""></li>
            <li><img src="./images/payments/5.png" alt=""></li>
          </ul>
        </div>
        <!-- /.payment-methods --> 
      </div>
    </div>
  </div>
</footer>
<!-- ============================================================= FOOTER : END============================================================= -->


	<!-- JavaScripts placed at the end of the document so the pages load faster -->
	<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script>
	<script src="./bootstrapFiles/js/bootstrap.min.js"></script>
	<script src="./bootstrapFiles/js/bootstrap-hover-dropdown.min.js"></script>
	<script src="./bootstrapFiles/js/owl.carousel.min.js"></script>
	<script src="./bootstrapFiles/js/echo.min.js"></script>
	<script src="./bootstrapFiles/js/jquery.easing-1.3.min.js"></script>
	<script src="./bootstrapFiles/js/bootstrap-slider.min.js"></script>
	<script src="./bootstrapFiles/js/jquery.rateit.min.js"></script>
	<script src="./bootstrapFiles/js/bootstrap-select.min.js"></script>
	<script src="./bootstrapFiles/js/wow.min.js"></script>
	<script src="./bootstrapFiles/js/scripts.js"></script>
	<script src="./bootstrapFiles/js/cookies.js"></script>
	<script>
	$(document).ready(function()
			{
		        $("#signup").hide();
				$(".warning").hide();
				checkCookie();	
				$("#f_name").focus(function(){
	                $('.warning').hide(); // hide error popup
				});
				$("#l_name").focus(function(){
	                $('.warning').hide(); // hide error popup
				});
				
				$("#phone").focus(function(){
	                $('.warning').hide(); // hide error popup
				});
				$("#email").focus(function(){
	                $('.warning').hide(); // hide error popup
				});
				$("#pass_txt").focus(function(){
	                $('.warning').hide(); // hide error popup
				});
				
			})
	
	
	function show_signup()
	{ 
		$("#old").hide();
		$("#signup").show();
	}
	
	
	function show_old()
	{ 
		$("#old").show();
		$("#signup").hide();
	}
	
	function signup() 
    {	
		if (!$("#f_name").val() ){
			$("#warning_fname").show();
			return false;
		}
		if (!$("#l_name").val() ){
			$("#warning_lname").show();
			return false;
		}
		
		var email = $("#email").val();
		var phone = $("#phone").val();
		if ( !phone.match(/^[0-9]{10}$/))
		{
				$("#warning_phone_new").show();
				return false;
		}
		
		if (!$("#email").val() ){
			$("#warning_email_new").show();
			return false;
		}
		else if (!email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
		{
				$("#warning_email_new").show();
				return false;
		}
		
		if (!$("#pass_txt").val() ){
			$("#warning_pass_new").show();
			return false;
		}
		
        var ctxPath = "<%=request.getContextPath()%>";
		$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/webapi/users/createCustomer",
			dataType : "json", // data type of response
			data : signupformToJSON(),
			success : renderDetails
		});
	}
	function signupformToJSON() 
	{
		var fname = $("#f_name").val();
		var lname = $("#l_name").val();
		var email = $("#email").val();
		var password = $("#pass_txt").val();
		var phone = $("#phone").val();
		
		
		var flipkart_user = JSON.stringify({
			"firstName":fname,
			"lastName":lname,
			"phone":phone,
        		"email":email,
        		"password":password
        	
        	});
		return flipkart_user;
	}
	
	function checkCookie() 
	{
	    var user = getCookie("user_details");
	    if (user != "") 
	    {
		    //alert(document.cookie);
			setCookie("user_details", user, 10);
	        showUser(JSON.parse(user));
	    } 
	    else 
	    {
	    	showLogin();
			$('#loginModal').modal('toggle');
	    }
	}
	function showLogin()
	{
			$(".login_user").hide();
			$('#Login_btn').show();
	}

	function showUser(user)
	{
		$(".login_user").hide();
		$('#Login_btn').hide();
// 		$('#user_btn').val("My Account");
// 		$('#firstName').val(user.firstName);
// 		$('#pic_URL').val(user.pic_URL);
// 		$('#lastName').val(user.lastName);
// 		$('#email').val(user.email);
// 		$('#phone').val(user.phone);
		$('#user_btn').show();
	}

		function validate() 
		{
			$(".warning").hide();
			var email_phone = $("#email_phone").val();
			var len = email_phone.length;
			if(email_phone.match(/^[0-9]/))
			{
				if (len!=10 || !email_phone.match(/^[0-9]{10}$/))
				{
					$("#warning_email").show();
					return false;
				}
			}
			else if (!email_phone.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
			{
					$("#warning_email").show();
					return false;
			}
			else
				findUser();
		}
		
			//Helper function to serialize all the form fields into a JSON string
			function formToJSON() 
			{
		        var email = $("#email_phone").val();
				var password = $("#pass_text").val();
				var flipkart_user = JSON.stringify({
		        	"email":email,
		        	"password":password
		        	});
				return flipkart_user;
			}
			
		    function findUser() 
		    {
		        var ctxPath = "<%=request.getContextPath()%>";
				$.ajax(
				{
					type : 'POST',
					contentType : 'application/json',
					url : ctxPath + "/webapi/users/email",
					dataType : "json", // data type of response
					data : formToJSON(),
					success : renderDetails
				});
			}

		function renderDetails(user)
		{
			if (user == null)
			{
				$("#warning_register").show();
			}
			else if (user.id === 0)
			{
				$("#warning_pass").show();
			}
			else
			{
				showUser(user);
				setCookie("user_details", JSON.stringify(user), 1);
				$('#loginModal').modal('toggle');
			}

			return false;
		}
		
		$(window).on('load',function(){
			InitialLoad();
		})
	    
		function InitialLoad(){
			$('#listing').empty();
	    	var ctxPath = "<%=request.getContextPath()%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/webapi/listings",
	        			dataType : "json", // data type of response
	        			success : function(result){
	        				for (i=0;i<result.length;i++){
	        					var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
	        					if(ActualPrice <  $("#MinPrice").val() || ActualPrice > $("#MaxPrice").val())
	        						continue;
	        					var item = itemJson(result[i].id);
	        				$.ajax(
	        						{
	        							type : 'POST',
	        							contentType : 'application/json',
	        							url : ctxPath + "/webapi/listings/id",
	        							dataType : "json", // data type of response
	        							data : item,
	        							success : function(result){
	        								
	        								var ActualPrice = Math.round(result.price - (result.discount/100)*result.price);
	        								result["ActualPrice"]=ActualPrice;
	        								var data="";
	        								data+="<div class='col-sm-4, box'><a href='#'> <img src='"+result.imgUrl+"' alt=''></a>";
	        						        data+="<div style = 'font-size:20px; text-align:left'>"+result.listingName+"</div>"; 
	        						       	data+="<div style = 'font-size:20px; position:left; font-family:verdana;margin-right:10px;display:inline-block'><i class='fa fa-inr' style='font-size:20px'></i>"+result.ActualPrice+"</div>";
	        						       	data+="<del style = 'font-size:20px; text-align:left; font-family:verdana; color:grey;margin-right:10px;display:inline-block'><i class='fa fa-inr' style='font-size:20px'></i>"+result.price+"</del>";
	        						       	data+="<div style = 'font-size:20px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>"+result.discount+"% off</div></div>";
	        						       	$('#listing').append(data);
	        					    	},
	        					    	error:function() {
	        					    		alert(error);
	        					    	}
	        						});
	        				}
	        	            
	        	    	},
	        	    	error:function(){
	        	    		alert("error occurred");
	        	        	
	        	    	}
	        		});
	        
	    };
	    function SortAsscending(prop)
	    {
	    	$('#listing').empty();
	    	var ctxPath = "<%=request.getContextPath()%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/webapi/listings",
	        			dataType : "json", // data type of response
	        			success : function(result){
	        				for (i=0;i<result.length;i++)
        					{
        					    var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
        		    		    result[i]["ActualPrice"]=ActualPrice;
        					}
	        				result.sort(GetSortOrderAsscending(prop));//Pass the attribute to be sorted on
	        				load(result);
	        	    	},
	        	    	error:function(){
	        	    		alert("error occurred");
	        	        	
	        	    	}
	        		});
	    }
	    function SortDescending(prop)
	    {
	    	$('#listing').empty();
	    	var ctxPath = "<%=request.getContextPath()%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/webapi/listings",
	        			dataType : "json", // data type of response
	        			success : function(result){
	        				for (i=0;i<result.length;i++)
	        					{
	        					var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
	        		    		result[i]["ActualPrice"]=ActualPrice;
	        					}
	        				result.sort(GetSortOrderDescending(prop));//Pass the attribute to be sorted on
	        				load(result);
	        	    	},
	        	    	error:function(){
	        	    		alert("error occurred");
	        	        	
	        	    	}
	        		});
	    }
	    function load(result)
	    {
	    	for (i=0;i<result.length;i++)
	    		{
	    		var ActualPrice = Math.round(result[i].price - (result[i].discount/100)*result[i].price);
	    		result[i]["ActualPrice"]=ActualPrice;
	    		if(ActualPrice <  $("#MinPrice").val() || ActualPrice > $("#MaxPrice").val())
	    			continue;
	    		var data="";
				data+="<div class='col-sm-4, box'><a href='#'> <img src='"+result[i].imgUrl+"' alt=''></a>";
		        data+="<div style = 'font-size:20px; text-align:left'>"+result[i].listingName+"</div>";
		        data+="<div style = 'font-size:20px; position:left; font-family:verdana;margin-right:10px;display:inline-block'><i class='fa fa-inr' style='font-size:20px'></i>"+result[i].ActualPrice+"</div>";
		       	data+="<del style = 'font-size:20px; text-align:left; font-family:verdana; color:grey;margin-right:10px;display:inline-block'><i class='fa fa-inr' style='font-size:20px'></i>"+result[i].price+"</del>";
		       	data+="<div style = 'font-size:20px; text-align:left; font-family:verdana;display:inline-block;margin-right:10px;color:green'>"+result[i].discount+"% off</div></div>";
		       	$('#listing').append(data);
	    		};
	    };
	    
	    
	    function itemJson(id)
	    {
	    	var Item = JSON.stringify({
	    		"id" : id,
	    	    "subcategoryId": 1
	    	});
	    	return Item
	    };
	    
	    function starJson(listing)
	    {
	    	var review = JSON.stringify({
	    		"id" : 1,
	    	    "listingId" : listing.id,
	    	    "userId" : 1
	    	});
	    	return review;
	    }
	    
	    function GetSortOrderAsscending(prop) { 
	        return function(a, b) {  
	            if (a[prop] > b[prop]) {  
	                return 1;  
	            } else if (a[prop] < b[prop]) {  
	                return -1;  
	            }  
	            return 0;  
	        }  
	    } 
	    
	    function GetSortOrderDescending(prop) { 
	        return function(a, b) {  
	            if (a[prop] < b[prop]) {  
	                return 1;  
	            } else if (a[prop] > b[prop]) {  
	                return -1;  
	            }  
	            return 0;  
	        }  
	    }  
	    
	    function AvgStars(listing)
	    {
	    	var ctxPath = "<%=request.getContextPath()%>";
	    	$.ajax(
					{
						type : 'POST',
						contentType : 'application/json',
						url : ctxPath + "/webapi/reviews/listingId",
						dataType : "json", // data type of response
						data : starJson(listing[i]),
						success : function(result){
							var rating;
							var total=0;
							for(i=0;i<result.length;i++)
								{ 
								    total+=result[i].stars;
								}
							if(result.length==0)
								rating=3;
							else
							    rating = total / (result.length);
							listing["rating"]=rating;
				    	},
				    	error:function() {
				    		alert(error);
				    	}
					});
	    		alert(JSON.stringify(listing));
	    		alert(JSON.stringify(listing));
	    }
	    
	    
		
	</script>

</body>
</html>