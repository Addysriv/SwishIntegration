<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!-- <meta charset="ISO-8859-1"> -->

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


<title>Contus</title>

<!-- <link rel="stylesheet" type="text/css" href="resources/css/customFrontPage.css"> -->

<script src="resources/js/frontPage.js"></script>


<script>

var defaultLang='';
$( document ).ready(function() {
	$('#modalButton').hide();
	$('#paymentDiv').hide();
	$('#modalButtonForContactForm').hide();
	var userLang = navigator.language || navigator.userLanguage; 
	defaultLang=userLang;
	if(userLang=="sv")
	{
		console.log("The language is: " + defaultLang);
	
	}
	else
		{
		console.log ("The language is: " + "English");
	
		}
});

function contactFormSubmit(){

	alert('Contact Form Submit');

	var name=$('#contactName').val();
	var company=$('#contactCompany').val();
	var email=$('#contactEmail').val();
	var contactMessage=$('#contactComment').val();

	$.ajax({ 
		url : "${pageContext.request.contextPath}/submitContactForm",

		async : false,
		data : ({ 
			contactName : name,
			contactCompany : company,
			contactEmail : email,
			contactComment : contactMessage
		}), 
		success : function(jqXHR) {
			
			if(jqXHR=="success")
			{
			alert('Contact successfull'+jqXHR);	
			}
			else
				{
				alert('Contact Failed'+jqXHR);
				}

		}
	});


}

</script>

</head>
<body>

