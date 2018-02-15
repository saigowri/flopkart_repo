<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<!-- saved from url=(0060)http://www.themesground.com/flipmart-demo/HTML/category.jsp -->
<html>
<!-- Meta -->

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

input:not (:focus ):valid ~ .floating-label {
	color: transparent;
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
							<li><a href="#">24x7 Customer Care</a></li>
							<li><a data-toggle="modal" data-target="#loginModal">Track
									Order</a></li>
							<li><a data-toggle="modal">Sign up</a></li>
							<li>
								<form id="myProfile" method="post" action="./myProfile.jsp">
									<label id="Login_btn"> <a data-toggle="modal"
										data-target="#loginModal"> Login </a>
									</label>
									<input type="submit" id="user_btn" name="user_btn" value="Guest"
										class="login_user btn btn-link" style="color: white; font-size: 90%;" /> 
									<input class="login_user" id="firstName" name="firstName" type="text" />
									<input class="login_user" id="lastName" name="lastName" type="text" /> 
									<input class="login_user" id="email" name="email" type="text" /> 
									<input class="login_user" id="phone" name="phone" type="text" /> 
									<input class="login_user" id="pic_URL" name="pic_URL" type="text" />
								</form>
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
												<img src="./images/login_img_1.png" align="center"
													align="bottom" width="200px" />
											</div>
										</div>
										<div class="col-sm-6"
											style="background-color: #ffffff; padding-left: 45px; padding-right: 45px; float: none; display: table-cell; vertical-align: top;">

											<div class="row"
												style="padding-top: 15px; padding-bottom: 15px;"></div>
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
												</span> <a> <span align="right" style="text-align: right">Forgot?</span>
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
												<button type="button"
													class="btn btn-primary btn-lg btn-block"
													style="border-radius: 0px; box-shadow: 0 8px 16px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19); color: #2455f4; background-color: white; border-width: 0mm"
													data-toggle="modal" data-dismiss="modal"
													data-target="#signupModal">New to Flopkart? Sign
													up</button>
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
							<a href="#"> <img height="50px"
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
											<a class="search-button" href="#"></a>
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
										<a href="checkout.html"
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
									<li class="active dropdown yamm-fw"><a href="#"
										data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">Home</a></li>
									<li class="dropdown yamm mega-menu"><a href="#"
										data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">Clothing</a>
										<ul class="dropdown-menu container">
											<li>
												<div class="yamm-content ">
													<div class="row">
														<div class="col-xs-12 col-sm-6 col-md-3 col-menu">
															<h2 class="title">Men</h2>
															<ul class="links">
																<li><a href="#">Dresses</a></li>
																<li><a href="#">Shoes </a></li>
																<li><a href="#">Jackets</a></li>
																<li><a href="#">Sunglasses</a></li>
																<li><a href="#">Sport Wear</a></li>
																<li><a href="#">Blazers</a></li>
																<li><a href="#">Shirts</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-6 col-md-3 col-menu">
															<h2 class="title">Women</h2>
															<ul class="links">
																<li><a href="#">Handbags</a></li>
																<li><a href="#">Jewellery</a></li>
																<li><a href="#">Swimwear </a></li>
																<li><a href="#">Tops</a></li>
																<li><a href="#">Flats</a></li>
																<li><a href="#">Shoes</a></li>
																<li><a href="#">Winter Wear</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-6 col-md-3 col-menu">
															<h2 class="title">Boys</h2>
															<ul class="links">
																<li><a href="#">Toys and Games</a></li>
																<li><a href="#">Jeans</a></li>
																<li><a href="#">Shirts</a></li>
																<li><a href="#">Shoes</a></li>
																<li><a href="#">School Bags</a></li>
																<li><a href="#">Lunch Box</a></li>
																<li><a href="#">Footwear</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-6 col-md-3 col-menu">
															<h2 class="title">Girls</h2>
															<ul class="links">
																<li><a href="#">Sandals </a></li>
																<li><a href="#">Shorts</a></li>
																<li><a href="#">Dresses</a></li>
																<li><a href="#">Jewellery</a></li>
																<li><a href="#">Bags</a></li>
																<li><a href="#">Night Dress</a></li>
																<li><a href="#">Swim Wear</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<!-- div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image"> <img class="img-responsive" src="./images/banners/top-menu-banner.jpg" alt=""> </div>
                          <!-- /.yamm-content -->
													</div>
												</div>
											</li>
										</ul></li>
									<li class="dropdown mega-menu"><a href="category.jsp"
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
																<li><a href="#">Gaming</a></li>
																<li><a href="#">Laptop Skins</a></li>
																<li><a href="#">Apple</a></li>
																<li><a href="#">Dell</a></li>
																<li><a href="#">Lenovo</a></li>
																<li><a href="#">Microsoft</a></li>
																<li><a href="#">Asus</a></li>
																<li><a href="#">Adapters</a></li>
																<li><a href="#">Batteries</a></li>
																<li><a href="#">Cooling Pads</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-12 col-md-2 col-menu">
															<h2 class="title">Desktops</h2>
															<ul class="links">
																<li><a href="#">Routers and Modems</a></li>
																<li><a href="#">CPUs, Processors</a></li>
																<li><a href="#">PC Gaming Store</a></li>
																<li><a href="#">Graphics Cards</a></li>
																<li><a href="#">Components</a></li>
																<li><a href="#">Webcam</a></li>
																<li><a href="#">Memory (RAM)</a></li>
																<li><a href="#">Motherboards</a></li>
																<li><a href="#">Keyboards</a></li>
																<li><a href="#">Headphones</a></li>
															</ul>
														</div>
														<!-- /.col -->

														<div class="col-xs-12 col-sm-12 col-md-2 col-menu">
															<h2 class="title">Cameras</h2>
															<ul class="links">
																<li><a href="#">Accessories</a></li>
																<li><a href="#">Binoculars</a></li>
																<li><a href="#">Telescopes</a></li>
																<li><a href="#">Camcorders</a></li>
																<li><a href="#">Digital</a></li>
																<li><a href="#">Film Cameras</a></li>
																<li><a href="#">Flashes</a></li>
																<li><a href="#">Lenses</a></li>
																<li><a href="#">Surveillance</a></li>
																<li><a href="#">Tripods</a></li>
															</ul>
														</div>
														<!-- /.col -->
														<div class="col-xs-12 col-sm-12 col-md-2 col-menu">
															<h2 class="title">Mobile Phones</h2>
															<ul class="links">
																<li><a href="#">Apple</a></li>
																<li><a href="#">Samsung</a></li>
																<li><a href="#">Lenovo</a></li>
																<li><a href="#">Motorola</a></li>
																<li><a href="#">LeEco</a></li>
																<li><a href="#">Asus</a></li>
																<li><a href="#">Acer</a></li>
																<li><a href="#">Accessories</a></li>
																<li><a href="#">Headphones</a></li>
																<li><a href="#">Memory Cards</a></li>
															</ul>
														</div>
														<div
															class="col-xs-12 col-sm-12 col-md-4 col-menu custom-banner">
															<a href="#"><img alt=""
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
									<li class="dropdown"><a href="#" class="dropdown-toggle"
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
										href="#">Todays offer</a></li>
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

	<!-- /.breadcrumb -->
	<div class="body-content outer-top-xs">
		<div class="container">
			<div class="row">

				<!-- ============================================== CONTENT ============================================== -->
				<div class="homebanner-holder">
					<!-- ========================================== SECTION – HERO ========================================= -->

					<div id="hero">
						<div id="owl-main" class="owl-carousel owl-inner-nav owl-ui-sm">
							<div class="item"
								style="background-image: url(./images/cat-banner-1.jpg);">
								<div class="container-fluid">
									<div class="caption bg-color vertical-center text-left">
										<div class="slider-header fadeInDown-1">Top Brands</div>
										<div class="big-text fadeInDown-1">New Collections</div>
										<div class="excerpt fadeInDown-2 hidden-xs">
											<span>Lorem ipsum dolor sit amet, consectetur
												adipisicing elit.</span>
										</div>
										<div class="button-holder fadeInDown-3">
											<a href="#"
												class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
												Now</a>
										</div>
									</div>
									<!-- /.caption -->
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- /.item -->

							<div class="item"
								style="background-image: url(./images/fashion-banner.jpg);">
								<div class="container-fluid">
									<div class="caption bg-color vertical-center text-left">
										<div class="slider-header fadeInDown-1">Spring 2018</div>
										<div class="big-text fadeInDown-1">
											Women <span class="highlight">Fashion</span>
										</div>
										<div class="excerpt fadeInDown-2 hidden-xs">
											<span>Nemo enim ipsam voluptatem quia voluptas sit
												aspernatur aut odit aut fugit</span>
										</div>
										<div class="button-holder fadeInDown-3">
											<a href="#"
												class="btn-lg btn btn-uppercase btn-primary shop-now-button">Shop
												Now</a>
										</div>
									</div>
									<!-- /.caption -->
								</div>
								<!-- /.container-fluid -->
							</div>
							<!-- /.item -->

						</div>
						<!-- /.owl-carousel -->
					</div>

					<!-- ========================================= SECTION – HERO : END ========================================= -->

					<!-- ============================================== INFO BOXES ============================================== -->
					<div class="info-boxes wow fadeInUp">
						<div class="info-boxes-inner">
							<div class="row">
								<div class="col-md-6 col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">money back</h4>
											</div>
										</div>
										<h6 class="text">30 Days Money Back Guarantee</h6>
									</div>
								</div>
								<!-- .col -->

								<div class="hidden-md col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">free shipping</h4>
											</div>
										</div>
										<h6 class="text">
											Shipping on orders over <i class="fa fa-rupee-sign"></i>99
										</h6>
									</div>
								</div>
								<!-- .col -->

								<div class="col-md-6 col-sm-4 col-lg-4">
									<div class="info-box">
										<div class="row">
											<div class="col-xs-12">
												<h4 class="info-box-heading green">Special Sale</h4>
											</div>
										</div>
										<h6 class="text">
											Extra <i class="fa fa-rupee-sign"></i>5 off on all items
										</h6>
									</div>
								</div>
								<!-- .col -->
							</div>
							<!-- /.row -->
						</div>
						<!-- /.info-boxes-inner -->

					</div>
					<!-- /.info-boxes -->
					<!-- ============================================== INFO BOXES : END ============================================== -->
					<!-- ============================================== SCROLL TABS ============================================== -->
					<div id="product-tabs-slider"
						class="scroll-tabs outer-top-vs wow fadeInUp">
						<div class="more-info-tab clearfix ">
							<h3 class="new-product-title pull-left">New Products</h3>
							<ul class="nav nav-tabs nav-tab-line pull-right"
								id="new-products-1">
								<li class="active"><a data-transition-type="backSlide"
									href="#all" data-toggle="tab">All</a></li>
								<li><a data-transition-type="backSlide" href="#smartphone"
									data-toggle="tab">Clothing</a></li>
								<li><a data-transition-type="backSlide" href="#laptop"
									data-toggle="tab">Electronics</a></li>
								<li><a data-transition-type="backSlide" href="#apple"
									data-toggle="tab">Shoes</a></li>
							</ul>
							<!-- /.nav-tabs -->
						</div>
						<div class="tab-content outer-top-xs">
							<div class="tab-pane in active" id="all">
								<div class="product-slider">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme"
										data-item="4">
										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="item.jsp"><img height="250px"
																src="./images/products/floralTop.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="item.jsp">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>50.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button data-toggle="tooltip"
																		class="btn btn-primary icon" type="button"
																		title="Add Cart">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a data-toggle="tooltip"
																	class="add-to-cart" href="item.jsp" title="Wishlist">
																		<i class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a data-toggle="tooltip"
																	class="add-to-cart" href="item.jsp" title="Compare">
																		<i class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/boots.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Mountain Snow Boots</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>199.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/redJacket.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Red Jacket</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>239.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/shirt.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Blue collared shirt</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>
																49.99 </span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i>80</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/floralTop.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/floralTop.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->
									</div>
									<!-- /.home-owl-carousel -->
								</div>
								<!-- /.product-slider -->
							</div>
							<!-- /.tab-pane -->

							<div class="tab-pane" id="smartphone">
								<div class="product-slider">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme">
										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p5.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"><i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p6.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p7.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info-->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p8.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p9.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p10.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->
									</div>
									<!-- /.home-owl-carousel -->
								</div>
								<!-- /.product-slider -->
							</div>
							<!-- /.tab-pane -->

							<div class="tab-pane" id="laptop">
								<div class="product-slider">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme">
										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p11.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p12.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p13.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p14.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p15.jpg" alt="image"></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p16.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Apple Iphone 5s 32GB</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->
									</div>
									<!-- /.home-owl-carousel -->
								</div>
								<!-- /.product-slider -->
							</div>
							<!-- /.tab-pane -->

							<div class="tab-pane" id="apple">
								<div class="product-slider">
									<div
										class="owl-carousel home-owl-carousel custom-carousel owl-theme">
										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p18.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p18.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p17.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag sale">
															<span>sale</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p16.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p13.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag new">
															<span>new</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Floral Print Buttoned</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->

										<div class="item item-carousel">
											<div class="products">
												<div class="product">
													<div class="product-image">
														<div class="image">
															<a href="underConstruct.html"><img height="250px"
																src="./images/products/p14.jpg" alt=""></a>
														</div>
														<!-- /.image -->

														<div class="tag hot">
															<span>hot</span>
														</div>
													</div>
													<!-- /.product-image -->

													<div class="product-info text-left">
														<h3 class="name">
															<a href="underConstruct.html">Samsung Galaxy S4</a>
														</h3>
														<div class="rating rateit-small"></div>
														<div class="description"></div>
														<div class="product-price">
															<span class="price"> <i class="fa fa-rupee-sign"></i>450.99
															</span> <span class="price-before-discount"><i
																class="fa fa-rupee-sign"></i> 800</span>
														</div>
														<!-- /.product-price -->

													</div>
													<!-- /.product-info -->
													<div class="cart clearfix animate-effect">
														<div class="action">
															<ul class="list-unstyled">
																<li class="add-cart-button btn-group">
																	<button class="btn btn-primary icon"
																		data-toggle="dropdown" type="button">
																		<i class="fa fa-shopping-cart"></i>
																	</button>
																	<button class="btn btn-primary cart-btn" type="button">Add
																		to cart</button>
																</li>
																<li class="lnk wishlist"><a class="add-to-cart"
																	href="underConstruct.html" title="Wishlist"> <i
																		class="icon fa fa-heart"></i>
																</a></li>
																<li class="lnk"><a class="add-to-cart"
																	href="underConstruct.html" title="Compare"> <i
																		class="fa fa-signal" aria-hidden="true"></i>
																</a></li>
															</ul>
														</div>
														<!-- /.action -->
													</div>
													<!-- /.cart -->
												</div>
												<!-- /.product -->

											</div>
											<!-- /.products -->
										</div>
										<!-- /.item -->
									</div>
									<!-- /.home-owl-carousel -->
								</div>
								<!-- /.product-slider -->
							</div>
							<!-- /.tab-pane -->

						</div>
						<!-- /.tab-content -->
					</div>
					<!-- /.scroll-tabs -->
					<!-- ============================================== SCROLL TABS : END ============================================== -->

				</div>
			</div>
		</div>
	</div>

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
	<script>
	$(document).ready(function()
			{
				$(".warning").hide();
				checkCookie();				
			})
	

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
		$('#user_btn').val("My Account");
		$('#firstName').val(user.firstName);
		$('#pic_URL').val(user.pic_URL);
		$('#lastName').val(user.lastName);
		$('#email').val(user.email);
		$('#phone').val(user.phone);
		$('#user_btn').show();
	}
	
	function setCookie(cname, cvalue, exminutes) 
	{
	    var d = new Date();
	    d.setTime(d.getTime() + (exminutes * 60 * 1000));
	    var expires = "expires="+d.toUTCString();
	    document.cookie = cname + "=" + cvalue + ";" + expires + ";path=/";
	}

	function deleteCookie(cname) 
	{
	    document.cookie = cname + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;path=/';
	};
	
	function getCookie(cname) 
	{
	    var name = cname + "=";
	    var ca = document.cookie.split(';');
	    for(var i = 0; i < ca.length; i++) 
	    {
	        var c = ca[i];
	        while (c.charAt(0) == ' ') 
	        {
	            c = c.substring(1);
	        }
	        if (c.indexOf(name) == 0) 
	        {
	            return c.substring(name.length, c.length);
	        }
	    }
	    return "";
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
				setCookie("user_details", JSON.stringify(user), 30);
				$('#loginModal').modal('toggle');
			}

			return false;
		}
	</script>

</body>
</html>