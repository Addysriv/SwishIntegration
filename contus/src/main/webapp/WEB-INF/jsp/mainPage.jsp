<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->

<meta name="title" content="Contus" />
<meta name="description" content="Contus Personality Test to enhance your resume. Add an extra touch to your resume with our certified personality test" />
<meta keywords="Contus Personality Test" />

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="alternate" hreflang="en"   href="https://www.contus.se/" />

<link rel="alternate" hreflang="sv"   href="https://www.contus.se/" />

<link rel="alternate" hreflang="en-us"   href="https://www.contus.se/" />

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

 <script src="https://www.google.com/recaptcha/api.js?explicit&hl=${lang}" async defer></script>
 
<title>Contus</title>

<!-- <link rel="stylesheet" type="text/css" href="resources/css/customFrontPage.css"> -->

<script src="resources/js/frontPage.js"></script>


<script>

var toggleFlag=false;

var defaultLang='${lang}';
$( document ).ready(function() {
	
	if(screen.width<=790 && screen.width>=550)
	{
		$('.sideFaqColumn').removeClass('col-sm-2');
		$('.sideFaqColumn').addClass('col-sm-1');
		$('.responsiveClassFaq').removeClass('col-sm-3');
		$('.responsiveClassFaq').addClass('col-sm-4');
		
		$('.quesMargin').removeClass('col-sm-3');
		$('.quesMargin').addClass('col-sm-4');
		$('.quesMargin').css('margin-left','5%');
		
		
	}
	
	
	$('#modalButton').hide();
	$('#paymentDiv').hide();
	$('#contatcSuccessDiv').hide();
	$('#modalButtonForContactForm').hide();
	/* var userLang = navigator.language || navigator.userLanguage; 
	defaultLang=userLang; */
	if(userLang=="sv")
	{
		console.log("The language is: Swedish - " + defaultLang);
		
		$("#englishLang").css("text-decoration","none");
		$("#swishLang").css("text-decoration","underline");
		$('#impressDiv').css("margin-left","0px ");
		$('#organizLik').css("width","175px");
		$('#lowerContusData').css("font-size","27px");
		$('#thankText').css("margin-left","11%");
		$('#getBackText').css("margin-left","6%");
		$('#testStartButton').css("margin-left","-6%");
		$('#recaptcha-anchor-label').textContent='I am not a robot';
	}
	else
		{
		console.log ("The language is: " + "English - "+defaultLang);
		$("#englishLang").css("text-decoration","underline");
		$("#swishLang").css("text-decoration","none");
		$('#impressDiv').css("margin-left","-2px");
		$('#organizLik').css("width","157px");
		$('#lowerContusData').css("font-size","25px");
		$('#testStartButton').css("margin-left","-3%");
		$('#recaptcha-anchor-label').textContent='I am not a robot';
		}
	
	
	
	$("#headerButton").on("click",function(){
		
		if(toggleFlag){
		$(".collapse.show").css("display","none");
		toggleFlag=false;
		}
		else{
			$(".collapse.show").css("display","block");
			toggleFlag=true;
			
		}
		
	})
	
	$(".collapse.show").css("display","none");
});

function contactFormSubmit(){

	var name=$('#contactName').val();
	var company=$('#contactCompany').val();
	var email=$('#contactEmail').val();
	var contactMessage=$('#contactComment').val();
	var captchaMsg=$('#g-recaptcha-response').val();
	
	var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
	if(reg.test(email))
		{
		$('#contactErrorDiv').hide();
		}
	else
		{
		$('#contactErrorDiv').show();
		$('#contactErrorDiv').text('Email Invalid');
		return ;
		
		}
	
	if(name=="")
	{
	$('#contactErrorDiv').show();
	$('#contactErrorDiv').text('Name Required');
	return ;
	}
else
	{
	$('#contactErrorDiv').hide();
	}
	
	if(contactMessage=="")
	{
	$('#contactErrorDiv').show();
	$('#contactErrorDiv').text('Message Required');
	return ;
	}
else
	{
	$('#contactErrorDiv').hide();
	}
	
	
	$.ajax({ 
		url : "${pageContext.request.contextPath}/submitContactForm",

		async : false,
		data : ({ 
			contactName : name,
			contactCompany : company,
			contactEmail : email,
			contactComment : contactMessage,
			gresponse:captchaMsg
		}), 
		success : function(jqXHR) {
			
			if(jqXHR=="success")
			{
				$('#contatcDiv').hide();
				$('#contatcSuccessDiv').show();
			}
			else if(jqXHR=="captchaError"){
				$('#captchaErrorDiv').show();
			}
			else
				{
				alert('Contact Failed, Sorry was unable to contact. Try again in some time.');
				}

		}
	});


}

</script>

