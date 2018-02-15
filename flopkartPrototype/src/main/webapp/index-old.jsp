<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!-- saved from url=(0060)http://www.themesground.com/flipmart-demo/HTML/category.html -->
<html>
<!-- Meta -->

<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
<meta name="description" content="">
<meta name="author" content="">
<meta name="keywords" content="MediaCenter, Template, eCommerce">
<meta name="robots" content="all">
<title>Welcome to Flopkart</title>

<!-- Bootstrap Core CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">

<!-- Customizable CSS -->
<link rel="stylesheet" href="./bootstrapFiles/css/main.css">
<link rel="stylesheet" href="./bootstrapFiles/blue.css">
<link rel="stylesheet" href="./bootstrapFiles/owl.carousel.css">
<link rel="stylesheet" href="./bootstrapFiles/owl.transitions.css">
<link rel="stylesheet" href="./bootstrapFiles/animate.min.css">
<link rel="stylesheet" href="./bootstrapFiles/rateit.css">
<link rel="stylesheet" href="./bootstrapFiles/bootstrap-select.min.css">

<!-- Icons/Glyphs -->
<link rel="stylesheet" href="./bootstrapFiles/font-awesome.css">

<!-- Fonts -->
<link href="./bootstrapFiles/css(3)" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(1)" rel="stylesheet" type="text/css">
<link href="./bootstrapFiles/css(2)" rel="stylesheet" type="text/css">
</head>

  <style>	
   input
   {
   		display:block;
   		border:none;
   		border-bottom:1px solid #ccc;
   		width:100%
   	}
   
  .floating-div 
  {
	  position: relative; /*  make label relate to div  */
	  padding-top: 5%;  /*  make space for label      */
	}
	.floating-label {
	  position: absolute;
	  pointer-events: none;
	  top: 20%;
	  color:#878787;
	}
	input:focus ~ .floating-label {
	  transition: 0.2s ease all;
	  top: -5%;
      font-size: 70%;
	}
	input:not(:focus):valid ~ .floating-label {
	  color: transparent;
	}
  </style>


