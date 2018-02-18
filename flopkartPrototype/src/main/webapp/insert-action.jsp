<%@page import="com.iiitb.ooadvoid.AccessProperties"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.util.*"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.io.*"%>

<%@ page import="javax.servlet.ServletException"%>
<%@ page import="javax.servlet.http.HttpServlet"%>
<%@ page import="javax.servlet.http.HttpServletRequest"%>
<%@ page import="javax.servlet.http.HttpServletResponse"%>
<%@ page import="org.apache.commons.fileupload.FileItem"%>
<%@ page import="org.apache.commons.fileupload.FileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.FileUploadException"%>
<%@ page
	import="org.apache.commons.fileupload.servlet.ServletFileUpload"%>
<%@ page import="org.apache.commons.fileupload.disk.DiskFileItemFactory"%>
<%@ page import="org.apache.commons.fileupload.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="./bootstrapFiles/css/bootstrap.css">
<script src="./bootstrapFiles/js/jquery-3.2.1.min.js"></script>
<script src="./bootstrapFiles/js/bootstrap.min.js"></script>
<title>Results</title>
</head>
<%
	String ImageFile = "";
	String itemName = "";
	String email="";
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);
	
	try {
	FileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	List items = null;
	items = upload.parseRequest(request);
	Iterator itr = items.iterator();
	System.out.println(items);
	File savedFile = null;
	while (itr.hasNext()) {
		FileItem item = (FileItem) itr.next();
		if (item.isFormField()) {
			String name = item.getFieldName();
			if (name.equalsIgnoreCase("email1")) {
				email = (String) item.getString();
			}
		}
		else {
			itemName = item.getName();
// 			AccessProperties ap = new AccessProperties(); 
// 		    String path = ap.getImageServerURL();
			System.out.println(itemName);
			item.write(new File(
					"C:\\Users\\YSK\\Desktop\\sample_images\\" + itemName));
		}
	}
	}
	catch(Exception e){
		e.printStackTrace();
	}

	try {
		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/sampleDatabase", "ooaduser",
				"Password");
		PreparedStatement pstmt = null;
		Statement stmt = conn.createStatement();
		String sql;
		sql = "UPDATE flopkartuser SET pic_URL ='" + itemName + "' WHERE email='"+email +"'";
		int o = stmt.executeUpdate(sql);
		if(o==1){
			 response.sendRedirect("myProfile.jsp?i=1");
		}
		stmt.close();
		conn.close();
	} catch (SQLException se) {
		se.printStackTrace();
	} catch (Exception e) {
		e.printStackTrace();
	}
%>
</html>