</head>
<body>


	<nav class="navbar navbar-expand-md navbar-light " >

		<div class="container-fluid">
			<a class="navbar-brand" href="#" id="contusLogo" ><img  id="contusLogoImg"
				src="<c:url value="/resources/logo2.png" ></c:url>"
				alt="Contus Logo" style="width: 20%;"> </a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"  id="headerButton"
				data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>

			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto" style="width: 100%;">
					<li class="nav-item active" id="testStartLink" style="width: 145px;"><a class="nav-link" style="float: right;" onclick="startTest();" href="#"><spring:message code="label.contus.doTest" /></a></li>&nbsp;&nbsp;
					  <li class="nav-item" id="organizLik" ><a class="nav-link"  href="${pageContext.request.contextPath}/organization"><spring:message code="label.contus.recruiters" /></a></li>&nbsp;&nbsp; 
					<li class="nav-item"><a class="nav-link" href="#faqTitle" ><spring:message code="label.contus.faq" /></a></li>&nbsp;&nbsp;
					<li class="nav-item"><a class="nav-link" href="#" onclick="contactForm();"><spring:message code="label.contus.contact" /></a></li>&nbsp;&nbsp;
					 <li class="nav-item"><div class="vl"></div></li> 
					<li class="nav-item" id="navEnlgish" style="font-size:11px;margin-top: 2px;margin-left:2%;"> 
					 <a class="nav-link" id="englishLang" href="${pageContext.request.contextPath}/english" ><spring:message code="label.contus.english" /></a>
					</li>
					<li class="nav-item" style="font-size:11px;margin-top: 2px;"> 
					 <a class="nav-link" id="swishLang" href="${pageContext.request.contextPath}/svenska" ><spring:message code="label.contus.swedish" /></a>
					</li>
				<%-- 	<li class="nav-item"> <a class="nav-link" href="${pageContext.request.contextPath}/svenska" ><spring:message code="label.contus.swedish" /></a></li>&nbsp;&nbsp; --%>
					
				</ul>
				

			</div>

		</div>

	</nav>


		
<%-- 		<img id="contusButtonImage" 
		src="<c:url value="/resources/s1.png" ></c:url>" alt="Test Brief"  onclick="startTest();"
		style="width: 100%; background-position: center center; background-repeat: no-repeat;">
		
	<img id="contusButtonImage" 
		src="<c:url value="/resources/s1.png" ></c:url>" alt="Test Brief" usemap="#workmap" 
		style="width: 100%; background-position: center center; background-repeat: no-repeat;">

		