<body>
<!-- ============================================== HEADER ============================================== -->
<header class="header-style-1"> 
  
  <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
        <div class="col-xs-12 col-sm-12 col-md-3 logo-holder"> 
          <!-- ============================================================= LOGO ============================================================= -->
          <div class="logo"> <a href="#"> <img  height="50px" src="./images/flopkartLogo.jpg" alt=""> </a> </div>
          <!-- /.logo --> 
          <!-- ============================================================= LOGO : END ============================================================= --> </div>
        <!-- /.logo-holder -->
      <div class="header-top-inner">
        <div class="cnt-account">
          <ul class="list-unstyled">
            <li>
				<form id="myProfile" method="post" action="./myProfile.jsp">
					<label id="Login_btn">
						<a data-toggle="modal"	data-target="#loginModal">
							<i class="glyphicon glyphicon-user"></i>Login
						</a>
					</label>
					<input type="submit" id="userid" name="userid" value="Guest" class="login_user btn btn-link" 
					style="color:white;font-size:90%;"/>
					<input  class="login_user" id="firstName" name="firstName" type="text"/>
					<input  class="login_user" id="lastName" name="lastName" type="text"/>
					<input  class="login_user" id="email" name="email" type="text"/>
					<input  class="login_user" id="phone" name="phone" type="text"/>
				</form>
            </li>
  <!-- ============================================== Login Modal ============================================== -->
		<div class="modal" id="loginModal" role="dialog" align="center">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="row" style="display: table;">
					<div class="col-sm-5" style="background-color: #2455f4; padding-left:45px; padding-right:45px;float: none;display: table-cell; vertical-align: top;">
						<div class="row">
							<h2 class="modal-title" align="left"
								style="font-family: sans-serif; color: white;"><b>Login</b></h2>
							<h4 class="modal-title" align="left"
								style="font-family: sans-serif; color: white;line-height: 1.5">
								Get access to your Orders, Wishlist and Recommendations
							</h4>
						</div>
						<div class="row" style="padding-top:100px; padding-bottom:30px; ">
							<img src="./images/login_img_1.png" align="center" align="bottom" width="200px" />
						</div>
					</div>
					<div class="col-sm-6" style="background-color: #ffffff; padding-left:45px; padding-right:45px;float: none;display: table-cell; vertical-align: top;">
						
						<div class="row" style="padding-top:15px; padding-bottom:15px; ">
						</div>
						<div class="floating-div" style="padding-left:0px;padding-top:15px; padding-bottom:15px;text-align:left">
								  <span class='blocking-span'>
									<input type="text" id="email_phone" name="email_phone" class="inputText" required/>
									<span style="align:left" class="floating-label pull-left"><b>Enter Email/Mobile number</b></span>
								  </span>
									<span class="warning" id="warning_email" style="align:left;padding-left:0px;color:red;font-size:80%" class="pull-left">
									<b>Please enter valid Email ID/Mobile number</b>
									</span>
									<span class="warning" id="warning_register" style="align:left;padding-left:0px;color:red;font-size:80%" class="pull-left">
									<b>Email ID/Mobile number not registered</b>
									</span>
						</div>
						<div class="floating-div" style="padding-left:0px;padding-top:15px; padding-bottom:15px;text-align:left">
								  <span class='blocking-span'>
									<input type="password" id="pass_text" name="pass_text" class="inputText" required/>
									<span class="floating-label"><b>Enter Password</b></span>
								  </span>
									<span class="warning" id="warning_pass" style="align:left;padding-left:0px;color:red;font-size:80%" class="pull-left">
									<b>Invalid password</b>
									</span>
			  
								<a >
									<span align="right"  style="text-align: right">Forgot?</span>
								</a>
						</div>
						<div class="row" style="padding-left:0px;padding-top:15px; padding-bottom:15px; ">
							<button type="button" id="login_btn" class="btn btn-primary btn-lg btn-block" 
							style="border-radius:0px; background-color: #F26419; border-width: 0mm" value="Login" 
							onclick="validate();">Login</button>
						</div>
						<div class="row" style="padding-left:0px;padding-top:15px; padding-bottom:15px; ">
							<button type="button" class="btn btn-primary btn-lg btn-block"
							style="border-radius:0px; box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19); color:#2455f4; background-color:white; border-width: 0mm" data-toggle="modal" data-dismiss="modal" data-target="#signupModal">New to Flipkart? Sign up</button>
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
        
        <!-- /.cnt-cart -->
        <div class="clearfix"></div>
      </div>
      <!-- /.header-top-inner --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.header-top --> 
  
</header>

