<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Order Placed</title>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<%@ page import="com.iiitb.ooadvoid.CreateProperties" %> 
<%@include file="metaContent.jsp" %>
<%@include file="header.jsp" %>
</head>
<body>
 <input type="text" id="count" name="count" hidden="hidden"/>
 <input type="text" id="itemid" name="itemid" hidden="hidden"/>
 <input type="text" id="img1" name="img1" hidden="hidden"/>
 <div class=col-sm-12 id="orderDisplay" style="margin: 0px 0px 0px 0px; padding:50px;background-color:white">
         <div class=row style="text-align:center">
           <div class="col-sm-2"></div>
           <div class="col-sm-8" id="orders"></div>
           <div class="col-sm-2"></div>
         </div>
      </div>
<%@include file="footer.jsp" %>
</body>
<script>
$(document).ready(function(){
	 var ctxPath = "<%=request.getContextPath()%>";
	 $('#count').val(0);
     headerFunctions(ctxPath);
     myorder(ctxPath);
     
});
function myorder(ctxPath) 
{	
	 var user = getCookie("user_details");
     var userid = JSON.parse(user).id;
     var j =0;
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/orders/user/"+userid,
		dataType : "json", // data type of response
		success : function(results){
			
			var data="";
			/* data+="<div class = 'row' style = 'margin:5px 50px;border-style: groove;border-width: 7px;font-size:15px; text-align:left; padding-left:70px;' >"+
			"<div class='col-sm-12' style ='font-size:15px; text-align:left; padding:20px;' >"; */
            for(var i in results){
           		 	displayListings(results[i]);
            }
          },
    	error:function() {
        	swal("error occurred");
    	}
	});
}

function displayListings(result)
{	
	
	var ctxPath = "<%=request.getContextPath()%>";
    <% AccessProperties ap = new AccessProperties(); %>
    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
	var data="";
	var j = $("#count").val();
	j++;
	$('#count').val(j);
	var minnu = 123;
	var xxx = document.getElementById("img1").value;
	var itid = result.itemId;
	
	data+="<div id='divi"+j+"' class = 'row' style = 'margin:5px 25px;border-style: groove;border-width: 7px;font-size:15px; text-align:left; padding-left:70px;' >"+
	"<div class='col-sm-4' style = 'font-size:15px; text-align:left; padding-top: 40px ; padding-left:0px;'>"+
		" <div style='width: 260px;height: 250px;'>"+
			"<img class='listingImage' id ="+ result.itemId +" style='max-height:100%; max-width:100%;' src='"+xxx+"' alt=''>"+
		"</div>"+
	"</div>"+
	"<div class='col-sm-8' style ='font-size:15px; text-align:left; padding:20px;' >"+
	"<h2 style='padding-bottom:20px;'>Ordered Item No: "+j+"</h2>"+
    "<div style = 'padding-bottom:10px;font-size:15px;'>Order ID :  <b>"+result.orderId+"</b></div>"+
    "<div style = 'padding-bottom:10px;font-size:15px;'>Item  ID :  <b><span id ='itid"+j+"'>"+result.itemId+"</span></b></div>"+
    "<div id ='name"+j+"'style = 'padding-bottom:10px;font-size:15px;'> </div>"+
    "<div id ='seller_name"+j+"'style = 'padding-bottom:10px;font-size:15px;'> </div>"+
    "<div style = 'padding-bottom:10px;font-size:15px;'>Shipping Address : <b> "+result.shippingAddress+"</b></div>"+
    "<div style = 'padding-bottom:10px;font-size:15px;'>Total Amount : <b> "+result.totalAmount+"</b></div>"+
    "<div  style = 'padding-bottom:10px;font-size:15px;'>Quantity : <b> "+result.quantity+"</b></div>"+
    "<div  id='status"+j+"' style = 'padding-bottom:10px;font-size:18px;color:green;'>Item Status :  <b>"+result.status+"</b></div><div>"+
    		"<input style='width:200px;background-color:#eee; border:1px solid grey;' id='button"+j+"' type='button'"+
    			"onclick='changestatus("+result.orderId+","+j+","+result.totalAmount+");' value ='Goods Received??'/></div>"+
   	"</div></div>";
   	
	
   	$('#orders').append(data);
   
    	
	if(result.status != "Goods Shipped"){
		document.getElementById("button"+j).style.visibility = "hidden";
	} 
	if(result.status == "Failed"){
		document.getElementById("divi"+j).remove();
	}
	if(result.status == "Ordered"){
		document.getElementById("divi"+j).remove();
	}
	
	
   	var itemid = result.itemId;
	$.ajax(
			{
			type : 'GET',
			contentType : 'application/json',
			url :  ctxPath +"/webapi/listings/item/"+itemid,
			success : function(result1)
			{
				var imgs = imgServerURL+result1.imgUrl;
				$('#img1').val(imgs);
				document.getElementById(itemid).src = imgs;
				document.getElementById("name"+j).innerHTML= "Item Name :  <b>"+result1.listingName+"</b>";
				var sellerid = result1.sellerid;
				$.ajax(
						{
						type : 'GET',
						contentType : 'application/json',
						url :  ctxPath +"/webapi/users/"+sellerid,
						success : function(result2)
						{
							
							document.getElementById("seller_name"+j).innerHTML= "Seller Name :  <b>"+result2.firstName+" "+result2.lastName+"</b>";
							
						},
						error:function(){
			        	    		swal("error occurred");
			        	    	}
			        		});
			},
			error:function(){
        	    		swal("error occurred");
        	    	}
        		});
}

