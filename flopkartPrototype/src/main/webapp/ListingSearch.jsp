<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties" %>
<!DOCTYPE html>
<!-- saved from url=(0060)http://www.themesground.com/flipmart-demo/HTML/category.jsp -->
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Items</title>
</head>
<style>
/* .listingImage { */
/*    width: 200px; */
/*    height:200px; */
/* } */

/* .listingImage { */
/*    width: 100%; */
/* } */
.box {
  transition: box-shadow .3s;
  width: 300px;
  height: 300px;
  background: #fff;
  float: left;
  margin-bottom: 10px;
}
.box:hover {
  box-shadow: 0 0 11px rgba(33,33,33,.2); 
}
</style>


<body>
	
    <%@include file="header.jsp" %>    
    
    <div class=row id="body">
      <div class=col-sm-2 id="filters"></div>
      <div class=col-sm-10 id="listingDisplay" style="background-color:white">
         <div class=row style="text-align:center">
           <div id="listing"></div>
         </div>
      </div>
    </div>
	
	

    <%@include file="footer.jsp" %>
    <script>
	$(document).ready(function()
			{
	    var ctxPath = "<%=request.getContextPath()%>";
		headerFunctions(ctxPath);		})
	
	$(window).on('load',function(){
    	var ctxPath = "<%=request.getContextPath()%>";
    	var subcategoryid = "<%=request.getParameter("id")%>";
	        $.ajax(
	        		{
	        			type : 'GET',
	        			contentType : 'application/json',
	        			url : ctxPath + "/webapi/listings/subcategory/"+subcategoryid,
	        			dataType : "json", // data type of response
	        			success : function(result){
	        				for (var i in result){
	        					var item = itemJson(result[i].id);
	        				$.ajax(
	        						{
	        							type : 'GET',
	        							contentType : 'application/json',
	        							url : ctxPath + "/webapi/listings/"+result[i].id,
	        							dataType : "json", // data type of response
	        							success : function(result)
	        							{
	        							    <% AccessProperties ap = new AccessProperties(); %>
	        							    var imgServerURL = "<%=ap.getImageServerURL() %>"; 
	        								var data="";
	        								data+="<div class='col-sm-4, box'><a href='item.jsp?id="+result.id+
	        								"'> <div style='width: 280px;height: 250px;'>"+
	        								"<img class='listingImage' style='max-height:100%; max-width:100%;' src='"+
	        								imgServerURL+result.imgUrl+"' alt=''></div>"+
	        						        "<div style = 'font-size:20px; text-align:center'>"+result.listingName+"</div>"+
	        						       	"<div style = 'font-size:20px; text-align:center; font-family:verdana'>"+
	        						       	"<i class='fa fa-inr' style='font-size:20px'></i>"+result.price+"</div></div>";
	        						       	$('#listing').append(data);
	        					    	},
	        					    	error:function() {
	        					    		alert(error);
	        					    	}
	        						});
	        				}
	        	            
	        	    	},
	        	    	error:function(){
	        	    		alert("error occurred");
	        	        	
	        	    	}
	        		});
	        
	    });
	    
	    //for(var i in result){
        //	data+="<div class='col-sm-4, box'><a href='#'> <img src='"+result[i].imgUrl+"' alt=''></a>";
        //	data+="<div style = 'font-size:20px; text-align:left'>"+result[i].listingName+"</div>";
        //	data+="<div style = 'font-size:20px; text-align:left; font-family:verdana'><i class='fa fa-inr' style='font-size:20px'></i>"+result[i].price+"</div></div>"
        //}
        //$('#listing').html(data);
	    
	    function itemJson(id)
	    {
	    	var Item = JSON.stringify({
	    		"id" : id,
	    	    "subcategoryId": 1
	    	});
	    	return Item
	    }
		
	</script>

</body>
</html>