<!-- /.breadcrumb -->
<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <div class="col-md-3 sidebar"> 
        <!-- ================================== TOP NAVIGATION ================================== -->
        <div class="side-menu animate-dropdown outer-bottom-xs">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i> Categories</div>
          <nav class="yamm megamenu-horizontal">
            <ul class="nav">
              <li class="dropdown menu-item"> <a href="http://www.themesground.com/flipmart-demo/HTML/category.html#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-paper-plane"></i>Clothing</a> 
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
              <li class="dropdown menu-item"> <a href="http://www.themesground.com/flipmart-demo/HTML/category.html#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-futbol-o"></i>Sports</a> 
                <!-- ================================== MEGAMENU VERTICAL ================================== --> 
                <!-- /.dropdown-menu --> 
                <!-- ================================== MEGAMENU VERTICAL ================================== --> </li>
              <!-- /.menu-item -->
              
              <li class="dropdown menu-item"> <a href="http://www.themesground.com/flipmart-demo/HTML/category.html#" class="dropdown-toggle" data-toggle="dropdown"><i class="icon fa fa-envira"></i>Home and Garden</a> 
                <!-- /.dropdown-menu --> </li>
              <!-- /.menu-item -->
              
            </ul>
            <!-- /.nav --> 
          </nav>
          <!-- /.megamenu-horizontal --> 
        </div>
        <!-- /.side-menu --> 
        <!-- ================================== TOP NAVIGATION : END ================================== -->
        <div class="sidebar-module-container">
          <div class="sidebar-filter"> 
            <!-- ============================================== SIDEBAR CATEGORY ============================================== -->
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <h3 class="section-title">shop by</h3>
            </div>
            <!-- /.sidebar-widget --> 
            <!-- ============================================== SIDEBAR CATEGORY : END ============================================== --> 
            
            <!-- ============================================== COLOR============================================== -->
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="widget-header">
                <h4 class="widget-title">Colors</h4>
              </div>
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><a href="http://www.themesground.com/flipmart-demo/HTML/category.html#">Red</a></li>
                  <li><a href="http://www.themesground.com/flipmart-demo/HTML/category.html#">Blue</a></li>
                  <li><a href="http://www.themesground.com/flipmart-demo/HTML/category.html#">Yellow</a></li>
                  <li><a href="http://www.themesground.com/flipmart-demo/HTML/category.html#">Pink</a></li>
                  <li><a href="http://www.themesground.com/flipmart-demo/HTML/category.html#">Brown</a></li>
                  <li><a href="http://www.themesground.com/flipmart-demo/HTML/category.html#">Teal</a></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
            <!-- ============================================== COLOR: END ============================================== --> 
            <!-- ============================================== COMPARE============================================== -->
            <div class="sidebar-widget wow fadeInUp outer-top-vs" style="visibility: hidden; animation-name: none;">
              <h3 class="section-title">Compare products</h3>
              <div class="sidebar-widget-body">
                <div class="compare-report">
                  <p>You have no <span>item(s)</span> to compare</p>
                </div>
                <!-- /.compare-report --> 
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
            <!-- ============================================== COMPARE: END ============================================== --> 
            
          </div>
          <!-- /.sidebar-filter --> 
        </div>
        <!-- /.sidebar-module-container --> 
      </div>
      <!-- /.sidebar -->
      <div class="col-md-9"> 
        
        <div id="category" class="category-carousel hidden-xs">
          <div class="item">
            <div class="image"> <img src="./bootstrapFiles/cat-banner-1.jpg" alt="" class="img-responsive"> </div>
            <div class="container-fluid">
              <div class="caption vertical-top text-left">
                <div class="big-text"> Big Sale </div>
                <div class="excerpt hidden-sm hidden-md"> Save up to 49% off </div>
                <div class="excerpt-normal hidden-sm hidden-md"> Lorem ipsum dolor sit amet, consectetur adipiscing elit </div>
              </div>
              <!-- /.caption --> 
            </div>
            <!-- /.container-fluid --> 
          </div>
        </div>
        
     
      </div>
      <!-- /.col --> 
    </div>
    <!-- /.row --> 
    </div>
  <!-- /.container --> 
  
</div>
<!-- /.body-content --> 

<!-- JavaScripts placed at the end of the document so the pages load faster --> 
<script src="./bootstrapFiles/jquery-1.11.1.min.js.download"></script> 
<script src="./bootstrapFiles/bootstrap.min.js.download"></script> 
<script src="./bootstrapFiles/bootstrap-hover-dropdown.min.js.download"></script> 
<script src="./bootstrapFiles/owl.carousel.min.js.download"></script> 
<script src="./bootstrapFiles/echo.min.js.download"></script> 
<script src="./bootstrapFiles/jquery.easing-1.3.min.js.download"></script> 
<script src="./bootstrapFiles/bootstrap-slider.min.js.download"></script> 
<script src="./bootstrapFiles/jquery.rateit.min.js.download"></script> 
<script src="./bootstrapFiles/bootstrap-select.min.js.download"></script> 
<script src="./bootstrapFiles/wow.min.js.download"></script> 
<script src="./bootstrapFiles/scripts.js.download"></script>
<script>
$(document).ready(function()
{
	$(".warning").hide();
	if($('#userid').val()==="Guest")
		$(".login_user").hide();
	
})

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
            var ctxPath = "http://localhost:8080/flipkartPrototype";// "<%=request.getContextPath() %>";
            $.ajax({
                type: 'POST',
        		contentType: 'application/json',
                url: ctxPath+"/webapi/users/email",
                dataType: "json", // data type of response
                data: formToJSON(),
                success: renderDetails
            });
        }
        
        
        function renderDetails(user) 
        {
        	if(user==null)
        	{
        		$("#warning_register").show();
        	}
        	else if(user.id===0)
        	{
        		$("#warning_pass").show();
        	}
        	else
        	{
            	$('#userid').val(user.userId);
            	$('#firstName').val(user.firstName);
            	$('#lastName').val(user.lastName);
            	$('#email').val(user.email);
            	$('#phone').val(user.phone);
            	$('#userid').show();
            	$('#Login_btn').hide();
            	$('#loginModal').modal('toggle');
        	}
        	
        	return false;
        }
</script>

</body></html>