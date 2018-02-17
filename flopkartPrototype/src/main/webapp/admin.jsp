<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="com.iiitb.ooadvoid.AccessProperties"%>
    <%@ page import="com.iiitb.ooadvoid.client.FlopkartCategoryClient" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
<link rel="stylesheet" href="./bootstrapFiles/css/SellerRegStyle.css">
</head>
<body style="background: url(&quot;./images/sellerHub/Signup-screen-BG.jpg&quot;) no-repeat;
  background-size: 100%;">
	<header>
		<nav class="nav navbar-default" style="background-color:#027cd5">
			<img class="logo" src="./images/flopkartLogo.jpg">
		</nav>
	</header>
	
	<br/><br/>
	<div class="col-md-6">
		<div class="container" style="text-align: center; width: 400px">
			<h3 style="color:white">Enter new category</h3><br/>
			<form action="success.jsp">
				<input class="form-control" type="text" id="catName"
					placeholder="Enter category name"> 
				<br/>
				<input type="submit"
					onclick="insertCategory();" />
			</form>
		</div>
	</div>
	<div class="col-md-6">
		<div class="container" style="text-align: center; width: 400px">
			<h3 style="color:white">Enter new subcategory</h3><br/>
			<form>
				<div id="content"></div>
				<br /> <input class="form-control" type="text" id="subcatName"
					placeholder="Enter subcategory name"> 
				<br/>
				<input type="submit"
					onclick="return insertSubcategory();" />
			</form>
		</div>
	</div>
</body>

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
<script>
$(document).ready(function(){

<%--     <% FlopkartCategoryClient client = new FlopkartCategoryClient(); %> --%>
<%-- 	String test1 = test.getImageURL();%> --%>
<%-- 	var test = "<%=test1%>"; --%>
// 	alert(test);
	fetch();

})
function fetch() 
{
    var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/categories",
		dataType : "json", // data type of response
		success : function(result){
			var data="<select id='catId'>"+"<option>Select a category</option>";
            for(i=0;i<result.length;i++){
               data+="<option value='"+result[i].id+"'>"+result[i].categoryName+"</option>";
            }
            data += "</select>"
            $('#content').html(data);
    	},
    	error:function() {
        	alert("error occurred");
    	}
	});
}

function formToJSON() 
{
    var categoryId = $("#catId").val();
	var subcategoryName = $("#subcatName").val();
	var flopkartSubCat = JSON.stringify({
	    "categoryId" : categoryId,
	    "subcategoryName" : subcategoryName
	});
	//alert(flopkartSubCat);
	return flopkartSubCat;
}

function formToJSON1() 
{
	var categoryName = $("#catName").val();
	var flopkartCat = JSON.stringify({
	    "categoryName" : categoryName
	});
	//alert(flopkartCat);
	return flopkartCat;
}

function insertSubcategory() 
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/webapi/subcategories/create",
			data : formToJSON(),
			success : render,
			error: function(err) {
				alert(JSON.stringify(err));
			}
	});
}

function render(){
	alert("BYEE");
}

function insertCategory()
{
	var ctxPath = "<%=request.getContextPath()%>";
	$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/webapi/categories/create",
			data : formToJSON1(),
			success : render,
			error: function(err) {
				alert(JSON.stringify(err));
			}
	});
}
</script>
</html>