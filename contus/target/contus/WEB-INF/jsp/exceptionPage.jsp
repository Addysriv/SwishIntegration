<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<link rel="icon" href="resources/Logo.png" type="image/icon type">

<meta name="viewport" content="width=device-width, initial-scale=1.0">


<%@ page isErrorPage="true" %>  

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



<meta charset="ISO-8859-1">
<title>Contus Error Page</title>
</head>
<body>

<img src="<c:url value="/resources/logo2.png" ></c:url>" alt="Contus Logo" style="width: 20%;">
<br><br><br>
<div id="errorDiv">
<!-- <span id="aboveError">Oops </span> -->
<br><br>
<span id="errorText" >Error Occured!!!</span> <br>
<br><span id="belowError">Sorry, It looks like something went wrong.Please contact us in case of any issues or return to home page.</span>
<br><br><br><br>
<button id="homePage" onclick="redirectToHome();"><span id="homeText">Home Page</span></button>

</div>
<script>

function redirectToHome(){
	
	window.location.href = "${pageContext.request.contextPath}/home";	
}


</script>

<style>
#errorDiv{
margin-left:24%;
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
#errorText {
 width: 504px;
  height: 328px;
  font-family: AvenirNext;
  font-size: 100px;
  font-weight: 900;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: normal;
  text-align: center;
  color: rgba(255, 116, 0, 0.38);
}


#aboveError{
 width: 140px;
  height: 55px;
  font-family: AvenirNext;
  font-size: 47px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 2.4px;
  text-align: center;
  color: #2d2d2d;
    margin-left: 23%;
}

#belowError{
 width: 486px;
  height: 27px;
  font-family: AvenirNext;
  font-size: 20px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: normal;
  text-align: center;
  color: #313131;
}
#homePage{
width: 347px;
  height: 60px;
  border-radius: 30px;
  background-color: #2d2d2d;
  margin-left: 17%;
}


@media only screen and (max-width: 740px){

#homePage{
margin-left:0%;
}

}



</style>
</body>
</html>