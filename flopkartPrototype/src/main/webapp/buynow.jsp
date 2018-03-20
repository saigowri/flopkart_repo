<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="java.text.*" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Place Order</title>
</head>
<body>
     
    <%@include file="header.jsp" %>
     
   <div class="body-content">
     
	<div class="container">
		<div class="checkout-box ">
			<div class="row" style="margin-top:20px">
			<form action="Payment.jsp">
				<div class="col-md-8">
					<div class="panel-group checkout-steps" id="accordion">
						<!-- checkout-step-01  -->
						<div id="login_panel" class="panel panel-default checkout-step-01">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a data-toggle="collapse" class="" data-parent="#accordion" href="#collapseOne">
						          <span>1</span>Login
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->
	
							<div id="collapseOne" class="panel-collapse collapse in">
						
								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">		
						
										<!-- guest-login -->			
										<div class="col-md-6 col-sm-6 guest-login">
										
											<h4 class="checkout-subtitle">Register or Login</h4>
											<h4 class="checkout-subtitle outer-top-vs">Register and save time</h4>
											<p class="text title-tag-line ">Register with us for future convenience:</p>
											
											<ul class="text instruction inner-bottom-30">
												<li class="save-time-reg">- Fast and easy check out</li>
												<li>- Easy access to your order history and status</li>
											</ul>
						
											<button type="button" class="btn-upper btn btn-primary checkout-page-button checkout-continue " onclick="return buynowsignup();">Continue</button>
										</div>
										<!-- guest-login -->
						
										<!-- already-registered-login -->
										<div class="col-md-6 col-sm-6 already-registered-login">
											<h4 class="checkout-subtitle">Already registered?</h4>
											<p class="text title-tag-line">Please log in below:</p>
											  <button type="button" class="btn-upper btn btn-primary checkout-page-button" onclick="return buynowvalidation();">Login</button>
										</div>	
									<!-- already-registered-login -->		
					
								</div>			
							</div>
							<!-- panel-body  -->
					
							</div><!-- row -->
							
							
						</div>
						<!-- End checkout-step-01  -->
						
						
						<!-- checkout-step-02  -->
						<div id="address_panel" class="panel panel-default checkout-step-02">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse2" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseTwo">
						          <span>2</span>Shipping Address
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->
	
							<div id="collapseTwo" class="panel-collapse collapse">
						
								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">		
									
						      <div class="panel-body">
							      <textarea rows="4" style="width:100%" id="shipAddress" required>
	                              </textarea>
	                              <br/>
	                              <button type="button" class="btn btn-primary" onclick="orderSummary()">Next</button>	
									</div>
								</div>			
							</div>
							<!-- panel-body  -->
					
							</div><!-- row -->
							
							
						</div>
						<!-- End checkout-step-02  -->
						
						
						<!-- checkout-step-03  -->
						<div id="summary_panel" class="panel panel-default checkout-step-03">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse3" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseThree">
						          <span>3</span>Order Summary
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->
	
							<div id="collapseThree" class="panel-collapse collapse">
						
								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">
									                                                                 
								  <div class="table-responsive">          
									  <table class="table">
									  <thead>
								    	<tr>
								    		<th>Item Name</th>
								    		<th>Quantity</th>
								    		<th>Marked Price</th>
								    		<th>Discount</th>
								    		<th>Discounted Price</th>
									    
										</tr>
								    	</thead>
								    	<tbody>
								    	<tr>
								    	<% int quant = Integer.parseInt(request.getParameter("quant"));%>
								    	<% int listingamount = Integer.parseInt(request.getParameter("listingamount"));%>
	
								    	<% int discount=Integer.parseInt(request.getParameter("listingdiscount"));%>
								    	<% int price=listingamount - (discount*listingamount/100); %>
								    		<td><%=request.getParameter("listingname") %></td>
								    		<td><%=quant%></td>
								    		<td><%=price%></td>
								    		<td><%=discount%> %</td>
								    		<td><%=listingamount%></td>
								    	</tr>
								    	<tr>
								    		<th colspan="4">Total Price:</th>
								    		<% int total = quant * listingamount;%>
	
	
	
								    		<th><%=total %></th>
								    	</tr>
								    	</tbody>
								    </table>
							    </div>


							   <div class="seller-info" id="seller-info" style='color:green; font-size:15px'>
							   <% String sname=request.getParameter("sellername");%>
							   Seller Name: <%=sname %>
							   </div>                              <br/>
								    		<label hidden="hidden" id="itemid"><%=request.getParameter("itemid") %></label>
                              <button type="button" class="btn btn-primary" onclick="return insertOrder()">Confirm Order</button>
									</div>					
							</div>
							<!-- panel-body  -->
					
							</div><!-- row -->
							
							
						</div>
						<!-- End checkout-step-03  -->
						
						
						<!-- checkout-step-04  -->
						<div id="payment_panel" class="panel panel-default checkout-step-04">
												<!-- panel-heading -->
							<div class="panel-heading">
					    	<h4 class="unicase-checkout-title">
						        <a id="collapse4" data-toggle="collapse" class="collapsed" data-parent="#accordion" href="#collapseFour">
						          <span>4</span>Payment Options
						        </a>
						     </h4>
					    	</div>	    <!-- panel-heading -->
	
							<div id="collapseFour" class="panel-collapse collapse">
						
								<!-- panel-body  -->
							    <div class="panel-body">
									<div class="row">
									

						      <div class="radio">
								  <label><input  type="radio" name="payment" disabled>Cash on delivery</label>
								</div>
								<div class="radio">
								  <label><input checked="checked" type="radio" name="payment">Flopkart Bank</label>
								</div>
  									<input type="submit" class="btn btn-primary" value="Proceed to pay">
									</div>					
							</div>
							<!-- panel-body  -->
					
							</div><!-- row -->
							
							
						</div>
						<!-- End checkout-step-04  -->
					</div><!-- /.checkout-steps -->
					
				
					
				</div>
				
				
				</form>
				<div class="col-md-4">
					<!-- checkout-progress-sidebar -->
					<div class="checkout-progress-sidebar ">
						<div class="panel-group">
							<div class="panel panel-default">
								<div class="panel-heading">
							    	<h4 class="unicase-checkout-title">Your Checkout Progress</h4>
							    </div>
							    <div class="">
									<ul class="nav nav-checkout-progress list-unstyled">
										<li><b style="color:green">Order In Progress</b></li>
									</ul>		
								</div>
							</div>
						</div>
					</div> 
					<!-- checkout-progress-sidebar -->				
				</div>
			</div>
		</div>
	</div>
     
     </div>
  
     
    <%@include file="footer.jsp" %>
     
