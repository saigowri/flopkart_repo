<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>Order Placed</title>
<%@include file="metaContent.jsp" %>
<%@include file="header.jsp" %>
</head>
<body>
 <div class=col-sm-12 id="orderDisplay" style="margin: 0px 0px 0px 0px; padding:50px;background-color:white">
         <div class=row style="text-align:center">
           <div id="orders"></div>
         </div>
      </div>
<%@include file="footer.jsp" %>
</body>
<script>
$(document).ready(function(){
	 var ctxPath = "<%=request.getContextPath()%>";
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
			
			//var data="";
			//data+="<div class = 'row' style = 'margin:5px 50px;border-style: groove;border-width: 7px;font-size:15px; text-align:left; padding-left:70px;' >"+
			//"<div class='col-sm-12' style ='font-size:15px; text-align:left; padding:20px;' >";
            for(var i in results){
        		j++;
        		var data="";
        		data+="<div class = 'row' style = 'margin:5px 50px;border-style: groove;border-width: 7px;font-size:15px; text-align:left; padding-left:70px;' >"+
    			"<div class='col-sm-6' style ='font-size:15px; text-align:left; padding:20px;' >";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Order number :  <b>"+j+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Item ID :  <b>"+results[i].itemId+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Shipping Address : <b> "+results[i].shippingAddress+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Total Amount : <b> "+results[i].totalAmount+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Quantity : <b> "+results[i].quantity+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:15px;'>Order Date : <b> "+results[i].orderDate+"</b></div>";
            	data+="<div style = 'padding-bottom:10px;font-size:18px;color:green;'>Order Status :  <b>"+results[i].status+"</b></br></br></br></div>";
            	data += "</br></br></div>";
            	data += "<div class='col-sm-6' style ='font-size:30px; text-align:left; padding:20px;' id=rating_"+ j +" >" +
            	"<div>Leave A Rating:</div>"+
            	"<span style='cursor:pointer' class='fa fa-star' onclick=highlight(rating_"+j+",1,'"+results[i].itemId+"',"+userid+")></span>"+
            	"<span style='cursor:pointer' class='fa fa-star' onclick=highlight(rating_"+j+",2,'"+results[i].itemId+"',"+userid+")></span>"+
            	"<span style='cursor:pointer' class='fa fa-star' onclick=highlight(rating_"+j+",3,'"+results[i].itemId+"',"+userid+")></span>"+
            	"<span style='cursor:pointer' class='fa fa-star' onclick=highlight(rating_"+j+",4,'"+results[i].itemId+"',"+userid+")></span>"+
            	"<span style='cursor:pointer' class='fa fa-star' onclick=highlight(rating_"+j+",5,'"+results[i].itemId+"',"+userid+")></span>"+
            	"<div style='color:red;font-size:15px' hidden>Rating updated</div></div>";
            	data += "</div>";
            	$('#orders').append(data);
            	var el = $("#rating_"+j);
            	listing(ctxPath,results[i].itemId,userid,el);
            }
            //data += "</br></br></div></div>";
           	//$('#orders').append(data); 
    	},
    	error:function() {
        	swal("error occurred");
    	}
	});
	
};

function highlight(el,val,itemId,userId)
{
	var ctxPath = "<%=request.getContextPath()%>";
	var parent = $(el).attr("id");
	var stars =$("#"+parent).find("span");
	var i;
	for(i=0;i<val;i++)
		{
		   $(stars[i]).css('color','orange');
		}
	for(;i<5;i++)
	{
	   $(stars[i]).css('color','black');
	}
	var divisions = $("#"+parent).find("div");
	$(divisions[1]).hide();
	$(divisions[1]).show(100);
	updateRatingListing(ctxPath,val,userId,itemId);
};

function updateRatingListing(ctxPath,val,userId,itemId)
{
	var sellerid;
	var listingid;
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/listings/item/"+itemId,
				dataType : "json", // data type of response
				success : function(result){
					listingid=result.id;
					sellerid=result.sellerid;
					updateRatingCheck(ctxPath,val,userId,sellerid,listingid);
		    	},
		    	error:function() {
		        	swal("error occurred");
		    	}
			});
};

function updateRatingCheck(ctxPath,val,userId,sellerId,listingId)
{
	var parameter;
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/reviews/user/"+userId,
				dataType : "json", // data type of response
				success : function(results){
					var check = 0;
					for(var i in results)
						{
						   if(results[i].listingId == listingId)
							   {
							     check++;
							     parameter = results[i].id;
							   }
						}
					if(check>0)
						updateRatingUpdate(ctxPath,val,userId,sellerId,listingId,parameter);
					if(check==0)
						updateRatingAdd(ctxPath,val,userId,sellerId,listingId);
		    	},
		    	error:function() {
		        	swal("error occurred");
		    	}
			});
};
function updateRatingUpdate(ctxPath,val,userId,sellerId,listingId,parameter)
{
	//swal(""+ctxPath+" "+ val + " " + userId + " " + sellerId + " " + listingId + " " + parameter);
	var flopkartReview = JSON.stringify({
	    "listingId" : listingId,
	    "sellerId" : sellerId,
	    "stars" : val,
	    "userId" : userId
	});
	$.ajax(
			{
				type : 'PUT',
				contentType : 'application/json',
				url : ctxPath + "/webapi/reviews/update/" + parameter,
				data : flopkartReview,
				success : function(){
				},
				error: function() {
					swal(JSON.stringify(err));
				}
		});
}
function updateRatingAdd(ctxPath,val,userId,sellerId,listingId)
{
	//swal(""+ctxPath+" "+ val + " " + userId + " " + sellerId + " " + listingId);
	var flopkartReview = JSON.stringify({
	    "listingId" : listingId,
	    "sellerId" : sellerId,
	    "stars" : val,
	    "userId" : userId
	});
	$.ajax(
			{
				type : 'POST',
				contentType : 'application/json',
				url : ctxPath + "/webapi/reviews/create",
				data : flopkartReview,
				success : function(){
				},
				error: function() {
					swal(JSON.stringify(err));
				}
		});
}

function listing(ctxPath,itemId,userId,el)
{
	var listingid;
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/listings/item/"+itemId,
				dataType : "json", // data type of response
				success : function(result){
					listingid=result.id;
					check(ctxPath,listingid,userId,el);
		    	},
		    	error:function() {
		        	swal("error occurred");
		    	}
			});
}

function check(ctxPath,listingid,userId,el)
{
	$.ajax(
			{
				type : 'GET',
				contentType : 'application/json',
				url : ctxPath + "/webapi/reviews/user/"+userId,
				dataType : "json", // data type of response
				success : function(results){
					for(var i in results)
						{
						   if(results[i].listingId == listingid)
							   {
							     renderstars(el,results[i].stars);
							   }
						}
		    	},
		    	error:function() {
		        	swal("error occurred");
		    	}
			});
}

function renderstars(el,val)
{
	var parent = $(el).attr("id");
	var stars =$("#"+parent).find("span");
	var i;
	for(i=0;i<val;i++)
		{
		   $(stars[i]).css('color','orange');
		}
	for(;i<5;i++)
	{
	   $(stars[i]).css('color','black');
	}
	var divisions = $("#"+parent).find("div");
};
</script>
</html>