<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
    <%@ page import="com.iiitb.ooadvoid.CreateProperties" %>
    <%@ page import="com.iiitb.ooadvoid.client.FlopkartCategoryClient" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title>My Profile</title>
		
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
	input[type="file"] 
	{
	    display: none;
	}
	.custom-file-upload 
	{
	    border: 1px solid #ccc;
	    display: inline-block;
	    padding: 6px 12px;
	    cursor: pointer;
	}
</style>
	</head>

<body>
<!-- ============================================== HEADER ============================================== -->

<header class="header-style-1"> 
  
  <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        	<div class="cnt-account">
				<ul class="list-unstyled">
						<li><a href="#"><i class="fa fa-user"></i> My Account</a></li>
						<li><a href="#"><i class="fa fa-heart"></i> Wishlist</a></li>
						<li><a href="#"><i class="fa fa-shopping-cart"></i> My Cart</a></li>
						<li><a href="#"><i class="fa fa-check"></i> Checkout</a></li>
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
          <div class="logo"> <a href="#"> <img  height="50px" src="./images/flopkartLogo.jpg" alt=""> </a> </div>
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
                	<input class="search-field" placeholder="Search here..." />
                </div>
              	<div class="col-md-2">
                <a class="search-button" href="#" ></a> 
                </div>
              </div>
              </div>
            </form>
          </div>
          <!-- /.search-area --> 
          <!-- ============================================================= SEARCH AREA : END ============================================================= --> 
          </div>
        <!-- /.top-search-holder -->
        
        <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row"> 
          <!-- ============================================================= SHOPPING CART DROPDOWN ============================================================= -->
          
          <div class="dropdown dropdown-cart"> <a href="#" class="dropdown-toggle lnk-cart" data-toggle="dropdown">
            <div class="items-cart-inner">
              <div class="basket"> <i class="glyphicon glyphicon-shopping-cart"></i> </div>
              <div class="basket-item-count"><span class="count">2</span></div>
              <div class="total-price-basket"> <span class="lbl"> CART </span> </div>
            </div>
            </a>
            <ul class="dropdown-menu">
              <li>
                <div class="cart-item product-summary">
                  <div class="row">
                    <div class="col-xs-4">
                      <div class="image"> <a href="detail.html"></a> </div>
                    </div>
                    <div class="col-xs-7">
                      <h3 class="name"><a href="index.php?page-detail">Simple Product</a></h3>
                      <div class="price">$600.00</div>
                    </div>
                    <div class="col-xs-1 action"> <a href="#"><i class="fa fa-trash"></i></a> </div>
                  </div>
                </div>
                <!-- /.cart-item -->
                <div class="clearfix"></div>
                <hr>
                <div class="clearfix cart-total">
                  <div class="pull-right"> <span class="text">Sub Total :</span><span class='price'>$600.00</span> </div>
                  <div class="clearfix"></div>
                  <a href="checkout.html" class="btn btn-upper btn-primary btn-block m-t-20">Checkout</a> </div>
                <!-- /.cart-total--> 
                
              </li>
            </ul>
            <!-- /.dropdown-menu--> 
          </div>
          <!-- /.dropdown-cart --> 
          
          <!-- ============================================================= SHOPPING CART DROPDOWN : END============================================================= --> </div>
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
                          
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                            <h2 class="title">Women</h2>
                            <ul class="links">
                              <li><a href="#">Handbags</a></li>
                              <li><a href="#">Jwellery</a></li>
                              <li><a href="#">Swimwear </a></li>
                              <li><a href="#">Tops</a></li>
                              <li><a href="#">Flats</a></li>
                              <li><a href="#">Shoes</a></li>
                              <li><a href="#">Winter Wear</a></li>
                            </ul>
                          </div>
                          <!-- /.col -->
                          
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
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
                          
                          <div class="col-xs-12 col-sm-6 col-md-2 col-menu">
                            <h2 class="title">Girls</h2>
                            <ul class="links">
                              <li><a href="#">Sandals </a></li>
                              <li><a href="#">Shorts</a></li>
                              <li><a href="#">Dresses</a></li>
                              <li><a href="#">Jwellery</a></li>
                              <li><a href="#">Bags</a></li>
                              <li><a href="#">Night Dress</a></li>
                              <li><a href="#">Swim Wear</a></li>
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
                          <div class="col-xs-12 col-sm-12 col-md-4 col-menu custom-banner"> </div>
                        </div>
                        <!-- /.row --> 
                      </div>
                      <!-- /.yamm-content --> </li>
                  </ul>
                </li>
                <li class="dropdown hidden-sm"> <a href="category.html">Health and Beauty <span class="menu-label new-menu hidden-xs">new</span> </a> </li>
                <li class="dropdown hidden-sm"> <a href="category.html">Watches</a> </li>
                <li class="dropdown"> <a href="contact.html">Jewellery</a> </li>
                <li class="dropdown"> <a href="contact.html">Shoes</a> </li>
                <li class="dropdown"> <a href="contact.html">Kids and Girls</a> </li>
                <li class="dropdown"> <a href="#" class="dropdown-toggle" data-hover="dropdown" data-toggle="dropdown">Pages</a>
                  <ul class="dropdown-menu pages">
                    <li>
                      <div class="yamm-content">
                        <div class="row">
                          <div class="col-xs-12 col-menu">
                            <ul class="links">
                              <li><a href="home.html">Home</a></li>
                              <li><a href="category.html">Category</a></li>
                              <li><a href="detail.html">Detail</a></li>
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
                <li class="dropdown  navbar-right special-menu"> <a href="#">Todays offer</a> </li>
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