</body>
<script>
$(document).ready(function(){
    var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
	show_Welcome();

	document.getElementById("login_btn").onclick = 
		function(l_data) 
		{
			validate(ctxPath);
			window.location.reload(true);
		}
})
	
function buynowvalidation() 
{
	$('#loginModal').modal('toggle');
    checkCookie();
    show_Welcome();
}



function show_Welcome()
{

    var user = getCookie("user_details");
    if (user != "") 
    {
    	data = "<div class='panel-heading'>"+
		    	"<h4 class='unicase-checkout-title'>"+
			    	"<a data-toggle='collapse' class='collapsed' data-parent='#accordion' href='#collapseOne'>"+
			    		"<span>1</span>Welcome, "+(JSON.parse(user)).firstName+
			    	"</a>"+
		    	"</h4>"+
	    	"</div>"
    	$("#login_panel").html(data);
    	$("#shipAddress").val((JSON.parse(user)).address);
    	$("#collapse2").removeClass("collapsed");
    	$("#collapseTwo").addClass("in");
    } 
}

function orderSummary()
{
	$("#collapse2").addClass("collapsed");
	$("#collapseTwo").removeClass("in");
	$("#collapse3").removeClass("collapsed");
	$("#collapseThree").addClass("in");
}

function paymentOption()
{
	$("#collapse3").addClass("collapsed");
	$("#collapseThree").removeClass("in");
	$("#collapse4").removeClass("collapsed");
	$("#collapseFour").addClass("in");
	var ctxPath = "<%=request.getContextPath()%>";
	<%int new_quant = Integer.parseInt(request.getParameter("listingquant")) - Integer.parseInt(request.getParameter("quant"));%>
	$.ajax(
		{
			type : 'PUT',
			contentType : 'application/json',
			url : ctxPath + "/webapi/listings/update/"+"<%=request.getParameter("listingid") %>",
			data : JSON.stringify({
		        "quantity": "<%=new_quant %>"
			}),
			success : function() {
				//alert("hi");
			},
			error: function() {
				alert(JSON.stringify(err));
			}
	});
}
function insertOrder()
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/webapi/orders/create",
			data : order_formToJSON(),
			success : paymentOption,
			error: function(err) {
				alert(JSON.stringify(err));
			}
	});
}


function order_formToJSON() 
{
	
	<%Timestamp timeStamp = new Timestamp(System.currentTimeMillis());%>
<%-- 	var orderid = <%=timeStamp.getTime()%>; --%>
	var shipAddress = $("#shipAddress").val().trim();
	if(shipAddress=="")
	{
		alert("Please enter Address");
		window.location.reload(true);
		return false;
	}
    var user = getCookie("user_details");
	var userid = JSON.parse(user).id;
	var TotalAmount =<%=total %>;
	<%session.setAttribute("totalamount","TotalAmount");%>
	var flopkartOrder = JSON.stringify({
        "itemId": "<%=request.getParameter("itemid") %>",
        "orderId": <%= (int) timeStamp.getTime()%>,
	    "shippingAddress" : shipAddress,
	    "userId" : userid,
	   // "orderDate" : OrderDate,
	    "status" : "Ordered",
	    "totalAmount" : TotalAmount  
	});
	//alert(flopkartOrder);
	return flopkartOrder;
}

</script>
</html>