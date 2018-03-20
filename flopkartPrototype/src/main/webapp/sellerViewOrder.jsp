<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
    <%@ page import="com.iiitb.ooadvoid.CreateProperties" %> 
<!DOCTYPE html>
<html lang="en">
<head>
<title>Seller Hub</title>
<%@include file="metaContent.jsp" %>
</head>
<body>
<%@include file="headerSeller.jsp" %>		
		
<div class="body-content outer-top-xs">
  <div class="container">
    <div class="row">
      <%@include file="sidebarSeller.jsp" %>
      <input type="text" id="sellerid" name="sellerid" hidden="hidden"/>
      <div class="col-md-9"> 
        <!-- ========================================== SECTION – HERO ========================================= -->
	      
		 <div class=col-sm-12 id="listingDisplay" style="margin: 0px 0px 0px 0px; padding:50px;background-color:white">
         <div class=row style="text-align:center">
           <div id="listing"></div>
         </div>
      </div>
	 
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
<script src="./customJavascripts/cookies.js"></script>
<script>
$(document).ready(function(){
	
	
 	 	checkCookie();
 	 	 var ctxPath = "<%=request.getContextPath()%>";
 		//headerFunctions(ctxPath);		
 		loadListings();
		 
	});
function checkCookie() 
{
    var result = getCookie("seller_details");
    if (result != "") 
    {	
    		var user = JSON.parse(result);
		setCookie("seller_details", result, 10);
		document.getElementById("sellername").innerText = user.firstName;
		$('#sellerid').val(user.id);
		
	
    } 
    else 
    {	alert("Login failed. Try again.");
      	window.location = "sellerHub.jsp";
    		logout();
    }
}

	function loadListings(){
		$('#listing').empty();
	    	var ctxPath = "<%=request.getContextPath()%>";
	<%--     	var subcategoryid = "<%=request.getParameter("id")%>"; --%>
	   var sellerid = $("#sellerid").val();
	   alert(sellerid);
	    	
		        $.ajax(
		        		{
		        			type : 'GET',
		        			contentType : 'application/json',
		        			url : ctxPath + "/webapi/listings/seller/"+sellerid,
		        			async : false,
		        			dataType : "json", // data type of response
		        			success : function(result){
		        				for (var i in result){
		        				
							$.ajax(
		        						{
		        							type : 'GET',
		        							contentType : 'application/json',
		        							url : ctxPath + "/webapi/orders/item/"+result[i].itemId,
		        							dataType : "json", // data type of response
		        							success : displayListings,
		        					    		error:function(err) {
		        					    		alert(err);
		        					    	}
		        						});
		        				}
		        	            
		        	    	},
		        	    	error:function(){
		        	    		alert("error occurred");
		        	        	
		        	    	}
		        		});
		}
		function displayListings(result)
		{
		    <% AccessProperties ap = new AccessProperties(); %>
			var data="";
			data+="<div class = 'row' style = 'font-size:15px; text-align:left; padding-left:20px;' >"+
	        "<div class='col-sm-12'style ='font-size:15px; text-align:left; padding-top: 70px ; padding-left:60px;' >"+
	        "<div style = 'font-size:15px;'>Item ID :  "+result.itemId+"</div>"+
	        "<div style = 'font-size:15px;'>Item Shipping Address :  "+result.shippingAddress+"</div>"+
	        "<div style = 'font-size:15px;'>Item Status :  "+result.status+"</div>"+
	        "<div style = 'font-size:15px;'>Total Amount :  "+result.totalAmount+"</div>"+
	      /*   "<div style = 'font-size:15px;'>Quantity :  "+result.quantity+"</div>"+ */
	       	"</div></div>";
	       	$('#listing').append(data);
		}
		
		
		
	    

	    
	   
	  
	    
	</script>		
</body>
</html>