function changestatus( orderid, j, amt){
	
	
	var itemidd = $('#itid'+j).text();
	var ctxPath = "<%=request.getContextPath()%>";	
	$.ajax(
			{
			type : 'PUT',
			contentType : 'application/json',
			url :  ctxPath +"/webapi/orders/update/orderid/"+orderid,
			data : updatestatus(orderid),
			success : function()
			{	swal("You Confirmed- Goods Received");
				 document.getElementById("status"+j).innerHTML = "Item Status :  <b> Goods Received</b>";
				 document.getElementById("button"+j).style.visibility = "hidden";
				 
				  addToSeller(amt,itemidd);  
				  reduceFromFlopkart(amt);
			},
			error:function(){
        	    		swal("error occurred");
        	    	}
        		});
	
}
function reduceFromFlopkart(amt)
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/accounts/accountno/1",
				success : function(res)
				{
					var amount =  res.balance - amt;
					$.ajax(
						{
							type : 'PUT',
							contentType : 'application/json',
							url : ctxPath + "/webapi/accounts/update/1",
							data : JSON.stringify({
								"balance": amount
							}),
							success : function(data)
							{
							},
							error: function(err) 
							{
								swal(JSON.stringify(err));
							}
					});
				},
				error: function(err) 
				{
					swal(JSON.stringify(err));
				}
		});
}
 function addToSeller(amt,itemidd)
{	
	
	 var ctxPath = "<%=request.getContextPath()%>";
	$.ajax( 
			{
				
			type : 'GET',
			contentType : 'application/json',
			url :  ctxPath +"/webapi/listings/item/"+itemidd,
			success : function(result)
			{ 
				var sellerid =result.sellerid;
				
				$.ajax(
						{
							type : 'GET',
							contentType : 'application/json',
							url : ctxPath + "/webapi/accounts/accountno/"+sellerid,
							success : function(res)
							{
								var amount = amt + res.balance ;
								
								var id = res.id
								$.ajax(
									{
										type : 'PUT',
										contentType : 'application/json',
										url : ctxPath + "/webapi/accounts/update/"+id,
										data : JSON.stringify({
											"balance": amount
										}),
										success : function(data)
										{
											
										},
										error: function(err) 
										{
											swal(JSON.stringify(err));
										}
								});
							},
							error: function(err) 
							{
								swal(JSON.stringify(err));
							}
					});
				
			},
			error:function(){
        	    		swal("error occurred");
        	    	}
        		});	
	
}


function updatestatus() 
{
    
	var status = "Goods Received";
	
	var flopkart_order_update = JSON.stringify({
				"status":status
				
    });
	
	return flopkart_order_update;
	
}
</script>
</html>