<!-- 	<map name="workmap">
	  <area shape="rect" coords="254,475,513,540" onclick="startTest();" alt="Computer" href="#">
	  
	</map> --> --%>
	
	<div class="container">
	
		<!-- Trigger the modal with a button -->
		<button type="button" id="modalButtonForContactForm" class="btn btn-info btn-lg "
			data-backdrop="static" data-keyboard="false" data-toggle="modal"
			data-target="#myModalForContactForm" style="background-color: white;border-color: white;"></button>

		<!-- Modal -->
		<div class="modal fade" id="myModalForContactForm" role="dialog" style="margin-top: -5%;">
			<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content" style="margin-top: 14%;">
					<div class="modal-header" style="border-bottom: 0;">
						
						<div class="modal-title">
							<img src="<c:url value="/resources/Logo.png" ></c:url>"
								alt="Contus Logo" style="width: 6%;">
								
						</div>
						
						
						<button type="button" class="close" data-dismiss="modal" style="float:right;">&times;</button>
					</div>
					<div class="modal-body">
						
				<div class="container">
					<!-- <div class="row"><br></div> -->
					<div id="contatcDiv">
					
							<div class="row">
					
								<div class="col-sm-12" id="contusUsHeading" style="text-align: center;font-family: Avenir next, sans-serif;
										font-size: 40px;font-weight: 600;font-stretch: normal;font-style: normal;line-height: normal;
										letter-spacing: 2.4px;text-align: center;color: #2d2d2d;">
										
									<spring:message code="label.contus.contactHeader" />
								</div>
					
							</div>
							<br>
							<div class="row">
								<div class="col-sm-3"></div>
							<div class="col-sm-6">
							
							<div class="alert alert-danger" id="contactErrorDiv" style="display:none;text-align: center;width:107%;"></div>
							<div class="alert alert-danger" id="captchaErrorDiv" style="display:none;text-align: center;width:107%;"><spring:message code="label.contus.captchaError" /></div>
							</div></div>
					<!--    <div class="row"><br></div>
					 -->
						  <div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8"><input type="text" placeholder="<spring:message code="label.contus.contactName" />"
													 id="contactName"></div>
					
						</div>
						<br>
					
						  <div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8"><input type="text" placeholder="<spring:message code="label.contus.contactCompany" />" 
														id="contactCompany"></div>
					
						</div>
						<br>
					
						  <div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8"><input type="text" placeholder="<spring:message code="label.contus.contactEmail" />"
													 id="contactEmail"></div>
					
						</div>
						<br>
					
						  <div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8">
								<textarea class="form-control" placeholder="<spring:message code="label.contus.contactMsg" />" 
													 rows="5" id="contactComment"></textarea>
							</div>
					
						</div>
					
						<br>
						
						<div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8" id="captchaDiv" style="margin-left: 28%">
							 	<div class="g-recaptcha" data-sitekey="6LdkJM8ZAAAAACYaSseci_8rFcn6uJSL4OeVXaYS"></div>
							 	<br>
							 	
							 </div>
						</div>
							
						<br>
						
						<div class="row">
						 <div class="col-sm-12" id="contactSendButtonDiv" style="text-align: center;">
						 	<button id="sendMessageButton" onclick="contactFormSubmit();"><span id="sendMsgText"><spring:message code="label.contus.sendMsg" /></span></button>
						 </div>
						</div>
					
						<br>
						
						</div>
						<div id="contatcSuccessDiv" style="margin-left: 35%;">
							
							<br><br><br>
							<img src="<c:url value="/resources/tick.jpg" ></c:url>"
								alt="Contus Tick" style="width: 20%;margin-left: 14%;">
							<br><br>
							<span id="thankText"><spring:message code="label.contus.thankYou" /></span>
							<br>
							<span id="getBackText"><spring:message code="label.contus.getBack" /></span>
							<br><br><br><br><br><br><br><br>
						</div>
					</div>
						
					</div>

				</div>
			</div>
		</div>
	</div>
	
	<div class="jumbotron" style="background-color: white;padding:1%;">
	
	
		<div class="row" id="contusMainDiv" style="margin-left: 10%;">
			<div class="col-sm-6">
			
			<h3 id="contusHeadMain" style="font-family: Avenir next, sans-serif;font-size: 50px;font-weight: 600;font-stretch: normal;font-style: normal; line-height: 1.4;
    			letter-spacing: 9.52px;color: #4a4a4a;"><spring:message code="label.contus" /></h3>
			<span id="lowerContusData"><spring:message code="label.contus.lower.heading" />
				<b><spring:message code="label.contus.lower.heading.out" /></b>
			</span>
			<br><br>
			<p id="belowContextData" style="font-family: Avenir next, sans-serif;font-size: 19px;font-weight: normal;font-stretch: normal;font-style: normal;margin-right: 29%;
  				line-height: 1.3;letter-spacing: normal;color: #4a4a4a;"><spring:message code="label.contus.context" /></p>
  					
  					<img  src="resources/checkMark.png" class="img-responsive checkMarkClass" ><span class="checkMarkText"><spring:message code="label.contus.only199" /></span> &nbsp;
  						<span class="extraBrCheck" style="display:none;"><br></span>
  					<img  src="resources/checkMark.png" class="img-responsive checkMarkClass" ><span class="checkMarkText"><spring:message code="label.contus.fastSimple" /></span> &nbsp;
  						<span class="extraBrCheck" style="display:none;"><br></span>
  					<img  src="resources/checkMark.png" class="img-responsive checkMarkClass" ><span class="checkMarkText"><spring:message code="label.contus.valuable" /></span> 
  					<br><br>
  				<button id="testStartButtonAbove" onclick="startTest();" style="border-radius: 30px;width: 242px; 
  				height: 50px;background-color: #ff7d00;border-color: #ff7d00;border-bottom-style: hidden;border-right: #ff7d00;">
  				<span id="testButton"  >
  				<spring:message code="label.contus.doTest" />
  				</span></button>
  				
			</div>
			<!-- <div class="col-sm-1"></div> -->
			<div class="col-sm-5">
			<!-- <img  src="resources/orange.jpg" id="orangeImage" alt="Test Brief" style="width: 84%;margin-top:8%;height:500px;"> -->
			<img  src="resources/mainImageSmall.png" class="img-responsive" id="handImage" alt="Test Brief" style="margin-left: -10%;max-width: 120%;margin-top: -5%;">
			</div>

		</div>

	</div>
	
	<br><br><br><br>
	
	<div class="container">
		
		<!-- Trigger the modal with a button -->
		<button type="button" id="modalButton" class="btn btn-info btn-lg "
			data-backdrop="static" data-keyboard="false" data-toggle="modal"
			data-target="#myModal" style="background-color: white;border-color: white;"></button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog" style="margin-top: -5%;">
			<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content" style="margin-top: 14%;">
					<div class="modal-header" style="border-bottom: 0;">
						
						<div class="modal-title">
							<img src="<c:url value="/resources/Logo.png" ></c:url>"
								alt="Contus Logo" style="width: 6%;">
								
						</div>
						
						
						<button type="button" class="close" data-dismiss="modal" style="float:right;">&times;</button>
					</div>
					<div class="modal-body" style="padding: 45px;">
						<%-- <jsp:include page="paymentModal" />   --%>
					<%@ include file="paymentModal.jsp" %> 
					</div>

				</div>
			</div>
		</div>
	</div>


	<div id="gridRowDiv" class="container">
				<div class="row" >
					<!-- <div class="col-sm-1" style="margin-left: -5%;"></div> -->
					
					<div class="col-sm-4 sixIcons">
					
						 <img src="resources/u5.png"><br>
						<p><spring:message code="label.contus.chances1" />
						 
						 <spring:message code="label.contus.chances2" />
						</p>
					</div>
					
					<div class="col-sm-4 sixIcons" >
					
						 <img src="resources/u3.png"><br>
						<p><spring:message code="label.contus.compliemnt" />
						</p>
					</div>
				
				
					<div class="col-sm-4 sixIcons" >
					 <img src="resources/u4.png"><br>
						<p><spring:message code="label.contus.highlight" />
						</p>
					
					</div>
					
					
				</div>
				<br>
				<br>
				<div class="row" >
					<!-- <div class="col-sm-1" style="margin-left: -5%;"></div> -->
					
					<div class="col-sm-4 sixIcons">
					
						 <img src="resources/u6.png"><br>
						<p><spring:message code="label.contus.discussion" />
						</p>
					</div>
						
					<div class="col-sm-4 sixIcons" >
						 <img src="resources/u1.png"><br>
						<p><spring:message code="label.contus.120ques" /></p>
					</div>
					
					<div class="col-sm-4 sixIcons">
						 <img src="resources/u2.png"><br>
					<p><spring:message code="label.contus.resultEmail" /></p>
					</div>
					
					
				</div>
			</div>
		<br><br><br>
		<br><br><br>
		<div id="testInfo" class="jumbotron" style="background-color:rgba(255, 142, 34, 0.31);; background-size: 100%;
				background-position: center center; background-repeat: no-repeat; background-size: cover;margin-bottom: 0 !important;" >
				
			<div class="row">
		
				<div class="col-sm-1"></div>
				<div class="col-sm-4" id="aboveWhatQues" style="margin-top:5%;margin-left:5%;">
					<h4><spring:message code="label.contus.how" />
					</h4>
		
					<p id="personalityTestWork"><br>
					<spring:message code="label.contus.fiveFactor" />
				    </p>
		
				</div>
				<div class="col-sm-1"></div>
				<div class="col-sm-4" id="belowWhatQues" style="margin-top:5%;">
					<h4><spring:message code="label.contus.what" />
					</h4>
		
					<p id="personalityTestWorkSec"><br>
					<spring:message code="label.contus.disagreement" />
						</p>
		
				</div>
		
			</div>
			<br><br><br><br><br><br><br><br><br>
			<span id="extraBr"><br><br><br><br><br><br><br><br><br><br><br></span>
			
		</div>
			
		
		<div class="jumbotron" id="jumbotronFaqDiv" style="width:100%;margin-top: -8%; margin-bottom: 0 !important;transform: skewY(17.5deg);
    		transform-origin: 75%;background-color: #454545;border-radius: 0px;">
					
					<br><br><br><br><br><br>
					
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-3"></div>
						
						
						<div class="col-sm-6"><h3>
						<spring:message code="label.contus.about" />
						</h3></div>
					
					</div>
					<br>
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-3"></div>
						<div class="col-sm-6">
							<p>
							<spring:message code="label.contus.model" />
							
							</p></div>
					</div>
					
					<br><br>
					
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-3"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:white;font-weight: bold;">
							<spring:message code="label.contus.trait" />
							</span>
							<spring:message code="label.contus.emotionally" />
							
							
							</span></div>
					</div>
					<br><br>
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-3"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:white;font-weight: bold;">
							<spring:message code="label.contus.Extrovert" />
							</span> 
							<spring:message code="label.contus.outward" />
							
							</span></div>
					</div>
					<br><br>
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-3"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:white;font-weight: bold;"><spring:message code="label.contus.Openness" />
							</span>
							<spring:message code="label.contus.interested" />
							
							</span></div>
					</div>
					<br><br>
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-3"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:white;font-weight: bold;"><spring:message code="label.contus.Kindness" />
							</span>
							<spring:message code="label.contus.helpfulness" />
							
							</span></div>
					</div>
					<br><br>
					
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-3"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:white;font-weight: bold;">
							<spring:message code="label.contus.Conscientiousness" />
							</span>
							<spring:message code="label.contus.thorough" />
							
							</span></div>
					</div>
				<br><br>
					<br><br><br><br><br><br>
					
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-2"></div>
						
						<div class="col-sm-6" id="faqTitle" style="color: #ffffff; width: 84px; height: 55px;font-family: Avenir next, sans-serif;font-size: 40px;margin-left:6%;
						text-align: center;font-weight: 600;" id="faqDiv"><spring:message code="label.contus.faq" /></div>
						
					</div>
					<br><br>
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-2 sideFaqColumn" style="margin-left:3%;"></div>
						
						<div class="col-sm-3 responsiveClassFaq"  style="color: #ffffff;">
							<h5 class="faqHeader">
							<spring:message code="label.contus.q1" />
							</h5>
							
							<span class="faqText" ><spring:message code="label.contus.a1" /></span>
							
						</div>
							
						<div class="col-sm-1"></div>
							
						<div class="col-sm-3 quesMargin"  style="color: #ffffff;">
							<h5 class="faqHeader"><spring:message code="label.contus.q2" />
							</h5>
							
							<span class="faqText" >
							<spring:message code="label.contus.a2" />
							</span>
							
						</div>
							
							
					</div>
					
					<br><br>
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-2 sideFaqColumn" style="margin-left:3%;"></div>
						
						<div class="col-sm-3 responsiveClassFaq" style="color: #ffffff;">
							<h5 class="faqHeader"><spring:message code="label.contus.q3" />
							</h5>
							
							<span class="faqText" >
							<spring:message code="label.contus.a3" />
							
							</span>
							
						</div>
							
						<div class="col-sm-1"></div>
							
						<div class="col-sm-3 quesMargin"  style="color: #ffffff;">
							<h5 class="faqHeader">
							<spring:message code="label.contus.q4" />
							</h5>
							
							<span class="faqText" >
							<spring:message code="label.contus.a4" />
							
							</span>
							
						</div>
							
							
					</div>
					
					<br><br>
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-2 sideFaqColumn" style="margin-left:3%;"></div>
						
						<div class="col-sm-3 responsiveClassFaq" style="color: #ffffff;">
							<h5 class="faqHeader"><spring:message code="label.contus.q5" />
							</h5>
							
							<span class="faqText" >
							<spring:message code="label.contus.a5" />
							
							 </span>
							
						</div>
							
						<div class="col-sm-1"></div>
							
						<div class="col-sm-3 quesMargin"  style="color: #ffffff;">
							<h5 class="faqHeader"><spring:message code="label.contus.q6" />
							</h5>
							
							<span class="faqText" ><spring:message code="label.contus.a6" />
							
								 </span>
							
						</div>
							
						
					</div>
					
					<br><br>
					<div class="row" style="color:white;transform: skewY(-17.5deg);">
						<div class="col-sm-2 sideFaqColumn" style="margin-left:3%;"></div>
						
						<div class="col-sm-3 responsiveClassFaq" style="color: #ffffff;">
							<h5 class="faqHeader"><spring:message code="label.contus.q7" />
							</h5>
							
							<span class="faqText" ><spring:message code="label.contus.a7" />
							
							<br><br></span>
							<br>
							<h5 class="faqHeader"><spring:message code="label.contus.q8" />
							</h5>
							
							<span class="faqText" ><spring:message code="label.contus.a8" />
							
								 <br><br></span>
							
							
						</div>
							
						<div class="col-sm-1"></div>
							
						<div class="col-sm-3 quesMargin"  style="color: #ffffff;">
							<h5 class="faqHeader"><spring:message code="label.contus.q9" />
							</h5>
							
							<span class="faqText" >
							<spring:message code="label.contus.a9" />
							
							 </span>
							
						</div>
						
						
					</div>
					<br><br><br><br><br><br>
	</div>
	
	<!-- <div class="jumbotron" id="testimonialTron" style="background-color: #ffdcba;position:sticky;height:248px;margin-top:-18%;border-radius: 0px;display:none;">
	
	
	</div> -->
	<br><br><br>
	<div class="container quesContainer">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6" id="lookingDiv" style="font-family: Avenir next, sans-serif;margin-left: 3%;margin-top: 7%;font-weight: 600;font-size: 2.5rem;">
			<spring:message code="label.contus.looking" />
			</div>
			
		</div>
		
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-7" id="impressDiv" style="font-family: Avenir next, sans-serif;color: #4a4a4a;font-size: 16px;">
			<spring:message code="label.contus.Impress" />
			</div>
			
		</div>
		<br><br>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6 vertical-center btn" ><button id="testStartButton" style="border-radius: 30px;width: 242px;
  				height: 50px;background-color: #ff7d00;border-color: #ff7d00;border-bottom-style: hidden;border-right: #ff7d00;">
  				<span id="testButton" onclick="startTest();" >
  				<spring:message code="label.contus.doTest" />
  				</span></button></div>
			
			
			
		</div>
		<br><br><br><br><br><br><br>
		
		<div class="row">
			<div class="col-sm-1"></div>
			
			<div class="col-sm-6">
				<div id=""><img  src="resources/aboutUsSmall.png" class="img-responsive" id="aboutUs" alt="Test Brief" style="width: 100%;margin-top:-18%;margin-left: -4%;"></div>
			</div>
			<div class="col-sm-5" id="aboutUsColSm">
				<span id="aboutUsSpan"><b><spring:message code="label.contus.aboutUs" /></b></span>
				<br><br>
				<span id="aboutUsDataSpan">
					<p><spring:message code="label.contus.aboutUs.info" /></p>
					
				</span>
			
			</div>
		</div>
		<br><br><br><br><br><br>
	</div>
	







		<div class="footer" id="forTabs">
		<div id="footerLogoDivTab" style="display:none;">

			<div class="jumbotron" style="background-color: #6a6a6a;margin-bottom: 0;border-radius:0;height: 100%;padding: 1rem 2rem;">
				<div class="row" style="margin-top: 2%;">
					<div class="col-sm-4">
						<img src="resources/greyLogo.png" alt="Contus Logo" style=" width:44%; height: 67%;">
						<br>
						<span id="rightsReserved"><spring:message code="label.contus.rightsReserved" /></span>
						
					</div>
					<div class="col-sm-1"></div>
					
					<div class="col-sm-2">
						
						<span id="contactSpan" ><spring:message code="label.contus.contact" /></span>
						
						 <ul class="list-unstyled">
					          <li>
					           	<a class="footerLinks" href="#" onclick="contactForm();" ><spring:message code="label.contus.contact.contactForm" /></a>
					          </li>
					          <li class="underlyingFooterContact">
					             <spring:message code="label.contus.contact.email" />
					          </li>
					          
					      </ul>
					
					</div>
					
					<div class="col-sm-2" >
						<span id="linkSpan" ><spring:message code="label.links" /></span>
						
						 <ul class="list-unstyled">
					          <li>
					           	<a class="footerLinks" href="#faqTitle">
									<spring:message code="label.contus.faq" /></a>
					          </li>
					<%--           <li>
					             <a class="footerLinks" href="#aboutUsSpan"><spring:message code="label.contus.aboutUs" /></a>
					          </li>
 --%>					          <li>
					            <a class="footerLinks" href="${pageContext.request.contextPath}/privacyPolicy"><spring:message code="label.gdpr" /></a>
					          </li>
					          
					      </ul>
					
					</div>
					
					
					
					<div class="col-sm-3">
						<span id="contactSpan" ><spring:message code="label.contus.addressTitle" /></span>
						
						 <ul class="list-unstyled">
						  <li>
					           	<span class="underlyingFooterContact" ><spring:message code="label.contus.addressName" /></span>
					          </li>
					           <li>
					           	<span class="underlyingFooterContact" ><spring:message code="label.contus.addressVAT" /></span>
					          </li>
					          <li>
					           	<span class="underlyingFooterContact" ><spring:message code="label.contus.address1" /></span>
					          </li>
					          <li>
					            <span class="underlyingFooterContact" ><spring:message code="label.contus.address2" /></span>
					          </li>
					       
					      </ul>
					
					</div>
					
					
				</div>



			</div>
		
			</div>
		</div>
		


		
		<div class="footer" >
		<div id="footerLogoDivNormal" >

			<div class="jumbotron" style="background-color: #6a6a6a;margin-bottom: 0;border-radius:0;height: 100%;padding: 1rem 2rem;">
				<div class="row">
					<div class="col-sm-5" id="forWebsite">
					<img src="<c:url value="/resources/greyLogo.png" ></c:url>" 
									alt="Contus Logo" style=" width:150px; height: 150px;margin-top: -2%;">
					<br>
					<span id="rightsReserved"><spring:message code="label.contus.rightsReserved" /></span>
					<br>
					</div>

					<div class="col-sm-1" id="middleDiv" style="margin-left: 4%;"></div>
					<div class="col-sm-1" id="linkFooterDiv" ><br>
					<span id="linkSpan" ><spring:message code="label.links" /></span>
					
					<br>
					<span id="" class="underlyingFooterLinks" > <a class="footerLinks" href="#faqTitle">
									<spring:message code="label.contus.faq" /></a></span>
				<%-- 	<br>
				
					<span id="" class="underlyingFooterLinks" > <a class="footerLinks" href="#aboutUsSpan"><spring:message code="label.contus.aboutUs" /></a></span>
					 --%>
					<br>
						<span class="underlyingFooterLinks" ><a class="footerLinks" href="${pageContext.request.contextPath}/privacyPolicy">
							<spring:message code="label.gdpr" /></a></span>
							
					</div>
					
					<div class="col-sm-2" id="contactDivCol" style="max-width: 12%;"><br>
					<span id="contactSpan" ><spring:message code="label.contus.contact" /></span>
					<br>
					<span class="underlyingFooterContact" onclick="contactForm();" ><a class="footerLinks" href="#"><spring:message code="label.contus.contact.contactForm" /></a></span>
					<br>
					<span class="underlyingFooterContact" ><spring:message code="label.contus.contact.email" /></span>
					<br>
					
					</div>
					
					<div class="col-sm-3"><br>
					<span id="contactSpan" ><spring:message code="label.contus.addressTitle" /></span>
					<br>
					<span class="underlyingFooterContact" ><spring:message code="label.contus.addressName" /></span>
					<br>
					<span class="underlyingFooterContact" ><spring:message code="label.contus.addressVAT" /></span>
					<br>
					<span class="underlyingFooterContact" ><spring:message code="label.contus.address1" /></span>
					<br>
					<span class="underlyingFooterContact" ><spring:message code="label.contus.address2" /></span>
					<br>
					
					
					</div>
					
					
					<div class="col-sm-5" id="forMobile" style="display:none;">
					<img src="<c:url value="/resources/greyLogo.png" ></c:url>" id="contusFooterLogo"
									alt="Contus Logo" style=" width:127px; height: 140px;margin-top: -2%;margin-left:-5%">
					<br>
					<span id="rightsReserved"><spring:message code="label.contus.rightsReserved" /></span>
					<br>
					</div>

				</div>



			</div>
		
			</div>
		</div>
		
