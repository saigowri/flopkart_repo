function headerFunctions(ctxPath)
{	
	$("#signup").hide();
	$(".warning").hide();
	checkCookie();	
	$("#f_name").focus(function(){
	        $('.warning').hide(); // hide error popup
	});
	$("#l_name").focus(function(){
	        $('.warning').hide(); // hide error popup
	});
	
	$("#phone").focus(function(){
	       $('.warning').hide(); // hide error popup
	});
	$("#email").focus(function(){
	       $('.warning').hide(); // hide error popup
	});
	$("#pass_txt").focus(function(){
	      $('.warning').hide(); // hide error popup
	});
	fetch(ctxPath);
}
	
function fetch(ctxPath) 
{
	$.ajax(
	{
		type : 'GET',
		contentType : 'application/json',
		url : ctxPath + "/webapi/categories",
		dataType : "json", // data type of response
		success : categoryMenu ,
    	error:
    		function() 
    		{
        	//alert("error occurred");
    		}
	});
}
	
function categoryMenu(result)
{
	for(var i in result)
	{
		var li_node = document.createElement("LI");                 // Create a <li> node
		li_node.className="dropdown yamm-fw mega-menu";
		li_node.setAttribute("id", "li_"+result[i].id);
		li_node.setAttribute("name", result[i].categoryName);
		var data = " <a href='category.jsp'  style='color:black' data-hover='dropdown' "+
				 "onmouseover='dropdownContent(this)' onmouseout='dropdownBack(this)' "+
		         "class='category-dropdown dropdown-toggle' data-toggle='dropdown' id='"+
		         result[i].id+"'>"+	result[i].categoryName +
		 		"<span id='span_"+ result[i].id+"' style='color:grey' class='glyphicon glyphicon-chevron-down'></span>"+
				"</a>";
		var data1 = "<ul class='dropdown-menu pages'>"+
					"<li>"+
						"<div class='yamm-content'>"+
							"<div class='row'>"+
								"<div class='col-xs-12 col-menu'>"+
									"<ul class='links' id='ul_"+ result[i].id+"'>"+
					"<li><a href='home.html'>Home</a></li></ul></div></div></li></ul>";
		document.getElementById("category_dropdown").appendChild(li_node);
		$(li_node).html(data + data1);
	} 

}
	
	
function dropdownContent(obj)
{
	var categoryid = obj.id;
	var ctxPath = "http://localhost:8080/flopkartPrototype";
		$.ajax(
		{
			type : 'POST',
			contentType : 'application/json',
			url : ctxPath + "/webapi/subcategories/category/"+categoryid,
			dataType : "json", // data type of response
			success : 
	    		function(data) 
	    		{
	        		//alert(data);
	    		} ,
	    	error:
	    		function() 
	    		{
	        	//alert("error occurred");
	    		}
		});
 	$(obj).css("color","blue");
 	$('#span_'+obj.id).toggleClass('glyphicon-chevron-down glyphicon-chevron-up');
 	$('#li_'+obj.id).addClass('open');
}

function dropdownBack(obj)
{
 	$(obj).css("color","black");
 	$('#span_'+obj.id).toggleClass('glyphicon-chevron-up glyphicon-chevron-down');
 	$('#li_'+obj.id).removeClass('open');
}

function show_signup()
{ 
	$("#old").hide();
	$("#signup").show();
}
	
	
function show_old()
{ 
	$("#old").show();
	$("#signup").hide();
}
	
function signup(ctxPath) 
{	
	if (!$("#f_name").val() )
	{
		$("#warning_fname").show();
		return false;
	}
	if (!$("#l_name").val() )
	{
		$("#warning_lname").show();
		return false;
	}
	var email = $("#email").val();
	var phone = $("#phone").val();
	if ( !phone.match(/^[0-9]{10}$/))
	{
		$("#warning_phone_new").show();
		return false;
	}
	if (!$("#email").val() )
	{
		$("#warning_email_new").show();
		return false;
	}
	else if (!email.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
	{
		$("#warning_email_new").show();
		return false;
	}
		
	if (!$("#pass_txt").val() )
	{
		$("#warning_pass_new").show();
		return false;
	}
		$.ajax(
		{
		type : 'POST',
		contentType : 'application/json',
		url : ctxPath + "/webapi/users/create",
		dataType : "json", // data type of response
		data : signupformToJSON(),
		success : renderDetails
		});
	}

function signupformToJSON() 
{
	var fname = $("#f_name").val();
	var lname = $("#l_name").val();
	var email = $("#email").val();
	var password = $("#pass_txt").val();
	var phone = $("#phone").val();
	var userType = "customer";	
		
	var flipkart_user = JSON.stringify({
				"firstName":fname,
				"lastName":lname,
				"phone":phone,
        		"email":email,
        		"password":password,
        		"userType":userType
        	
    });
	return flipkart_user;
}
	
function checkCookie() 
	{
	    var user = getCookie("user_details");
	    if (user != "") 
	    {
	    	setCookie("user_details", user, 10);
	        showUser(JSON.parse(user));
	    } 
	    else 
	    {
	    	showLogin();
$('#loginModal').modal('toggle');
	    }
	}

function showLogin()
	{
		$("#registered").hide();
		$("#unregistered").show();
	}

function showUser(user)
	{
		$("#registered").show();
		$("#unregistered").hide();
	}

function validate(ctxPath) 
		{
$(".warning").hide();
var email_phone = $("#email_phone").val();
var len = email_phone.length;
if(email_phone.match(/^[0-9]/))
{
	if (len!=10 || !email_phone.match(/^[0-9]{10}$/))
	{
		$("#warning_email").show();
		return false;
	}
}
else if (!email_phone.match(/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/))
{
		$("#warning_email").show();
		return false;
}
else
	findUser(ctxPath);
		}
		
//Helper function to serialize all the form fields into a JSON string
function formToJSON() 
{
		        var email = $("#email_phone").val();
	var password = $("#pass_text").val();
	var flipkart_user = JSON.stringify({
		        	"email":email,
		        	"password":password
		        	});
	return flipkart_user;
}

		    function findUser(ctxPath) 
		    {
	$.ajax(
	{
		type : 'POST',
		contentType : 'application/json',
		url : ctxPath + "/webapi/users/email",
		dataType : "json", // data type of response
		data : formToJSON(),
		success : renderDetails
	});
}

		function renderDetails(user)
		{
if (user == null)
{
	$("#warning_register").show();
}
else if (user.id === 0)
{
	$("#warning_pass").show();
}
else
{
	showUser(user);
	setCookie("user_details", JSON.stringify(user), 1);
	$('#loginModal').modal('toggle');
}

return false;
		}