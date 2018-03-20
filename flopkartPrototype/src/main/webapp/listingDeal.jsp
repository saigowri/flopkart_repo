<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
<!DOCTYPE html>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Add deal to listing</title>
		
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
.dropdwn{
  background-color: transparent;
  border-color: #fff;
  border-style: solid;
  border-top: none;
  text-color: red;
  padding: 6px 12px; 
  border-right: none;
  border-left: none;
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
  
  <!-- ============================================== TOP MENU ============================================== -->
  <div class="top-bar animate-dropdown">
    <div class="container">
      <div class="header-top-inner">
        	<div class="cnt-account">
				<ul class="list-unstyled">
						<li><a href="underConstruct.html"><i class="fa fa-bell" ></i> Notification</a></li>
						<li><a href="sellerHub.jsp" onclick="logout()"><i class="fa fa-check"></i> Logout</a></li>
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
          <div class="logo"> <a href="index.jsp"> <img  height="50px" src="./images/sellerHub/seller-hub-logo.png" alt=""> </a> </div>
          <!-- /.logo --> 
          <!-- ============================================================= LOGO : END ============================================================= --> 
          </div>
        <div class="col-xs-12 col-sm-12 col-md-8 top-search-holder">
        </div>
        <div class="col-xs-12 col-sm-12 col-md-2 animate-dropdown top-cart-row"> 
        </div>
      </div>
      <!-- /.row --> 
    </div>
    <!-- /.container --> 
  </div>
  <!-- /.main-header --> 
  
  <!-- ============================================== NAVBAR ============================================== -->
  
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
										<a href="index.jsp" style="color:black">Welcome</a></li>
									<li class="active dropdown yamm-fw">
										<a	href="sellerItemInsert.jsp" style="color:black">Add ITEM</a></li>
										
									<li class="active dropdown yamm-fw">
										<a	href="sellerViewItem.jsp" style="color:black">VIEW YOUR ITEMS</a></li>
									<li class="active dropdown yamm-fw">
										<a	href="listingDeal.jsp" style="color:black">ADD DEAL TO LISTING</a></li>
									<li class="active dropdown yamm-fw">
										<a	href="#" style="color:black">VIEW ORDERS</a></li>
									
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
            	
              <h5 class="section-title">Hello <label id="sellername"/></label></h5>
              <div class="widget-header">
                <h4 class="widget-title" id="userID"></h4>
              </div>
              
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
            <!-- ============================================== IMAGE: END ============================================== --> 
            
            
            <!-- ============================================== Other TAGS ============================================== -->
          <!----------- Account------------->
          <div class="side-menu animate-dropdown outer-bottom-xs" style="margin-top:30px;">
          <div class="head"><i class="icon fa fa-align-justify fa-fw"></i>Account Settings</div>
			<div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
            	
              <div class="sidebar-widget-body">
                <ul class="list">
                  <li><h5><a href="underConstruct.html">Profile Information</a></h5></li>
                  <li><h5><a href="underConstruct.html">Manage Addresses</a></h5></li>
                  <li><h5><a href="underConstruct.html">Notification Preferences</a></h5></li>
                </ul>
              </div>
              <!-- /.sidebar-widget-body --> 
            </div>
            <!-- /.sidebar-widget --> 
          <!-- /.megamenu-horizontal --> 
        </div>
        
            
             
           
        
            <div class="sidebar-widget  wow fadeInUp outer-top-vs " style="visibility: hidden; animation-name: none;">
            <form id="logout_form" action="./sellerHub.jsp">
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
	  
	  <form id="addDeal"> 
        <div class="search-result-container ">
           <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
              <div class="row">
	              <div class="widget-header" style="margin-bottom:10px; margin-left:15px;">
	                <h3 class="widget-title"  style="color:#FF0000;"><B>ADD DEAL TO LISTING</B></h3>
	              </div>
              </div>
		     <div class="row">
		      	<div class="col-sm-5 sidebar"> 
	              <h4 class="widget-title"><B>LISTING<label style="color:red; padding-left:3px;">  *</label></B></h4>
	              <div id="listing-content"></div>
	            </div>
	            <div class="col-sm-5 sidebar" id ="sub-cat-head"> 
	              <h4 class="widget-title"><B>DEAL<label style="color:red; padding-left:3px;">  *</label></B></h4>
	              <div id="deal-content"></div>	
	            </div>
	          </div>
	       </div>
	     </div>
	     
	      <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>START DATE<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="date" id="startDate" name="startDate" required/>
		          </div>
		         </div> 
        		</div>
      	   </div>
      	   
      	   <div class="search-result-container ">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	                <h4 class="widget-title"><B>END DATE<label style="color:red; padding-left:3px;">  *</label></B></h4>
	            </div>   
			    <div class="row">
			      <div class="col-md-5 sidebar"> 
		              <input type="date" id="endDate" name="endDate" required/>
		          </div>
		         </div> 
        		</div>
      	   </div>
	       
	       <div class="search-result-container"  style="text-align:center;">
            <div class="sidebar-widget wow fadeInUp" style="visibility: hidden; animation-name: none;">
	            <div class="widget-header">
	           		<input type="submit" id="submitListingDeal" style="font-size:18px;color: white;
   							padding: 8px 20px; background-color: #4CAF50;" value="Add Deal to Listing"/>
	            </div>   
             </div>
      	   </div>
	  </form> 
	<!-- /.row --> 
     </div>
  <!-- /.container --> 
  </div>
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
<script src="./customJavascripts/cookies.js"></script>

<script>
$(document).ready(function(){
	checkCookie();
	var ctxPath = "<%=request.getContextPath()%>";
	fetch();
});

function checkCookie() 
{
    var result = getCookie("seller_details");
    if (result != "") 
    {	
    		var user = JSON.parse(result);
		setCookie("seller_details", result, 10);
		document.getElementById("sellername").innerText = user.firstName;
	
    } 
    else 
    {	//alert("no cookie");
      	window.location = "sellerHub.jsp";
    		logout();
    }
} 

function fetch() 
{
    var ctxPath = "<%=request.getContextPath()%>";
    var sellerId = 5;
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/listings/seller/"+sellerId,
		dataType : "json", // data type of response
		success : function(result){
			var data="<select id='listingId' style=\" background-color:white; font-size:20px;\">"+"<option value=' "+0+" '>Select a listing</option>";
            for(var i in result){
               data+="<option value='"+result[i].id+"'>"+result[i].listingName+"</option>";
            }
            data += "</select>";
            $('#listing-content').html(data);
    	},
    	error:function() {
        	//alert("error occurred");
    	}
	});
	
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/deals",
				dataType : "json", // data type of response
				success : function(result){
					var data="<select id='dealId' style=\" background-color:white; font-size:20px;\">"+"<option value=' "+0+" '>Select a deal</option>";
		            for(var i in result){
		               data+="<option value='"+result[i].id+"'>"+result[i].dealname+"</option>";
		            }
		            data += "</select>";
		            $('#deal-content').html(data);
		    	},
		    	error:function() {
		        	//alert("error occurred");
		    	}
			});
}

$("#submitListingDeal").click(function(){
	alert('hi');
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax({
				type : 'POST',
				contentType : 'application/json',
				url : ctxPath + "/webapi/listingDeals/create",
				data : toJSON(),
				dataType : "json", // data type of response
				success : function(result){
					alert("success");
		    	},
		    	error:function(err) {
		        	alert(JSON.stringify(err));
		    	}
			});
});

function toJSON() 
{
	var dealid = $("#dealId").val();
	var listingid = $("#listingId").val();
	var stDate = $("#startDate").val();
	var enDate = $("#endDate").val();
	var listingDeal = JSON.stringify({
	    "dealid" : dealid,
	    "listingid" : listingid,
	    "startdate" : stDate,
	    "enddate" : enDate
	});
	alert(listingDeal);
	return listingDeal;
}
</script>		
</body>
</html>