</body>

<style>


 
.footerLinks{
  text-decoration: none;
  color: white;
}

.footerLinks:hover,.footerLinks:focus{
  text-decoration: none;
  color: white;
}

#aboutUsImage{
  width: 100%;
  height: 182px;
  background-color: #d8d8d8;
}

#aboutUsDataSpan{
  width: 433px;
  height: 182px;
  font-family: Avenir next, sans-serif;
  font-size: 18px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.44;
  letter-spacing: normal;
  text-align: initial;
  color: #4a4a4a
}

#aboutUsSpan{
  width: 433px;
  height: 182px;
  font-family: Avenir next, sans-serif;
  font-size: 24px;
  font-weight: 400;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.44;
  letter-spacing: normal;
  text-align: justify;
  color: #4a4a4a
}

.underlyingFooterLinks{

  font-family: Avenir next, sans-serif;
  font-size: 14px;
  
  color: #ffffff;
  
 }

.underlyingFooterContact{

  font-family: Avenir next, sans-serif;
  font-size: 14px;
  /* margin-left: 10%; */
  color: #ffffff;

}

#linkSpan,#contactSpan {

  font-family: Avenir next, sans-serif;
  font-size: 18px;
  font-weight: bold;
  color: #ffffff;
}

#rightsReserved {
 width: 413px;
  height: 27px;
  font-family: Avenir next, sans-serif;
  font-size: 14px;
  font-weight: 600;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: normal;
  text-align: justify;
  color: #a2a2a2;
  }


