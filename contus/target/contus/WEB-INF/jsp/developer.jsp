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

.developerText{
 width: 981px;
  height: 110px;
  font-family:  Avenir next, sans-serif;;
  font-size: 30px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 2.4px;
  text-align: center;
  color: #2d2d2d;
}


#homeText{
width: 290px;
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

#homePage{
width: 294px;
  height: 49px;
  border-radius: 30px;
  background-color: #2d2d2d;
  margin-left: 34%;
}

</style>
</head>
<body>

<img src="<c:url value="/resources/logo2.png" ></c:url>" alt="Contus Logo" style="width: 20%;">
<span id="adminTitle" >Developer Page &nbsp;&nbsp;&nbsp;</span> 


<div class="container">
	<div class="row">
		<div class="col-sm-2"></div>
		
		<div class="col-sm-8">
		<span class="developerText">Developer - Aditya Srivastava</span>
		
		</div>
	</div>
	<br><br>
	<div class="row">
		<div class="col-sm-2"></div>
		
		<div class="col-sm-8">
		<span class="developerText">Email - addysriv27@gmail.com</span>
		
		</div>
	</div>
	<br><br>
	<div class="row">
		<div class="col-sm-2"></div>
		
		<div class="col-sm-8">
		<span class="developerText">Mobile / WhatsApp - +91 7007321011</span>
		
		</div>
	</div>



</div>

<br><br><br><br>
<button id="homePage" onclick="redirectToHome();"><span id="homeText">Home Page</span></button>

<script>

function redirectToHome(){
	
	window.location.href = "${pageContext.request.contextPath}/home";	
}


</script>



</body>
</html>