<%-- <% HttpSession hs=request.getSession(false);
if(hs.isNew())
{
	out.print("session expired");
}
%> --%>

	<nav class="navbar navbar-expand-md navbar-light " style="background-color: rgba(255, 142, 34, 0.31);">

		<div class="container-fluid">
			<a class="navbar-brand" href="#"><img
				src="<c:url value="/resources/logo2.png" ></c:url>"
				alt="Contus Logo" style="width: 20%;"> </a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarResponsive">
				<span class="navbar-toggler-icon"></span>

			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto">
					<li class="nav-item active"><a class="nav-link" onclick="startTest();" href="#"><spring:message code="label.contus.doTest" /></a></li>&nbsp;&nbsp;
					<%--  <li class="nav-item"><a class="nav-link"  href="#"><spring:message code="label.contus.recruiters" /></a></li>&nbsp;&nbsp; --%>
					<li class="nav-item"><a class="nav-link" href="#faqDiv" style=""><spring:message code="label.contus.faq" /></a></li>&nbsp;&nbsp;
					<li class="nav-item"><a class="nav-link" href="#" onclick="contactForm();"><spring:message code="label.contus.contact" /></a></li>&nbsp;&nbsp;
					<!-- <li class="nav-item dropdown">
					    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#">Language</a>
					      <div class="dropdown-menu">
					        <a class="dropdown-item" href="#">English</a>
					        <a class="dropdown-item" href="#">Svenska</a></div>
    				</li> -->
					
				</ul>
				

			</div>

		</div>

	</nav>

		<br />
		
		
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
		<h2></h2>
		<!-- Trigger the modal with a button -->
		<button type="button" id="modalButtonForContactForm" class="btn btn-info btn-lg "
			data-backdrop="static" data-keyboard="false" data-toggle="modal"
			data-target="#myModalForContactForm" style="background-color: white;border-color: white;"></button>

		<!-- Modal -->
		<div class="modal fade" id="myModalForContactForm" role="dialog" style="margin-top: -5%;">
			<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content" style="margin-top: 14%;">
					<div class="modal-header">
						
						<div class="modal-title">
							<img src="<c:url value="/resources/Logo.png" ></c:url>"
								alt="Contus Logo" style="width: 6%;">
								
						</div>
						
						
						<button type="button" class="close" data-dismiss="modal" style="float:right;">&times;</button>
					</div>
					<div class="modal-body">
						
				<div class="container">
					<!-- <div class="row"><br /></div> -->
							<div class="row">
					
								<div class="col-sm-12" style="text-align: center;width: 228px;height: 55px;font-family: AvenirNext;
										font-size: 40px;font-weight: bold;font-stretch: normal;font-style: normal;line-height: normal;
										letter-spacing: 2.4px;text-align: center;color: #2d2d2d;">
										
									<spring:message code="label.contus.contactHeader" />
								</div>
					
							</div>
					
					<!--    <div class="row"><br /></div>
					 -->
						  <div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8"><input type="text" placeholder="&nbsp;&nbsp;<spring:message code="label.contus.contactName" />"
													 id="contactName"></div>
					
						</div>
						<div class="row"><br /></div>
					
						  <div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8"><input type="text" placeholder="&nbsp;&nbsp;<spring:message code="label.contus.contactCompany" />" 
														id="contactCompany"></div>
					
						</div>
						<div class="row"><br /></div>
					
						  <div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8"><input type="text" placeholder="&nbsp;&nbsp;<spring:message code="label.contus.contactEmail" />"
													 id="contactEmail"></div>
					
						</div>
						<div class="row"><br /></div>
					
						  <div class="row">
							<div class="col-sm-3"></div>
							<div class="col-sm-8">
								<textarea class="form-control" placeholder="<spring:message code="label.contus.contactMsg" />" 
													 rows="5" id="contactComment"></textarea>
							</div>
					
						</div>
					
						<div class="row"><br /></div>
						
						<div class="row"><br /></div>
						
						<div class="row">
						 <div class="col-sm-12" style="text-align: center;">
						 	<button id="sendMessageButton" onclick="contactFormSubmit();"><span id="sendMsgText"><spring:message code="label.contus.sendMsg" /></span></button>
						 </div>
						</div>
					</div>
					
						<div class="row"><br /></div>
						
						
					</div>

				</div>
			</div>
		</div>
	</div>
	
	<div class="jumbotron" style="background-color: white;padding:1%;">

		<div class="row" style="margin-left: 10%;">
			<div class="col-sm-6">
			<br /><br />
			<h3 style="font-family: AvenirNext;font-size: 50px;font-weight: 600;font-stretch: normal;font-style: normal; line-height: 1.4;
    			letter-spacing: 9.52px;color: #4a4a4a;"><spring:message code="label.contus" /></h3>
			<span id="lowerContusData"><spring:message code="label.contus.lower.heading" /></span>
			<br /><br />
			<p style="font-family: AvenirNext;font-size: 19px;font-weight: normal;font-stretch: normal;font-style: normal;margin-right: 29%;
  				line-height: 1.3;letter-spacing: normal;color: #4a4a4a;"><spring:message code="label.contus.context" /></p>
  					<br /><br />
  				<button id="testStartButton" onclick="startTest();" style="border-radius: 30px;width: 242px; 
  				height: 60px;background-color: #ff7d00;border-color: #ff7d00;border-bottom-style: hidden;border-right: #ff7d00;">
  				<span id="testButton"  >
  				<spring:message code="label.contus.doTest" />
  				</span></button>
  				
			</div>
			<div class="col-sm-6">
			<!-- <img  src="resources/orange.jpg" id="orangeImage" alt="Test Brief" style="width: 84%;margin-top:8%;height:500px;"> -->
			<img  src="resources/newhand.png" id="handImage" alt="Test Brief" style="width: 102%;height:85%;">
			</div>

		</div>

	</div>

	<div class="container">
		<h2></h2>
		<!-- Trigger the modal with a button -->
		<button type="button" id="modalButton" class="btn btn-info btn-lg "
			data-backdrop="static" data-keyboard="false" data-toggle="modal"
			data-target="#myModal" style="background-color: white;border-color: white;"></button>

		<!-- Modal -->
		<div class="modal fade" id="myModal" role="dialog" style="margin-top: -5%;">
			<div class="modal-dialog modal-lg">

				<!-- Modal content-->
				<div class="modal-content" style="margin-top: 14%;">
					<div class="modal-header">
						
						<div class="modal-title">
							<img src="<c:url value="/resources/Logo.png" ></c:url>"
								alt="Contus Logo" style="width: 6%;">
								
						</div>
						
						
						<button type="button" class="close" data-dismiss="modal" style="float:right;">&times;</button>
					</div>
					<div class="modal-body">
						<jsp:include page="paymentModal" />  
					<%-- <%@ include file="paymentModal.jsp" %> --%>
					</div>

				</div>
			</div>
		</div>
	</div>



	<div id="gridRowDiv" class="container">
				<div class="row" style="width:115%;">
					<div class="col-sm-1"></div>
					
					<div class="col-sm-3">
					 <img src="resources/u1.png"><br />
					<p><spring:message code="label.contus.120ques" /></p>
					</div>
					
					
					<div class="col-sm-3">
					
					 <img src="resources/u2.png"><br />
					<p><spring:message code="label.contus.resultEmail" /></p>
					</div>
					
					<div class="col-sm-2">
					
					 <img src="resources/u3.png"><br />
					<p><spring:message code="label.contus.compliemnt" />
					</p>
					</div>
				
				</div>
				<div class="row"><br />
				<br /></div>
				<div class="row" style="width:115%;">
					<div class="col-sm-1"></div>
					
					<div class="col-sm-3">
					 <img src="resources/u4.png"><br />
					<p><spring:message code="label.contus.highlight" />
					</p>
					</div>
					
					
					<div class="col-sm-3">
					
					 <img src="resources/u5.png"><br />
					<p><spring:message code="label.contus.chances1" />
					 <br />
					 <spring:message code="label.contus.chances2" />
					</p>
					</div>
					
					<div class="col-sm-2">
					
					 <img src="resources/u6.png"><br />
					<p><spring:message code="label.contus.discussion" />
					</p>
					</div>
					
				</div>
			</div>
		<br /><br /><br />

		<div id="testInfo" class="jumbotron" style="background-color:rgba(255, 142, 34, 0.31);; background-size: 100%;
				background-position: center center; background-repeat: no-repeat; background-size: cover;margin-bottom: 0 !important;" >
				
			<div class="row">
		
				<div class="col-sm-1"></div>
				<div class="col-sm-4" style="margin-top:5%;">
					<h4><spring:message code="label.contus.how" />
					</h4>
		
					<p id="personalityTestWork"><br />
					<spring:message code="label.contus.fiveFactor" />
						
						</p>
		
				</div>
			<div class="col-sm-1"></div>
				<div class="col-sm-4" style="margin-top:5%;">
					<h4><spring:message code="label.contus.what" />
					</h4>
		
					<p id="personalityTestWorkSec"><br />
					<spring:message code="label.contus.disagreement" />
						</p>
		
				</div>
		
			</div>
			
			<div class="row"><br /><br /><br /></div>
		</div>
		
		
		
		<div class="jumbotron" id="jumbotronFaqDiv" style="width:100%; margin-top:-3%;margin-bottom: 0 !important;transform: skewY(3.5deg);
    		transform-origin: 56%; z-index: -1;height: 330%; border: solid 1px #979797; background-color: #454545;">
					
					<div class="row"><br /><br /><br /><br /><br /><br /></div>
					
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
					<div class="col-sm-2"></div>
					
					
					<div class="col-sm-6"><h3>
					<spring:message code="label.contus.about" />
					</h3><br /></div>
					
					</div>
					
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
					<div class="col-sm-2"></div>
					<div class="col-sm-6">
						<p>
						<spring:message code="label.contus.model" />
						<br /><br />
						</p></div>
					</div>
					
					
					
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
						<div class="col-sm-2"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:#ff7d00">
							<spring:message code="label.contus.trait" />
							</span>
							<spring:message code="label.contus.emotionally" />
							
							<br /><br />
							</span></div>
					</div>
					
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
						<div class="col-sm-2"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:#ff7d00">
							<spring:message code="label.contus.Extrovert" />
							</span> 
							<spring:message code="label.contus.outward" />
							<br /><br />
							</span></div>
					</div>
					
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
						<div class="col-sm-2"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:#ff7d00"><spring:message code="label.contus.Openness" />
							</span>
							<spring:message code="label.contus.interested" />
							<br /><br />
							</span></div>
					</div>
					
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
						<div class="col-sm-2"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:#ff7d00"><spring:message code="label.contus.Kindness" />
							</span>
							<spring:message code="label.contus.helpfulness" />
							<br /><br />
							</span></div>
					</div>
					
					
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
						<div class="col-sm-2"></div>
							<div class="col-sm-6">
							<span>
							<span style="color:#ff7d00">
							<spring:message code="label.contus.Conscientiousness" />
							</span>
							<spring:message code="label.contus.thorough" />
							<br /><br />
							</span></div>
					</div>
				
					<div class="row"><br /><br /><br /><br /><br /><br /></div>
					
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
					<div class="col-sm-2"></div>
					
					<div class="col-sm-6" style="color: #ffffff; width: 84px; height: 55px;font-family: AvenirNext;font-size: 40px;
					text-align: center;" id="faqDiv"><spring:message code="label.contus.faq" /></div>
					
					</div>
					<div class="row"><br /><br /></div>
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
					<div class="col-sm-2"></div>
					
					<div class="col-sm-3" style="color: #ffffff;">
						<h5 class="faqHeader">
						<spring:message code="label.contus.q1" />
						<br /></h5>
						
						<span class="faqText" ><spring:message code="label.contus.a1" /></span>
						
					</div>
						
					<div class="col-sm-1"></div>
						
					<div class="col-sm-3" style="color: #ffffff;">
						<h5 class="faqHeader"><spring:message code="label.contus.q2" />
						<br /></h5>
						
						<span class="faqText" >
						<spring:message code="label.contus.a2" />
						</span>
						
					</div>
						
						
					</div>
					
					<div class="row"><br /><br /></div>
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
					<div class="col-sm-2"></div>
					
					<div class="col-sm-3" style="color: #ffffff;">
						<h5 class="faqHeader"><spring:message code="label.contus.q3" />
						<br /></h5>
						
						<span class="faqText" >
						<spring:message code="label.contus.a3" />
						
						</span>
						
					</div>
						
					<div class="col-sm-1"></div>
						
					<div class="col-sm-3" style="color: #ffffff;">
						<h5 class="faqHeader">
						<spring:message code="label.contus.q4" />
						<br /></h5>
						
						<span class="faqText" >
						<spring:message code="label.contus.a4" />
						
						</span>
						
					</div>
						
						
					</div>
					
					<div class="row"><br /><br /></div>
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
					<div class="col-sm-2"></div>
					
					<div class="col-sm-3" style="color: #ffffff;">
						<h5 class="faqHeader"><spring:message code="label.contus.q5" />
						<br /></h5>
						
						<span class="faqText" ><br />
						<spring:message code="label.contus.a5" />
						
						 </span>
						
					</div>
						
					<div class="col-sm-1"></div>
						
					<div class="col-sm-3" style="color: #ffffff;">
						<h5 class="faqHeader"><spring:message code="label.contus.q6" />
						<br /></h5>
						
						<span class="faqText" ><spring:message code="label.contus.a6" />
						
							 </span>
						
					</div>
						
						
					</div>
					
					<div class="row"><br /><br /></div>
					<div class="row" style="color:white;transform: skewY(-3.5deg);">
					<div class="col-sm-2"></div>
					
					<div class="col-sm-3" style="color: #ffffff;">
						<h5 class="faqHeader"><spring:message code="label.contus.q7" />
						<br /></h5>
						
						<span class="faqText" ><spring:message code="label.contus.a7" />
						
						<br /><br /></span>
						<br /><br />
						<h5 class="faqHeader"><spring:message code="label.contus.q8" />
						<br /></h5>
						
						<span class="faqText" ><spring:message code="label.contus.a8" />
						
							 <br /><br /></span>
						
						
					</div>
						
					<div class="col-sm-1"></div>
						
					<div class="col-sm-3" style="color: #ffffff;">
						<h5 class="faqHeader"><spring:message code="label.contus.q9" />
						<br /></h5>
						
						<span class="faqText" ><br />
						<spring:message code="label.contus.a9" />
						
						 </span>
						
					</div>
						
						
					</div>
					
	</div>
	
	<div class="jumbotron" style="background-color: #ffdcba;position:sticky;height:40%;">
	
	
	</div>
	<br /><br /><br />
	<div class="container">
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6" style="font-family: AvenirNext;"><h1>
			<spring:message code="label.contus.looking" />
			</h1></div>
			
		</div>
		
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6" style="font-family: AvenirNext;color: #4a4a4a;"><h6>
			<spring:message code="label.contus.Impress" />
			</h6></div>
			
		</div>
		<div class="row"><br /><br /></div>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6 vertical-center btn" ><button id="testStartButton" style="margin-left:-15%;border-radius: 30px;width: 242px;
  				height: 60px;background-color: #ff7d00;border-color: #ff7d00;border-bottom-style: hidden;border-right: #ff7d00;">
  				<span id="testButton" onclick="startTest();" >
  				<spring:message code="label.contus.doTest" />
  				</span></button></div>
			
			
			
		</div>
		<div class="row"><br /><br /><br /><br /><br /><br /><br /></div>
		
		<div class="row">
			<div class="col-sm-2"></div>
			
			<div class="col-sm-4">
				<div id="aboutUsImage"></div>
			</div>
			<div class="col-sm-5">
				<span id="aboutUsSpan"><b><spring:message code="label.contus.aboutUs" /></b></span>
				<br><br>
				<span id="aboutUsDataSpan">
					<p><spring:message code="label.contus.aboutUs.info" /></p>
					
				</span>
			
			</div>
		</div>
			
		
		
		<div class="row"><br /><br /><br /><br /><br /><br /></div>
	</div>
	

		
		<div class="footer" >
		<div id="footerLogoDiv" >

			<div class="jumbotron" style="background-color: #6a6a6a;margin-bottom: 0;border-radius:0;height: 314px;">
				<div class="row">
					<div class="col-sm-6">
					<img src="<c:url value="/resources/greyLogo.png" ></c:url>"
									alt="Contus Logo" style=" width: 266px; height: 273px;margin-top: -10%;">
					<br />
					<span id="rightsReserved"><spring:message code="label.contus.rightsReserved" /></span>
					<br />
					</div>

					<div class="col-sm-2"></div>
					<div class="col-sm-2">
					<span id="linkSpan"><spring:message code="label.links" /></span>
					<%-- <br><br>
					<span class="underlyingFooterLinks"><spring:message code="label.home" />Home</span> --%>
					<br><br>
					<span id="" class="underlyingFooterLinks"><spring:message code="label.contus.faq" /></span>
					<br><br>
					<span id="" class="underlyingFooterLinks"><spring:message code="label.testimonials" /></span>
					<br><br>
					<span id="" class="underlyingFooterLinks"><spring:message code="label.contus.aboutUs" /></span>
					
					</div>
					<div class="col-sm-2">
					<span id="contactSpan"><spring:message code="label.contus.contact" /></span>
					<br><br>
					<span class="underlyingFooterContact"><spring:message code="label.contus.contact.email" /></span>
					<br><br>
					<span class="underlyingFooterContact"><spring:message code="label.contus.contact.phone" /></span>
					<br><br>
					<span class="underlyingFooterContact"><spring:message code="label.gdpr" /></span>
					
					</div>

				</div>



			</div>
		
			</div>
		</div>
		