#navbarResponsive li{
font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: normal;
  color: #000000;
  font-family: Avenir next, sans-serif;
  font-size: 15px;
  font-weight: 450;
}

button.active.focus, button.active:focus,
button.focus, button:active.focus, 
button:active:focus, button:focus {
  outline: none;
  box-shadow: none;
  
}


#gridRowDiv p{

 
  font-family: Avenir next, sans-serif;
  font-size: 20px;
  
  text-align: center;
  color: #313131;

}

#gridRowDiv img{
display: block;
  margin-left: auto;
  margin-right: auto;
  width:50px;
  height:50px;
}


.faqText{

  font-family: Avenir next, sans-serif;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.28;
  letter-spacing: normal;
  color: #ffffff;
}

.faqHeader{

  font-family: Avenir next, sans-serif;

  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: normal;
  color: #ffffff;
  }
  
  
 #testButton{
  width: 219px;
  height: 27px;
  font-family: Avenir next, sans-serif;
  font-size: 20px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 1.2px;
  text-align: center;
  color: #ffffff;
  }
 
input[type=text] {
  width: 60%;
  padding: 8px 3px;
  box-sizing: border-box;
  outline: none;
} 

/* input[type=text]:focus {
  border: 3px solid rgba(255, 142, 34, 0.31);;
}
 */
 
 
  
