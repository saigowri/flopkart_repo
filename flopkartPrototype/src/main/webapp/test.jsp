<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<%@include file="metaContent.jsp" %>
	<title>Welcome to Flopkart</title>
</head>
<body>
     
    <%@include file="header.jsp" %>
     
    <hr/>
    <h2>This is main content</h2>
    <hr/>
     
    <%@include file="footer.jsp" %>
     
</body>
<script>
$(document).ready(function(){
    var ctxPath = "<%=request.getContextPath()%>";
	headerFunctions(ctxPath);
})
	
</script>
</html>