<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar"> 
        <div class="sidebar-module-container">
          <div class="sidebar-filter"> 
            <!-- ============================================== IMAGE============================================== -->
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <h5 class="section-title">Hello,</h5>
              <div class="widget-header">
                <h4 class="widget-title" id="userID"></h4>
              </div>
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li>
						<img  id="dp" height="100px"  src="#" >
                  	
					<label class="custom-file-upload" id="no_dp">				
						<form id="update_img" method="post" action="#" enctype="multipart/form-data">
							<input type="file"/>
							<img height="50px" width="50px" src="./images/profile-pic-male_icon.svg"> Add Image
						</form>
					</label>
				 </li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
            <!-- ============================================== IMAGE: END ============================================== --> 
            
            
            <!-- ============================================== Other TAGS ============================================== -->
          <!----------- Account------------->
            <div class="sidebar-widget  wow fadeInUp outer-top-vs " style="visibility: hidden; animation-name: none;">
              <h5 class="head"><b>MY ORDERS</b></h5>
            </div>
                    <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Account Settings</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="#">Profile Information</a></h5></li>
                  <li><h5><a href="#">Manage Addresses</a></h5></li>
                  <li><h5><a href="#">Notification Preferences</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu -->  
                    <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i>My Stuff</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="#">My wishlist</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu --> 
        
            <div class="sidebar-widget  wow fadeInUp outer-top-vs " style="visibility: hidden; animation-name: none;">
            <form id="logout_form" action="./index.jsp">
              <input type="submit" class="head btn-link" style="color:black;font-weight:bold" value="LOGOUT" onclick="logout();"></input>
            </form>
            </div>
            
            <!-- ============================================== Other: END ============================================== -->

          </div>
          <!-- /.sidebar-filter --> 
        </div>
        <!-- /.sidebar-module-container --> 
      </div>
      <!-- /.sidebar -->
      <div class="col-md-9"> 
        <!-- ========================================== SECTION – HERO ========================================= -->

		
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>PERSONAL INFORMATION</B></h4><a> edit </a>
                
              </div>
	              
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="firstName" id="firstName" required disabled
              autocomplete="name" value="Flipkart">
            </div>
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="lastName"  id="lastName" required disabled 
              autocomplete="name" value="Flipkart">
            </div>
         </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
            
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">

         
	              
	    <div id="gender-row" class="row">
	   
	      <div class="col-md-2 sidebar"> 
               Your Gender:
            </div>
	      <div class="col-md-5 sidebar"> 
              <input type="radio" name="gender">
              <label>Male</label>
            </div>
	      <div class="col-md-5 sidebar"> 
              <input type="radio" name="gender">
              <label>Female</label>
            </div>
            </div>
        </div>
        <!-- /.search-result-container --> 
        
      </div>
		
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>EMAIL ADDRESS</B></h4>
              </div>
	              
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <a> edit </a>
            </div>
	      <div class="col-md-5 sidebar"> 
              <a> Change Password </a>
            </div>
         </div>
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="email" id="email" required disabled 
              autocomplete="name" value="Flipkart">
            </div>
         </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col --> 
      
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>MOBILE NUMBER</B></h4>
              </div><a> edit </a>
	              
	    <div class="row">
	      <div class="col-md-5 sidebar"> 
              <input type="text" class="form-control input-lg"  name="phone" id="phone" required disabled 
              autocomplete="name" value="Flipkart">
            </div>
         </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col --> 
      
        <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title"><B>FAQS</B></h4>
              </div><a> edit </a>
	              
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><b>Question</b></h5></li>
                  <li><h5>Answer</h5></li>
                  <li><h5><b>Question</b></h5></li>
                  <li><h5>Answer</h5></li>
                </ul>
              </div>
        
              <!-- /.sidebar-widget-body --> 
            </div>
        <!-- /.search-result-container --> 
        
      </div>
      <!-- /.col -->             
      
    </div>
    <!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
</div>
<!-- /.body-content --> 


<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<script src="./bootstrapFiles/js/jquery-1.11.1.min.js"></script> 
<script src="./bootstrapFiles/js/bootstrap.js"></script>
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

function diplayUser(user)
{
	$('#firstName').val(user.firstName);
	$('#lastName').val(user.lastName);
	$('#email').val(user.email);
	$('#phone').val(user.phone);
	$('#userID').html(user.firstName+" "+user.lastName);
	if(!(user.pic_URL in user))
	{	
		$("#no_dp").show();
		$("#dp").hide();
	}
	else
	{	
	    <% CreateProperties cp = new CreateProperties(); %>
	    <% AccessProperties ap = new AccessProperties(); %>
	    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
        $('#dp').attr('src',imgServerURL+user.pic_URL);
		$("#dp").show();
		$("#no_dp").hide();
	}
}

function logout()
{
	deleteCookie("user_details");
}
</script>
</body></html>