#lowerContusData {
    width: 100%;
    height: 30%;
    font-family: Avenir next, sans-serif;
    
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    letter-spacing: 5.58px;
    color: #525252;
}

button.active.focus, button.active:focus,
button.focus, button:active.focus, 
button:active:focus, button:focus {
  outline: none;
  box-shadow: none;
  
}

#contactName , #contactEmail , #contactCompany {
    width: 79%;
    height: 40px;
    border-radius: 14px;
    border: solid 1px #707070;
    padding-left: 3%;
}

#contactComment{
   width: 79%;
   border-radius: 14px;
   border: solid 1px #707070;
   box-sizing: border-box;
   outline: none;
}

#contactComment:focus {
  
  outline: none !important;
    border:1px solid #707070;
    box-shadow: 0 0 0px white;
  
}


#sendMessageButton{
	width: 220px;
    height: 50px;
    border-radius: 30px;
    background-color: #ff7d00;
	border-color: rgba(255, 142, 34, 0.31);    
}

#sendMsgText{
  width: 219px;
  height: 27px;
  font-family: Avenir next, sans-serif;
  font-size: 17px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 1.2px;
  text-align: center;
  color: #ffffff;
}

#thankText{
 width: 240px;
  height: 55px;
  font-family: Avenir next, sans-serif;
  font-size: 40px;
  font-weight: bold;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 2.4px;
  text-align: center;
  color: #2d2d2d;
}