</body>

<style>

#aboutUsImage{
  width: 300px;
  height: 182px;
  background-color: #d8d8d8;
}

#aboutUsDataSpan{
  width: 433px;
  height: 182px;
  font-family: AvenirNext;
  font-size: 18px;
  font-weight: 500;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.44;
  letter-spacing: normal;
  text-align: justify;
  color: #4a4a4a
}

#aboutUsSpan{
  width: 433px;
  height: 182px;
  font-family: AvenirNext;
  font-size: 24px;
  font-weight: 700;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.44;
  letter-spacing: normal;
  text-align: justify;
  color: #4a4a4a
}

.underlyingFooterLinks{
  width: 42px;
  height: 27px;
  font-family: AvenirNext;
  font-size: 17px;
  font-weight: 100;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 0.2px;
  color: #ffffff;
  
 }

.underlyingFooterContact{
  width: 42px;
  height: 27px;
  font-family: AvenirNext;
  font-size: 19px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 0.2px;
  color: #ffffff;

}

#linkSpan,#contactSpan {
  width: 57px;
  height: 27px;
  font-family: AvenirNext;
  font-size: 20px;
  font-weight: 900;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: normal;
  color: #ffffff;
}

#rightsReserved {
 width: 413px;
  height: 27px;
  font-family: AvenirNext;
  font-size: 20px;
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
  font-family: AvenirNext;
  
  font-size: 18px;
    font-weight: 600;
}

