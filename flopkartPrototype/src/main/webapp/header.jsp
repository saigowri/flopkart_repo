<style>
	input 
	{
		display: block;
		border: none;
		border-bottom: 1px solid #ccc;
		width: 100%
	}
	
	.floating-div 
	{
		position: relative; /*  make label relate to div  */
		padding-top: 5%; /*  make space for label      */
	}
	
	.floating-label 
	{
		position: absolute;
		pointer-events: none;
		top: 20%;
		color: #878787;
	}
	
	input:focus ~ .floating-label 
	{
		transition: 0.2s ease all;
		top: -5%;
		font-size: 70%;
	}
	
	input:valid ~ .floating-label 
	{
		transition: 0.2s ease all;
		top: -5%;
		font-size: 70%;
	}
</style>

	<header class="header-style-1">
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
	
			<!-- =====================================SIGNUP-MODAL =========================================-->	
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
								value="Login" onclick="signup('<%=request.getContextPath()%>');">SIGN UP</button>
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
								value="Login" onclick="validate('<%=request.getContextPath()%>');">Login</button>
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
		<!-- =====================================SIGNUP-MODAL =========================================-->
		<!-- ============================================== END Login Modal ============================================== -->

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
						
						<li id="unregistered"><div>
						<!-- ============================================================= LOGIN and SIGNUP ============================================================= -->
							<form id="myProfile" method="post" action="./myProfile.jsp">
								<label id="Login_btn"> <a href="#"  style="font-size: 16px; letter-spacing: 0.1px; font-weight: 600;
						 		color: white;" data-toggle="modal" data-target="#loginModal"> Login &amp; Signup</a>
								</label>
							</form></div>
						<!-- ============================================================= LOGIN and SIGNUP END ============================================================= -->
						</li>
						
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
		<div class="header-nav animate-dropdown" style="background-color:white;color:black">
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
								<ul class="nav navbar-nav" id="category_dropdown">
									<li class="active dropdown yamm-fw">
									<a href="index.jsp" style="color:black">Home</a></li>
									<li class="dropdown yamm mega-menu">
									<a href="category.jsp"
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
														<div class="col-xs-12 c
														ol-sm-12 col-md-2 col-menu">
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
									<li  id='dropdown-test' class="dropdown hidden-sm"><a href="category.jsp" class="dropdown-toggle"
										data-hover="dropdown" data-toggle="dropdown">Health
											and Beauty <span class="menu-label new-menu hidden-xs">new</span>
									</a></li>
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
									<li class="dropdown navbar-right"><a
										href="offerZone.jsp" style="color:black">Offer zone</a></li>
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
	