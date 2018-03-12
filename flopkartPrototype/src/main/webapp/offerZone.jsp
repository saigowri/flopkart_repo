<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<%@ page import="com.iiitb.ooadvoid.CreateProperties" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Flopkart Offer Zone</title>
<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/main.css">
<link rel="stylesheet" href="./bootstrapFiles/css/blue.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.carousel.css">
<link rel="stylesheet" href="./bootstrapFiles/css/owl.transitions.css">
<link rel="stylesheet" href="./bootstrapFiles/css/animate.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/rateit.css">
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="./bootstrapFiles/css/font-awesome.css">
<link rel="stylesheet" href="./bootstrapFiles/fontawesome-all.css">

<!-- Fonts -->
<link href="./bootstrapFiles/css(3).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(1).css" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(2).css" rel="stylesheet" type="text/css">
<style>

.custom-file-upload {
	border: 1px solid #ccc;
	display: inline-block;
	padding: 6px 12px;
	cursor: pointer;
}

.dp .tooltiptext {
	visibility: hidden;
	background-color: black;
	color: #fff;
	text-align: center;
	border-radius: 6px;
	padding: 3px 0;
	/* Position the tooltip */
	position: absolute;
	z-index: 1;
	overflow:visible;
}

.dp:hover .tooltiptext {
    visibility: visible;
}
</style>
</head>

<body>
<!-- ============================================== HEADER ============================================== -->