#getBackText{
 width: 300px;
  height: 27px;
  font-family: Avenir next, sans-serif;
  font-size: 20px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: normal;
  text-align: center;
  color: #313131;
}


.vl {
  border-left: 1px solid black;
  height: 22px;
  margin-top: 4px;
}

.navbar-light .navbar-nav .nav-link {
    color: black;
}


.checkMarkClass{
    width: 4%;
    height: 6%;
	margin-top: -2%;
}


.checkMarkText{
	font-size: 18px;
    font-weight: bold;
    font-family: Avenir next, sans-serif;
}




 /* @media only screen and (max-width: 900px){
 #linkFooterDiv{
    margin-left: -11%;
    margin-right: 7%;
 }
 
 }
  */

@media only screen and (max-width: 1090px){
#linkFooterDiv{
margin-left: -5%;
margin-right: 2%;
}

}

@media only screen and (max-width: 985px){

#continueButton{
margin-left:-34% !important;
}


#extraBr{
display:none;
}

#linkSpan, #contactSpan {
    font-size: 14px !important;
}

.footerLinks{
font-size: 13px !important;
}
 
 .underlyingFooterLinks, .underlyingFooterContact {
    font-size: 13px !important;
}
 
 #forWebsite img{
 
 width:120px !important;
 height:120px !important;
 
 }

#middleDiv{
margin-left:0% !important;
}

#contactDivCol{
max-width:16% !important;
}

#contusLogoImg{
width:40% !important;
}

}


@media only screen and (max-width: 790px){

#sendMsgText{
font-size:14px !important;
}


.footerLinks{
font-size: 12px;
}

#footerLogoDivTab{
display:block !important;
}

#footerLogoDivNormal{
display:none !important;
}

#forWebsite{
     max-width: 22% !important;
 }
 
 
#middleDiv{
margin-left: 0% !important; 
}

#contactDivCol{
margin-right:3% !important;
}

#contusLogo{
width:50% !important;
}

.checkMarkClass {
    width: 25px !important;
    height: 24px !important;
}

#gridRowDiv p{
font-size:13px !important;
}

.extraBrCheck{
display:block !important;
}

#footerLogoDivTab,#footerLogoDivNormal, .jumbotron{
height:100% !important;
} 

#continueButton{
margin-left: 12%;
}


#handImage{
margin-top: 10% !important;
margin-left: -5% !important;

}

 #linkFooterDiv{
    margin-left: 0% !important;
    margin-right: 0% !important;
 }

 #jumbotronFaqDiv{
  height: 500% !important;
  padding: 8%;
 }
 
 #testStartLink a{
 float:none !important;
 }
 
 
 #navEnlgish{
 margin-left:0% !important;
 margin-bottom: 2%;
 }
 
 #contusMainDiv{
 margin-left: 5% !important;
 }
 
 
 #lowerContusData{
 font-size: 20px !important;
 
 }
 
 
 #contusHeadMain{
 margin-bottom:-4%;
 }
 
 
 #belowContextData{
 margin-right:14% !important;
 }
 
 
#belowWhatQues{
margin-left:5%;
margin-right:5%;
}
 

.faqText{
font-size: 14px;
} 

 
#lookingDiv{
margin-left:5% !important;
margin-right:5%;
font-size: 26px !important;
text-align:center;
}

 
 
 
 #impressDiv{
text-align:center;
 font-size: 14px !important;
 }
 
 #aboutUs{
 margin-left:2% !important;
 }
 
 
 #aboutUsColSm{
 text-align:center;
 }
 
 #aboutUsDataSpan{
    margin-left: 5%;
    margin-right: 5%;
    
 }
 