button.active.focus, button.active:focus,
button.focus, button:active.focus, 
button:active:focus, button:focus {
  outline: none;
  box-shadow: none;
  
}


#gridRowDiv p{

 
  font-family: AvenirNext;
  font-size: 20px;
  
  text-align: center;
  color: #313131;

}

#gridRowDiv img{
display: block;
  margin-left: auto;
  margin-right: auto;
}


.faqText{

  font-family: AvenirNext;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: 1.28;
  letter-spacing: normal;
  color: #ffffff;
}

.faqHeader{

  font-family: AvenirNext;

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
  
input[type=text] {
  width: 60%;
  padding: 8px 3px;
  box-sizing: border-box;
  border: 2px solid white;
  -webkit-transition: 0.5s;
  transition: 0.5s;
  outline: none;
}

input[type=text]:focus {
  border: 3px solid rgba(255, 142, 34, 0.31);;
}
  #payButton , #continueButton{
	border-radius: 30px;
	width: 220px;
	height: 54px;
	background-color: #ff7d00;
	border-color: #ff7d00;
	border-bottom-style: hidden;
	border-right: #ff7d00;
	  
  }
  
  @media only screen and (max-width: 600px){
 #jumbotronFaqDiv{
  height: 500% !important;
 }
 }
 
 @media only screen and (max-width: 400px){
 #jumbotronFaqDiv{
  height: 600% !important;
 }
 #orangeImage{
 height:320px !important;
 }
 
 #handImage{
 height:420px !important;
 }
 
 }
 
#lowerContusData {
    width: 100%;
    height: 30%;
    font-family: AvenirNext;
    font-size: 30px;
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
    background-color: rgba(255, 142, 34, 0.31);
}

#contactComment{
 	width: 79%;
    border-radius: 14px;
    background-color: rgba(255, 142, 34, 0.31);
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


@media only screen and (max-width: 600px){


#footerLogoDiv .jumbotron{
height:100% !important;
} 

#continueButton{
margin-left:-24%;
}

#testStartButton{
margin-left: -4% !important;
}

#testStartButtonAbove{

margin-left: 10% !important;
}

#handImage{
margin-top: 10%;
}

}




</style>
</html>