<header class="header-style-1"> 
  
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

					<div class="col-xs-12 col-sm-12 col-md-6 top-search-holder">
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
					
					<div class="col-xs-12 col-sm-12 col-md-4">
					<ul class="horizontal">
						
						<li id="registered"><div>
						<!-- ============================================================= MY ACCOUNT ============================================================= -->
						<div class="dropdown">
								<a href="#" style="font-size: 16px; letter-spacing: 0.1px; font-weight: 600;
						 		color: white;" id="menu1" data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">My Account 
						 		<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
									<li role="presentation"
											style="display: flex; align-items: center; width: 100%;">
											<a href="myProfile.jsp"><i style="color: #157ed2"
												class="fas fa-user-circle"></i> My Profile</a></li>
									<li role="presentation" class="divider"></li>
									<li role="presentation" style="display: flex; align-items: center; width: 100%;"><a href="underConstruct.html">
									<i style="color: #157ed2" class="fas fa-list"></i> Orders</a></li>
									<li role="presentation" class="divider"></li>
									<li role="presentation" style="display: flex; align-items: center; width: 100%;"><a href="underConstruct.html">
									<i style="color: #157ed2" class="fas fa-heart"></i> Wishlist</a></li>
								</ul>
							</div>
						</div>
						<!-- ============================================================= MY ACCOUNT END ============================================================= -->
						</li>
												
						<li>
						<!-- ============================================================= MORE OPTIONS ============================================================= -->
							<div class="dropdown">
								<a href="#" style="font-size: 16px; letter-spacing: 0.1px; font-weight: 600;
						 		color: white;" id="menu1" data-hover="dropdown" class="dropdown-toggle"
										data-toggle="dropdown">More 
						 		<span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu" aria-labelledby="menu1">
									<li role="presentation"
											style="display: flex; align-items: center; width: 100%;">
											<a href="sellerHub.jsp"><i style="color: #157ed2"
												class="fas fa-briefcase"></i> Sell on Flopkart</a></li>
									<li role="presentation" class="divider"></li>
									<li role="presentation" style="display: flex; align-items: center; width: 100%;"><a href="underConstruct.html">
									<i style="color: #157ed2" class="fas fa-comments"></i> 24x7
											Customer Care</a></li>
									<li role="presentation" class="divider"></li>
									<li role="presentation" style="display: flex; align-items: center; width: 100%;"><a href="underConstruct.html">
									<i style="color: #157ed2" class="fas fa-chart-line"></i> Advertise</a></li>
								</ul>
							</div>
							<!-- ============================================================= MORE OPTIONS END ============================================================= -->
						</li>
						
						<li><div>
						<!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
							<a style="font-size: 16px; letter-spacing: 0.1px; font-weight: 600;
						 		color: white;" href="cart.jsp"><i style="color: white" class="fas fa-shopping-cart"></i> Cart</a>
						<!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= -->
						</div></li>						
						</ul>
				</div>
					<!-- col-md-4 -->
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
       <button data-target="#mc-horizontal-menu-collapse" data-toggle="collapse" class="navbar-toggle collapsed" type="button"> 
       <span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span> </button>
        </div>
        <div class="nav-bg-class">
          <div class="navbar-collapse collapse" id="mc-horizontal-menu-collapse">
            <div class="nav-outer">
              <ul class="nav navbar-nav">
                <li class="active dropdown yamm-fw"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Home</a> </li>
                <li class="dropdown yamm mega-menu"> <a href="home.html" data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Clothing</a>
                  <ul class="dropdown-menu container">
                    <li>
                      <div class="yamm-content ">
                        <div class="row">
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
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
                          
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
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
                          
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
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
                          
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                            <h2 class="title">Girls</h2>
                            <ul class="links">
                              <li><a href="underConstruct.html">Sandals </a></li>
                              <li><a href="underConstruct.html">Shorts</a></li>
                              <li><a href="underConstruct.html">Dresses</a></li>
                              <li><a href="underConstruct.html">Jwellery</a></li>
                              <li><a href="underConstruct.html">Bags</a></li>
                              <li><a href="underConstruct.html">Night Dress</a></li>
                              <li><a href="underConstruct.html">Swim Wear</a></li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          
                          <div class="col-xs-12 col-sm-6 col-md-4 col-menu banner-image"> <img class="img-responsive" src="" alt="" /> </div>
                          <!-- /.yamm-content --> 
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="dropdown mega-menu"> 
                <a href="category.html"  data-hover="dropdown" class="dropdown-toggle" data-toggle="dropdown">Electronics <span class="menu-label hot-menu hidden-xs">hot</span> </a>
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
                          <div class="col-xs-12 col-sm-12 col-md-4 col-menu custom-banner"> </div>
                        </div>
                        <!-- /.row --> 
                      </div>
                      <!-- /.yamm-content --> </li>
                  </ul>
                </li>
                <li class="dropdown hidden-sm"> <a href="underConstruct.html">Health and Beauty <span class="menu-label new-menu hidden-xs">new</span> </a> </li>
                <li class="dropdown hidden-sm"> <a href="underConstruct.html">Watches</a> </li>
                <li class="dropdown"> <a href="underConstruct.html">Jewellery</a> </li>
                <li class="dropdown"> <a href="underConstruct.html">Shoes</a> </li>
                <li class="dropdown"> <a href="underConstruct.html">Kids and Girls</a> </li>
                <li class="dropdown"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">Pages</a>
                  <ul class="dropdown-menu pages">
                    <li>
                      <div class="yamm-content">
                        <div class="row">
                          <div class="col-xs-12 col-menu">
                            <ul class="links">
                              <li><a href="home.html">Home</a></li>
                              <li><a href="category.html">Category</a></li>
                              <li><a href="item.jsp">Detail</a></li>
                              <li><a href="shopping-cart.html">Shopping Cart Summary</a></li>
                              <li><a href="checkout.html">Checkout</a></li>
                              <li><a href="blog.html">Blog</a></li>
                              <li><a href="blog-details.html">Blog Detail</a></li>
                              <li><a href="contact.html">Contact</a></li>
                              <li><a href="sign-in.html">Sign In</a></li>
                              <li><a href="my-wishlist.html">Wishlist</a></li>
                              <li><a href="terms-conditions.html">Terms and Condition</a></li>
                              <li><a href="track-orders.html">Track Orders</a></li>
                              <li><a href="product-comparison.html">Product-Comparison</a></li>
                              <li><a href="faq.html">FAQ</a></li>
                              <li><a href="404.html">404</a></li>
                            </ul>
                          </div>
                        </div>
                      </div>
                    </li>
                  </ul>
                </li>
                <li class="dropdown  navbar-right special-menu"> <a href="underConstruct.html">Todays offer</a> </li>
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