#forWebsite img{
    width: 100px !important;
    height: 100px !important;
}
 
#contusFooterLogo{
 margin-left:0% !important;
 }
 
#navbarResponsive {
    
    /* overflow: visible; */
    align-items: inherit;
    text-align: right !important;
}
 
 /* 
  #testStartLink{
 width:100% !important;
 margin-top:10%;
 } */
 
 #organizLik{
width:138px ;
 
}

#klarnaImg{
margin-left: -42% !important;
}

#payButton{
margin-left: 19%;
}

#warningDiv{
font-size:16px !important;
letter-spacing: 0px !important;
text-align:justify !important;
}

#loaderDiv{
font-size:12px !important;
letter-spacing: 0px !important;
margin-top:-4%;
text-align:justify !important;
}

#gdprDiv{
margin-left:0% !important;


}

#termsDiv{
font-size: 15px !important;
}



#captchaDiv{
margin-left:0% !important;
}

#contusLogoImg{
width:60% !important
}


#rightsReserved {
font-size:11px !important;


}


#linkSpan, #contactSpan {
    font-size: 16px !important;    
}

.checkMarkText{
	font-size: 12px !important;
}


.underlyingFooterLinks,.underlyingFooterContact  {
font-size: 12px !important;
}

#linkFooterDiv {
    margin-left: 0% !important;
    margin-right: 5% !important;
}

#contactDivCol{
max-width:20% !important;
}


#testStartButton{
    width: 200px !important;
    height: 40px !important;
    margin-left: 23% !important;
}
 
 #testButton{
 font-size: 18px !important;
 }


#navbarResponsive li{
font-size: 12px !important;
}


#extraBr{
display:none;
}

.quesContainer{
margin-left:0% !important;
}

}
 
 @media only screen and (max-width: 768px){
 
  #contusLogoImg{
width:60% !important;
}
  
 
 }
 
  @media only screen and (max-width: 767px){
 
  
 .vl{
 
 display:none;
 }
 
  #contusLogoImg{
width:40% !important;
}
  
 
 }
 
 
 @media only screen and (max-width: 666px){
 
 #lowerContusData {
    font-size: 15px !important;
}
 
 }
 
 
 @media only screen and (max-width: 648px){

#linkSpan, #contactSpan {
    font-size: 14px !important;
}

.footerLinks{
font-size: 10px !important;
}
 
 .underlyingFooterLinks, .underlyingFooterContact {
    font-size: 10px !important;
}
 
 }
 
 @media only screen and (max-width: 568px){
 
 
#continueButton{
margin-left:0% !important;
}
 
 #faqTitle{
margin-left:0% !important;
 }
 
 #footerLogoDivNormal{
display:block !important;
}
 
 #footerLogoDivTab{
display:none !important;
}
 
 
 #linkSpan, .underlyingFooterLinks , #contactDivCol , #contactSpan , .underlyingFooterContact  {
 float: none !important;
 }
 
 
 #testStartLink{
     width: 100% !important;
 }
 
 #organizLik {
    width: 100% !important;
}
 
 #forMobile{
 display:block !important;
 }
 
 #forWebsite{
 display:none !important;
 }
 
  #linkFooterDiv {
    margin-left: 5% !important;
        
}

#linkSpan, #contactSpan {
    font-size: 16px !important;
}

.footerLinks{
font-size: 14px !important;
}
 
 .underlyingFooterLinks, .underlyingFooterContact {
    font-size: 14px !important;
}
 
 #jumbotronFaqDiv{
  height: 600% !important;
 }
 
 #orangeImage{
 height:320px !important;
 }
 
 #handImage{
 
 width: 100% !important;
 margin-top: 11% !important;
 }
 
 #contactSpan{
 margin-left:5% !important;
 }
 
 .underlyingFooterContact{
 margin-left:5% !important;
 }
 
 .sixIcons{
 margin-top:24%;
     margin-left: 5%;
    margin-right: 5%;
 }
 
 
 #navbarResponsive li{
  font-size: 17px !important;
 }


#contusLogo{
width:40% !important;
}

#extraBr{
display:none;
}

#contactDivCol{
max-width:100% !important;
}
#contusLogoImg {
    width: 65% !important;
}

#contusUsHeading{
margin-lefT:-7%;
}

#contactSendButtonDiv{
text-align: inherit !important;
}

#testStartButton{
 margin-left:0% !important;
 }
 

.quesMargin{
margin-top:10% !important;
}
#gridRowDiv p {
    font-size: 20px !important;
    }
}
 
 
.modal-dialog{
height:110%;
} 

@media only screen and (max-width: 375px){

#lowerContusData{
font-size:19px !important;
}

#contusLogoImg {
    width: 65% !important;
}

} 



@media only screen and (max-width: 328px){

#lowerContusData {
    font-size: 15px !important;
}

} 
 
  /* .dropdown-menu {background-color: transparent;} */
</style>


<script>

$( document ).ready(function() {
	
	if(screen.width<=790 && screen.width>=765)
	{
		if(userLang=="sv")
			{
			
			}
		else
			{
			$('#organizLik').css("width","125px");
			}
		
	}
	
	if(screen.width<765)
	{
		$('#testStartLink').css("width","100%");
		$('#organizLik').css("width","100%");
		
	}	
	
	
});

</script>

</html>


