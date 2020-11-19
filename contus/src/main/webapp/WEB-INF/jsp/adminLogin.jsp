<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link rel="icon" href="resources/Logo.png" type="image/icon type">

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.5/umd/popper.min.js"></script>

<link rel="stylesheet" type="text/css" href="resources/css/customFrontPage.css">


<title>Contus Admin</title>
<style>
body {
	background-color: rgba(255, 142, 34, 0.31);

	/* background-image:url("resources/klarna.jpg"); */
}

#adminTitle {
	float: right;
	font-size: 51px;
	font-style: italic;
	font-weight: bold;
	color: rgb(252, 157, 40);
}

.adminLoginFont {
	font-size: 20px;
	font-weight: bold;
}

button.active.focus, button.active:focus, button.focus, button:active.focus,
	button:active:focus, button:focus {
	outline: none;
	box-shadow: none;
}

.inputCss {
	width: 100%;
	border-radius: 14px;
	background-color: rgba(255, 142, 34, 0.31);
	padding: 8px 3px;
}

input[type=text] {
	width: 100%;
	padding: 8px 3px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=text]:focus {
	border: 3px solid #ff7d00;
}

input[type=password] {
	width: 100%;
	padding: 8px 3px;
	box-sizing: border-box;
	border: 2px solid #ccc;
	-webkit-transition: 0.5s;
	transition: 0.5s;
	outline: none;
}

input[type=password]:focus {
	border: 3px solid #ff7d00;
}

#sendMessageButton{
	width: 198px;
    height: 53px;
    border-radius: 30px;
    background-color: #ff7d00;
    border-color: rgba(255, 142, 34, 0.31);

}

#sendMsgText{
  width: 219px;
  height: 27px;
  font-family: AvenirNext;
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 1.2px;
  text-align: center;
  color: #ffffff;
}


#errorAdminText{
color:red;
}
</style>
</head>
<body>

<img src="<c:url value="/resources/logo2.png" ></c:url>" alt="Contus Logo" style="width: 20%;">
<span id="adminTitle" >Admin Page &nbsp;&nbsp;&nbsp;</span> 


<div class="container" id="loginContainer">

	<div class="row"><br><br><br></div>
	
	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"><span class="adminLoginFont">User Name : </span></div>
		<div class="col-sm-3">
		<input type="text" class="inputCss" id="userNameId" name="userName"></div>
	
	</div>

	<div class="row"><br></div>

	<div class="row">
		<div class="col-sm-3"></div>
		<div class="col-sm-2"><span class="adminLoginFont">Password : </span></div>
		
		<div class="col-sm-3">
		<input type="password" id="userPassowrdId" class="inputCss" name="userPassword"></div>
	
	</div>
	
	<div class="row">
		<div class="col-sm-5"></div>
		<div class="col-sm-5"><span id="errorAdminText">Invalid Credentials</span></div>
	</div>
	
	<div class="row"><br><br><br></div>
	
	<div class="row">
		<div class="col-sm-2"></div>
		<div class="col-sm-6" style="text-align: center;">
			<button id="sendMessageButton" onclick="validateAdminLogin();"><span id="sendMsgText">Log In</span></button>
		</div>
	</div>
	
</div>

<div class="container" id="couponContainer">


</div>

<script>

$('#errorAdminText').hide();


function validateAdminLogin(){
	
	var name=$('#userNameId').val();
	var pass=$('#userPassowrdId').val();
	
	$.ajax({ 
        url : "${pageContext.request.contextPath}/validateLogin",
        
		async : false,
		data : ({ 
			userName : name,
			userPassword : pass
			}), 
			success : function(jqXHR) {
				
				if(jqXHR=="error")
					{
					$('#errorAdminText').show();
					
					}
				else
					{
					$('#loginContainer').hide();
					$('#couponContainer').html(jqXHR);
					}
			}
	});
	
}

</script>


</body>
</html>