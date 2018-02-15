<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="./bootstrapFiles/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="./bootstrapFiles/css/bootstrap.css">
<script
	src="./bootstrapFiles/js/jquery-3.2.1.min.js"></script>
<script
	src="./bootstrapFiles/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Registration</title>
</head>
<script type="text/javascript">
	function validFunc(obj){
		var gradeVal = obj.val();
		var len = gradeVal.length;
		//alert(gradeVal+" "+len);
		if(gradeVal){
			if(len==1 && !gradeVal.match(/^[ABCDF]{1}$/g)){
				alert("Enter valid grade");
			}
			else if(len==2 && !gradeVal.match(/^[A-D]{1}[+-]$/g)){
				alert("Enter valid grade");
			}
		}
	}
</script>
<script>	
	$(document).ready(function() {
		$("#submit").click(function() {
			var rollVal = $("#rollNum").val();
			var len = $("#rollNum").val().length;
			if (rollVal && (len == 9 || len==10)) {
				if ((len==9 && !rollVal.match(/^[A-z]{2}[0-9]{7}$/g)) || (len==10 && !rollVal.match(/^[A-z]{3}[0-9]{7}$/g)))
				{
					alert("Please enter valid roll number");
					return false;
				}
				return true;
			} else {
				alert("Please enter valid roll number");
				return false;
			}
		})
	});
</script>
<%
	if (request.getParameter("invalid") != null && Integer.parseInt(request.getParameter("invalid")) == 1) {
		out.println(
				"<center><b><p style='color:red;'>Could not register. Please enter valid roll number and name </p></b></center>");
	}
	if (request.getParameter("invalidImage") != null
			&& Integer.parseInt(request.getParameter("invalidImage")) == 1) {
		out.println(
				"<center><b><p style='color:red;'>Please upload .jpg, .jpeg or .png image only </p></b></center>");
	}
%>

<body style="background-color: #A9D0F5;">
	<center>
		<h2>Enter your details</h2>
		<form id="rollNumForm" method="post"
			action="./grade-data-insert-action.jsp" enctype="multipart/form-data">
			<div class="container">
				<div class="well" style="width: 700px">
					<table class="table table-condensed">
						<tr>
							<th style="text-align: right"><label>Enter Roll
									Number: </label></th>
							<td style="text-align: center"><input type="text"
								maxlength="10" size="10" id="rollNum" name="rollNum"
								required="required" /></td>
						</tr>
						<tr>
							<th style="text-align: right"><label>Enter Student
									Name: </label></th>
							<td style="text-align: center"><input type="text"
								id="studName" name="studName" required="required"/></td>
						</tr>
						<tr>
							<th style="text-align: right"><label>Upload Image: </label></th>
							<td style="padding-left: 40mm"><input type="file"
								id="studImg" name="studImg" accept=".jpg, .jpeg, .png, .JPG, .PNG, .JPEG" /></td>
						</tr>
						<tr>
							<td><hr /></td>
						</tr>
						<tr>
							<th style="text-align: right"><label>Data Modeling
									Grade : </label></th>
							<td style="text-align: center"><input type="text"
								maxlength="2" name="dm" id="dm" size="2"
								onchange="validFunc($(this));" required="required" /></td>
						</tr>
						<tr>
							<th style="text-align: right"><label>OOAD Grade : </label></th>
							<td style="text-align: center"><input type="text"
								maxlength="2" name="ooad" id="ooad" size="2"
								onchange="validFunc($(this));" required="required" /></td>
						<tr>
							<th style="text-align: right"><label>Machine
									Learning Grade : </label></th>
							<td style="text-align: center"><input type="text"
								maxlength="2" name="ml" id="ml" size="2"
								onchange="validFunc($(this));" required="required" /></td>
						</tr>
						<tr>
							<th style="text-align: right"><label>Math for ML
									Grade : </label></th>
							<td style="text-align: center"><input type="text"
								maxlength="2" name="mml" id="mml" size="2"
								onchange="validFunc($(this));" required="required" /></td>
						</tr>
						<tr>
							<td colspan="2" style="text-align: center"><input
								type="submit" id="submit" value="Register"
								class="btn btn-default" /></td>
						</tr>
					</table>
				</div>
			</div>
		</form>
	</center>
</body>
</html>