<div class="body-content outer-top-xs" style="padding-right: 20px; ">
  <div class="container" style="margin-left: 10px; width: 100%">
    <div class="row">
      <div class="col-md-2 sidebar"> 
        <!-- ================================== TOP NAVIGATION ================================== -->
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"></div>
          <div style="display: inline-block; font-size: 20px; font-weight: bold; font-family: Arial, sans-serif; color: #000; 
            border-bottom: solid 1px rgba(0, 0, 0, .05); padding: 8px 10px 10px; line-height: 32px;">
             <i style="color:#157ed2; width: 15px; height: 15px; vertical-align: middle;
    			margin-right: 9px;" class="fas fa-tags"></i>
    			 Offer Zone
    	  </div>
          <nav class="yamm megamenu-horizontal">
            <ul class="nav">
              <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-shopping-bag" aria-hidden="true"></i>Clothing</a>
                <ul class="dropdown-menu mega-menu">
                  <li class="yamm-content">
                    <div class="row">
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Shoes </a></li>
                          <li><a href="#">Jackets</a></li>
                          <li><a href="#">Sunglasses</a></li>
                          <li><a href="#">Sport Wear</a></li>
                          <li><a href="#">Blazers</a></li>
                          <li><a href="#">Shirts</a></li>
                          <li><a href="#">Shorts</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Handbags</a></li>
                          <li><a href="#">Jwellery</a></li>
                          <li><a href="#">Swimwear </a></li>
                          <li><a href="#">Tops</a></li>
                          <li><a href="#">Flats</a></li>
                          <li><a href="#">Shoes</a></li>
                          <li><a href="#">Winter Wear</a></li>
                          <li><a href="#">Night Suits</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Toys &amp; Games</a></li>
                          <li><a href="#">Jeans</a></li>
                          <li><a href="#">Shirts</a></li>
                          <li><a href="#">Shoes</a></li>
                          <li><a href="#">School Bags</a></li>
                          <li><a href="#">Lunch Box</a></li>
                          <li><a href="#">Footwear</a></li>
                          <li><a href="#">Wipes</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Sandals </a></li>
                          <li><a href="#">Shorts</a></li>
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Jwellery</a></li>
                          <li><a href="#">Bags</a></li>
                          <li><a href="#">Night Dress</a></li>
                          <li><a href="#">Swim Wear</a></li>
                          <li><a href="#">Toys</a></li>
                        </ul>
                      </div>
                      <!-- /.col --> 
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-laptop" aria-hidden="true"></i>Electronics</a> 
                <!-- ================================== MEGAMENU VERTICAL ================================== -->
                <ul class="dropdown-menu mega-menu">
                  <li class="yamm-content">
                    <div class="row">
                      <div class="col-xs-12 col-sm-12 col-lg-4">
                        <ul>
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
                      <div class="col-xs-12 col-sm-12 col-lg-4">
                        <ul>
                          <li><a href="#">Routers &amp; Modems</a></li>
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
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> 
                <!-- ================================== MEGAMENU VERTICAL ================================== --> </li>
              <!-- /.menu-item -->
              
              <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-paw" aria-hidden="true"></i>Shoes</a>
                <ul class="dropdown-menu mega-menu">
                  <li class="yamm-content">
                    <div class="row">
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Shoes </a></li>
                          <li><a href="#">Jackets</a></li>
                          <li><a href="#">Sunglasses</a></li>
                          <li><a href="#">Sport Wear</a></li>
                          <li><a href="#">Blazers</a></li>
                          <li><a href="#">Shirts</a></li>
                          <li><a href="#">Shorts</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Handbags</a></li>
                          <li><a href="#">Jwellery</a></li>
                          <li><a href="#">Swimwear </a></li>
                          <li><a href="#">Tops</a></li>
                          <li><a href="#">Flats</a></li>
                          <li><a href="#">Shoes</a></li>
                          <li><a href="#">Winter Wear</a></li>
                          <li><a href="#">Night Suits</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Toys &amp; Games</a></li>
                          <li><a href="#">Jeans</a></li>
                          <li><a href="#">Shirts</a></li>
                          <li><a href="#">Shoes</a></li>
                          <li><a href="#">School Bags</a></li>
                          <li><a href="#">Lunch Box</a></li>
                          <li><a href="#">Footwear</a></li>
                          <li><a href="#">Wipes</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Sandals </a></li>
                          <li><a href="#">Shorts</a></li>
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Jwellery</a></li>
                          <li><a href="#">Bags</a></li>
                          <li><a href="#">Night Dress</a></li>
                          <li><a href="#">Swim Wear</a></li>
                          <li><a href="#">Toys</a></li>
                        </ul>
                      </div>
                      <!-- /.col --> 
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-clock-o"></i>Watches</a>
                <ul class="dropdown-menu mega-menu">
                  <li class="yamm-content">
                    <div class="row">
                      <div class="col-xs-12 col-sm-12 col-lg-4">
                        <ul>
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
                      <div class="col-xs-12 col-sm-12 col-lg-4">
                        <ul>
                          <li><a href="#">Routers &amp; Modems</a></li>
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
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-diamond"></i>Jewellery</a>
                <ul class="dropdown-menu mega-menu">
                  <li class="yamm-content">
                    <div class="row">
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Shoes </a></li>
                          <li><a href="#">Jackets</a></li>
                          <li><a href="#">Sunglasses</a></li>
                          <li><a href="#">Sport Wear</a></li>
                          <li><a href="#">Blazers</a></li>
                          <li><a href="#">Shirts</a></li>
                          <li><a href="#">Shorts</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Handbags</a></li>
                          <li><a href="#">Jwellery</a></li>
                          <li><a href="#">Swimwear </a></li>
                          <li><a href="#">Tops</a></li>
                          <li><a href="#">Flats</a></li>
                          <li><a href="#">Shoes</a></li>
                          <li><a href="#">Winter Wear</a></li>
                          <li><a href="#">Night Suits</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Toys &amp; Games</a></li>
                          <li><a href="#">Jeans</a></li>
                          <li><a href="#">Shirts</a></li>
                          <li><a href="#">Shoes</a></li>
                          <li><a href="#">School Bags</a></li>
                          <li><a href="#">Lunch Box</a></li>
                          <li><a href="#">Footwear</a></li>
                          <li><a href="#">Wipes</a></li>
                        </ul>
                      </div>
                      <!-- /.col -->
                      <div class="col-sm-12 col-md-3">
                        <ul class="links list-unstyled">
                          <li><a href="#">Sandals </a></li>
                          <li><a href="#">Shorts</a></li>
                          <li><a href="#">Dresses</a></li>
                          <li><a href="#">Jwellery</a></li>
                          <li><a href="#">Bags</a></li>
                          <li><a href="#">Night Dress</a></li>
                          <li><a href="#">Swim Wear</a></li>
                          <li><a href="#">Toys</a></li>
                        </ul>
                      </div>
                      <!-- /.col --> 
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <li class="dropdown menu-item"> <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-heartbeat"></i>Health and Beauty</a>
                <ul class="dropdown-menu mega-menu">
                  <li class="yamm-content">
                    <div class="row">
                      <div class="col-xs-12 col-sm-12 col-lg-4">
                        <ul>
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
                      <div class="col-xs-12 col-sm-12 col-lg-4">
                        <ul>
                          <li><a href="#">Routers &amp; Modems</a></li>
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
                    </div>
                    <!-- /.row --> 
                  </li>
                  <!-- /.yamm-content -->
                </ul>
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
            </ul>
            <!-- /.nav --> 
          </nav>
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu --> 
        <!-- ================================== TOP NAVIGATION : END ================================== -->
   	  </div> <!-- col-md-2 -->
	 
	  <div class="col-md-10">
	  	<div class="search-result-container ">
          <div id="myTabContent" class="tab-content category-list">
			<div class="row">
				<div style="border-bottom: 1px solid rgba(0, 0, 0, .1);">
					<h2 style="margin-top:0; margin-left: 20px; font-size: 22px; font-family: Roboto, Arial, sans-serif; line-height: 32px; display: inline-block; font-weight: 500;">Deals of the Day</h2>
					<img src="./images/offerZone/timer.svg" height="24" width="24" style="position: relative; display: inline-block; margin-right: 8px; 
					margin-left: 20px;"/>
					<p id="timer" style="position: relative; display: inline-block; margin-right: 8px; 
					font-size: 16px; color: #7f7f7f;padding-top: 7px;"></p>
				</div>
				
				<div class="category-product">
	                  <div class="col-sm-6 col-md-3 wow fadeInUp">
	                    <div class="products">
	                      <div class="product">
	                         <div class="product-image">
	                           <div class="image"> <a href="item.jsp"><img style="opacity: 1;" src="./images/products/p5.jpg" alt=""></a> </div>
	                         </div> <!-- /.product-image -->
	                         <div class="product-info text-center">
	                           <div style="font-size: 14px; font-weight: 500; margin-top: 15px; white-space: nowrap;
	                             overflow: hidden; text-overflow: ellipsis;"><a href="item.jsp">Category Name 1</a></div>
	                           <div style="color: #388e3c; padding-top: 8px; white-space: nowrap; overflow: hidden;
	                             text-overflow: ellipsis;">Deal Name 1</div>
	                         </div> <!-- product-info --> 
	                      </div> <!-- /.product --> 
	                    </div> <!-- /.products --> 
	                  </div>
	                  <!-- /.item -->
                  	  
                  	  <div class="col-sm-6 col-md-3 wow fadeInUp">
	                    <div class="products">
	                      <div class="product">
	                         <div class="product-image">
	                           <div class="image"> <a href="item.jsp"><img style="opacity: 1;" src="./images/products/p2.jpg" alt=""></a> </div>
	                         </div> <!-- /.product-image -->
	                         <div class="product-info text-center">
	                           <div style="font-size: 14px; font-weight: 500; margin-top: 15px; white-space: nowrap;
	                             overflow: hidden; text-overflow: ellipsis;"><a href="item.jsp">Category Name 2</a></div>
	                           <div style="color: #388e3c; padding-top: 8px; white-space: nowrap; overflow: hidden;
	                             text-overflow: ellipsis;">Deal Name 2</div>
	                         </div> <!-- product-info --> 
	                      </div> <!-- /.product --> 
	                    </div> <!-- /.products --> 
	                  </div>
	                  <!-- /.item -->
	                  
	                  <div class="col-sm-6 col-md-3 wow fadeInUp">
	                    <div class="products">
	                      <div class="product">
	                         <div class="product-image">
	                           <div class="image"> <a href="item.jsp"><img style="opacity: 1;" src="./images/products/p3.jpg" alt=""></a> </div>
	                         </div> <!-- /.product-image -->
	                         <div class="product-info text-center">
	                           <div style="font-size: 14px; font-weight: 500; margin-top: 15px; white-space: nowrap;
	                             overflow: hidden; text-overflow: ellipsis;"><a href="item.jsp">Category Name 3</a></div>
	                           <div style="color: #388e3c; padding-top: 8px; white-space: nowrap; overflow: hidden;
	                             text-overflow: ellipsis;">Deal Name 3</div>
	                         </div> <!-- product-info --> 
	                      </div> <!-- /.product --> 
	                    </div> <!-- /.products --> 
	                  </div>
	                  <!-- /.item -->
	                  
	                  <div class="col-sm-6 col-md-3 wow fadeInUp">
	                    <div class="products">
	                      <div class="product">
	                         <div class="product-image">
	                           <div class="image"> <a href="item.jsp"><img style="opacity: 1;" src="./images/products/p4.jpg" alt=""></a> </div>
	                         </div> <!-- /.product-image -->
	                         <div class="product-info text-center">
	                           <div style="font-size: 14px; font-weight: 500; margin-top: 15px; white-space: nowrap;
	                             overflow: hidden; text-overflow: ellipsis;"><a href="item.jsp">Category Name 4</a></div>
	                           <div style="color: #388e3c; padding-top: 8px; white-space: nowrap; overflow: hidden;
	                             text-overflow: ellipsis;">Deal Name 4</div>
	                         </div> <!-- product-info --> 
	                      </div> <!-- /.product --> 
	                    </div> <!-- /.products --> 
	                  </div>
	                  <!-- /.item -->
                </div> <!-- category-product -->
              </div> <!-- row -->
           </div> <!-- tab-content category-list -->
          </div>  <!-- search-result-container -->
      </div> <!-- col-md-9 -->
     </div> <!-- row -->
   </div> <!-- container -->
  </div> <!-- body-content outer-top-xs -->
  
  
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
<script src="./customJavascripts/cookies.js"></script>
<script src="./customJavascripts/header.js"></script>
<script>
$(document).ready(function() 
{
    $("#gender-row").hide();
	checkCookie();	
});

