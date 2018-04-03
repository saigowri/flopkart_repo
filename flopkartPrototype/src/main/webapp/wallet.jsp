<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<!-- Use this page as a template to create new pages-->
<head>
	<%@include file="metaContent.jsp" %>
	<title>My Flopkart Wallet</title>
</head>
<body>
     
    <%@include file="header.jsp" %>
     
  	<div class="col-md-12" style="margin:10px"> 
	</div>
  	
     
    <%@include file="footer.jsp" %>
     
</body>

<script>
$(document).ready(function(){
	swal("Here's the title!", "...and here's the text!");
    var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
})
	
</script>
</html>