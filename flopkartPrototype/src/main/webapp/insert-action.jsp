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
	String rollNo = "";
	String studentName = request.getParameter("studName");
	String studUrl = "";
	String dm = "";
	String ml = "";
	String ooad = "";
	String mml = "";
	String ImageFile = "";
	String itemName = "";
	boolean isMultipart = ServletFileUpload.isMultipartContent(request);

	FileItemFactory factory = new DiskFileItemFactory();
	ServletFileUpload upload = new ServletFileUpload(factory);
	List items = null;
	items = upload.parseRequest(request);
	Iterator itr = items.iterator();
	File savedFile = null;
	while (itr.hasNext()) {
		FileItem item = (FileItem) itr.next();

		if (item.isFormField()) {
			String name = item.getFieldName();
			if (name.equalsIgnoreCase("rollNum")) {
				rollNo = (String) item.getString();
			}
			if (name.equalsIgnoreCase("studName")) {
				studentName = (String) item.getString();
			}
			if (name.equalsIgnoreCase("dm")) {
				dm = (String) item.getString();
			}
			if (name.equalsIgnoreCase("ooad")) {
				ooad = (String) item.getString();
			}
			if (name.equalsIgnoreCase("ml")) {
				ml = (String) item.getString();
			}
			if (name.equalsIgnoreCase("mml")) {
				mml = (String) item.getString();
			}
		} else {
			itemName = item.getName();
			savedFile = new File(
					"C:\\Users\\kpuranik\\git\\flopkart\\flopkartPrototype\\src\\main\\webapp\\images\\" + itemName);
			item.write(savedFile);
		}
	}
	System.out.println(rollNo+" r "+studentName+" "+dm+" "+ooad+" "+ml+" "+mml);
	studUrl = "./images/" + itemName;

	ArrayList<String> courses = new ArrayList<String>();
	ArrayList<String> grades = new ArrayList<String>();
	int i = 0;
	try {
		Class.forName("com.mysql.jdbc.Driver");

		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost/sampleDatabase", "ooaduser",
				"Password");

		PreparedStatement pstmt = null;
		Statement stmt = conn.createStatement();
		String sql;
		sql = "INSERT INTO Student(RollNo , StudentName, StudImage) VALUES ('" + rollNo + "','" + studentName
				+ "','" + studUrl + "')";
		int o = stmt.executeUpdate(sql);
		
		sql = "SELECT StudentID FROM Student where RollNo ='" + rollNo + "'";
		ResultSet rs = stmt.executeQuery(sql);
		if (rs.next()) {
			int sid = rs.getInt("StudentID");
			System.out.println(sid);

			sql = "INSERT INTO StudentCourse (grade , CourseID, StudentID) VALUES ('" + dm + "' , 1 , " + sid
					+ ")";
			o = stmt.executeUpdate(sql);
			sql = "INSERT INTO StudentCourse (grade , CourseID, StudentID) VALUES ('" + ooad + "' , 2 , " + sid
					+ ")";
			o = stmt.executeUpdate(sql);
			sql = "INSERT INTO StudentCourse (grade , CourseID, StudentID) VALUES ('" + ml + "' , 3 , " + sid
					+ ")";
			o = stmt.executeUpdate(sql);
			sql = "INSERT INTO StudentCourse (grade , CourseID, StudentID) VALUES ('" + mml + "' , 4 , " + sid
					+ ")";
			o = stmt.executeUpdate(sql);
		}
		if (o != 1) {
			response.sendRedirect("grade-data.jsp?invalid=1");
		} else {
%>


<body>
	<div class="container">
		<div class="well" style="width: 400px;">
			<div class="row">
				<div class="col-sm-3"></div>
				<div class="col-sm-6">
					<h3>Student has been Registered</h3>
				</div>
				<div class="col-sm-3"></div>
			</div>
		</div>
	</div>
</body>

<%
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