function checkCookie() 
{
    var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 10);
		diplayUser(JSON.parse(user));
    } 
    else 
    {
    	logout();
    }
}

function resetCookie() 
{
    var user = getCookie("user_details");
    if (user != "") 
    {
		setCookie("user_details", user, 10);
		diplayUser(JSON.parse(user));
    } 
    else 
    {
    	logout();
    }
}

$("#dp1").hover(function(){
	$("#tooltiptext").show();
    $("#tooltiptext").text($("#email").val()+"\n"+$("#userID").text());
});

function diplayUser(user)
{
	$('#firstName').val(user.firstName);
	$('#lastName').val(user.lastName);
	$('#email').val(user.email);
	$('#ID').val(user.id);
	$('#phone').val(user.phone);
	$('#userID').html(user.firstName+" "+user.lastName);
<%--     <% CreateProperties cp = new CreateProperties(); %> --%>
    <% AccessProperties ap = new AccessProperties(); %>
    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
	if(!("pic_URL" in user) || user.pic_URL=="")
	{	
		$("#no_dp").show();
		$("#dp").hide();
	}
	else
	{	
        $('#dp1').attr('src',imgServerURL+user.pic_URL);
		$("#dp").show();
		$("#no_dp").hide();
	}
}

function logout()
{
	deleteCookie("user_details");
}


// Update the count down every 1 second
var x = setInterval(function() {
	
	//Set the date we're counting down to
	var countDownDate = new Date("Mar 13, 2018 15:37:25").getTime();
	
    // Get todays date and time
    var now = new Date().getTime();
    
    // Find the distance between now an the count down date
    var distance = countDownDate - now;
    
    // Time calculations for hours, minutes and seconds
    var hours = Math.floor((distance % (1000 * 60 * 60 * 24)) / (1000 * 60 * 60));
    var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
    var seconds = Math.floor((distance % (1000 * 60)) / 1000);
    
    // Output the result in an element with id="demo"
    document.getElementById("timer").innerHTML = hours + " : "
    + minutes + " : " + seconds + " Left";
    
    // If the count down is over, write some text 
    if (distance < 0) {
        clearInterval(x);
        document.getElementById("timer").innerHTML = "EXPIRED";
    }
}, 1000);
</script>
</body>
</html>