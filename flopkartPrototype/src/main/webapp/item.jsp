<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- Meta -->

<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="MediaCenter, Template, eCommerce">
<meta name="robots" content="all">
<title>Floral Print Buttoned Top</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/main.css">
<link rel="stylesheet" href="./bootstrapFiles/css/blue.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.carousel.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.transitions.css">
<link rel="stylesheet" href="./bootstrapFiles/css/animate.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/rateit.css">
<link rel="stylesheet" href="./bootstrapFiles/css/lightbox.css">
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="./bootstrapFiles/css/font-awesome.css">
<link rel="stylesheet" href="./bootstrapFiles/fontawesome-all.css">

<!-- Fonts -->
<link href="./bootstrapFiles/css(3).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(1).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(2).css" rel="stylesheet" type="text/css">
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

.buynow
{
	    background: #fb641b;
    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .2);
    border: none;
    color: #fff;
    width:48%;
    padding: 18px 8px;
    border-radius: 2px;
}
.buynowdiv
{
	padding-top:20px;
}
.addtocart
{
	background: #ff9f00;
    box-shadow: 0 1px 2px 0 rgba(0, 0, 0, .2);
    border: none;
    color: #fff;
    width:48%;
    padding: 18px 8px;
    border-radius: 2px;
	
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
							<li><a href="sellerHub.jsp">Sell on Flipkart</a></li>
							<li><a href="#">24x7 Customer Care</a></li>
							<li><a data-toggle="modal" data-target="#loginModal">Track
									Order</a></li>
							<li><a data-toggle="modal">Sign up</a></li>
							<li><label id="Login_btn"> <a data-toggle="modal"
									data-target="#loginModal"> <i
										class="glyphicon glyphicon-user"></i> Log in
								</a>
							</label></li>
						</ul>
					</div>

					<!-- ============================================== Login Modal ============================================== -->


					<!-- ============================================== END Login Modal ============================================== -->

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
													<a href="detail.html"><img src="./images/cart.jpg"
														alt=""></a>
												</div>
											</div>
											<div class="col-xs-7">
												<h3 class="name">
													<a href="index.php?page-detail">Simple Product</a>
												</h3>
												<div class="price"><i class="fa fa-rupee-sign"></i> 600.00</div>
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
											<span class="text">Sub Total :</span><span class='price'><i class="fa fa-rupee-sign"></i> 600.00</span>
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
																<li><a href="index.jsp">Home</a></li>
																<li><a href="category.jsp">Category</a></li>
																<li><a href="detail.html">Detail</a></li>
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

	<!-- ============================================== HEADER : END ============================================== -->
<div class="breadcrumb">
	<div class="container">
		<div class="breadcrumb-inner">
			<ul class="list-inline list-unstyled">
				<li><a href="#">Home</a></li>
				<li><a href="#">Clothing</a></li>
				<li class='active' id="breadcrumblast">Floral Print Buttoned Top</li>
			</ul>
		</div><!-- /.breadcrumb-inner -->
	</div><!-- /.container -->
</div><!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
	<div class='container'>
		<div class='row single-product'>
			<div class="col-md-12">
            <div class="detail-block">
				<div class="row  wow fadeInUp">
                
					     <div class="col-xs-12 col-sm-6 col-md-5 gallery-holder">
    <div class="product-item-holder size-big single-product-gallery small-gallery">

        <div id="owl-single-product">
            <div class="single-product-gallery-item" id="slide1">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p9.jpg">
                    <img class="img-responsive" alt="" width="480px" src="./images/blank.gif" data-echo="./images/products/puma1.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide2">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p9.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p9.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide3">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p10.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p10.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide4">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p11.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p11.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide5">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p12.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p12.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide6">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p13.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p13.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide7">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p14.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p14.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide8">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p4.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p4.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

            <div class="single-product-gallery-item" id="slide9">
                <a data-lightbox="image-1" data-title="Gallery" href="./images/products/p5.jpg">
                    <img class="img-responsive" alt="" src="./images/blank.gif" data-echo="./images/products/p5.jpg" />
                </a>
            </div><!-- /.single-product-gallery-item -->

        </div><!-- /.single-product-slider -->




    </div><!-- /.single-product-gallery -->
    <div class="buynowdiv">
    <form action="underConstruct.html">
    	<button id="buynow" class="buynow">
    		Buy Now
    	</button>
    	<button class="addtocart" id="buynow">
    		Add to cart
    	</button>
    </form>
    </div>
</div><!-- /.gallery-holder -->        			
					<div class='col-sm-6 col-md-7 product-info-block'>
						<div class="product-info">
							<h1 class="name" id="product_title">Floral Print Buttoned Top</h1>
							
							<div class="rating-reviews m-t-20">
								<div class="row">
									<div class="col-sm-3">
										<div class="rating rateit-small"></div>
									</div>
									<div class="col-sm-8">
										<div class="reviews">
											<a href="#" class="lnk">(13 Reviews)</a>
										</div>
									</div>
								</div><!-- /.row -->		
							</div><!-- /.rating-reviews -->

							<div class="stock-container info-container m-t-10">
								<div class="row">
									<div class="col-sm-2">
										<div class="stock-box">
											<span class="label">Availability :</span>
										</div>	
									</div>
									<div class="col-sm-9">
										<div class="stock-box">
											<span class="value" id="available">In Stock</span>
										</div>	
									</div>
								</div><!-- /.row -->	
							</div><!-- /.stock-container -->

							<div class="description-container m-t-20" id="itemdescription">
								Pink printed woven top, has a round neck, long sleeves<br/>
								Material and Care : Polyester; Machine-wash
							</div><!-- /.description-container -->

							<div class="price-container info-container m-t-20">
								<div class="row">
									

									<div class="col-sm-6">
										<div class="price-box">
											<span class="price" id="discountedprice"><i class="fa fa-rupee-sign"></i>800.00</span>
											<span class="price-strike" id="price-strike"><i class="fa fa-rupee-sign"></i>900.00</span>
										</div>
									</div>

									<div class="col-sm-6">
										<div class="favorite-button m-t-10">
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Wishlist" href="#">
											    <i class="fa fa-heart"></i>
											</a>
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="Add to Compare" href="#">
											   <i class="fa fa-signal"></i>
											</a>
											<a class="btn btn-primary" data-toggle="tooltip" data-placement="right" title="E-mail" href="#">
											    <i class="fa fa-envelope"></i>
											</a>
										</div>
									</div>

								</div><!-- /.row -->
							</div><!-- /.price-container -->

							<div class="quantity-container info-container">
								<div class="row">
									
									<div class="col-sm-2">
										<span class="label">Qty :</span>
									</div>
									
									<div class="col-sm-2">
										<div class="cart-quantity">
											<div class="quant-input">
								                <div class="arrows">
								                  <div class="arrow plus gradient"><span class="ir"><i class="icon fa fa-sort-asc"></i></span></div>
								                  <div class="arrow minus gradient"><span class="ir"><i class="icon fa fa-sort-desc"></i></span></div>
								                </div>
								                <input type="text" value="1">
							              </div>
							            </div>
									</div>

									
									</div></div></div></div>
								</div><!-- /.row -->
							</div><!-- /.quantity-container -->
						</div><!-- /.product-info -->
					</div><!-- /.col-sm-7 -->
				</div><!-- /.row -->
                </div>
	
</body>
<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap.js"></script>
<script src="./bootstrapFiles/js/bootstrap.min.js"></script> 
<script src="./bootstrapFiles/js/lightbox.min.js"></script> 
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
$(document).ready(function(){

	<%--     <% FlopkartCategoryClient client = new FlopkartCategoryClient(); %> --%>
	<%-- 	String test1 = test.getImageURL();%> --%>
	<%-- 	var test = "<%=test1%>"; --%>
//	 	alert(test);
		fetch();

	});
	function fetch() 
	{
	    var ctxPath = "<%=request.getContextPath()%>";
		$.ajax(
		{
			type : 'GET',
			contentType : 'application/json',
			url : ctxPath + "/webapi/listings",
			dataType : "json", // data type of response
			success : function(result){
			for(var i in result){
	               //data+="<option value='"+result[i].id+"'>"+result[i].categoryName+"</option>";
	        	if(result[i].id==3)
	        		{
	        	//	alert("xx");
	        			document.getElementById("product_title").innerHTML=result[i].listingName;
	        			document.getElementById("itemdescription").innerHTML=result[i].description;
	        			if(result[i].quantity==0)
	        				{
	        					document.getElementById("available").innerHTML="Out Of Stock";
	        				}
	        			var discounted=result[i].price-result[i].price/10;
	        			var price="<i class='fa fa-rupee-sign'></i>"+discounted;
	        			document.getElementById("price-strike").innerHTML=result[i].price;
	        			
	        			//document.getElementById("discountedprice").innerHTML=result[i].price-result[i].price/10;
	        			 $('#discountedprice').html(price);
	        			 var image= "<a data-lightbox='image-1' data-title='Gallery' href='"+result[i].imgUrl+"'>"+
	        	     " <img class='img-responsive' alt='' width='480px' height='600px'src='./images/blank.gif' data-echo='"+result[i].imgUrl+"' />"+
	                        "</a>"
	                        alert(image);
	        			 $('#slide1').html(image);
	        		}
			}
	            
	    	},
	    	error:function() {
	        	//alert("error occurred");
	    	}
		});
	}
</script>
</html>