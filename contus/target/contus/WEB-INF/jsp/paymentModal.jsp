<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<!-- <meta name="viewport" content="width=device-width, initial-scale=1.0">
 -->
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="resources/css/customFrontPage.css">

<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<link rel="stylesheet"	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	
<!-- jQuery library -->
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

<script	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.5/umd/popper.min.js"></script>
	
<script src="resources/js/frontPage.js"></script>
	
	
<script>

 var defaultLanguage='';
 var userLang = '${lang}';
 defaultLanguage=userLang;
 
 var klarnaClicked=false;
 var swishClicked=false;
 var checkIfCouponValid=true;
 var invalidErrorCode='<spring:message code="label.contus.invalidCoupon" />';
 var couponApplied='<spring:message code="label.contus.validCoupon" />';
 var currency= '<spring:message code="label.contus.sek" />';
 
 function checkCheckBox(){
	 if(document.getElementById('termsCheckBox').checked==true)
		{
		  
		  $('#payButton').css("background-color","#ff7d00");
		  $('#payButton').css("border-color","#ff7d00");
		  $('#payButton').css("border-right","#ff7d00");
		  
		}
	 else
		 {
		  
		  $('#payButton').css("background-color","#b2b2b2");
		  $('#payButton').css("border-color","#b2b2b2");
		  $('#payButton').css("border-right","#b2b2b2");
		  
		 
		 }
	 
	 
 }
 
$( document ).ready(function() {
	$('#paymentDiv').hide();
	$('#paymentOrderDiv').hide();
	$('#payButton').on("click",function(){
		if(document.getElementById('termsCheckBox').checked==true)
		{
			$(".modalDiv").show();
			continuePayment();
		}
		else
			{
			
			}
		
		
	});
	
	$('#userCoupon').on("change",function(){
		var coupon=$('#userCoupon').val();
		if($('#userCoupon').val()=="")
			{
			checkIfCouponValid=true;
			$('#couponError').text('');/* 
			$('#userCoupon').css("border-color","rgba(255, 142, 34, 0.31)");	
			$('#userCoupon').css("background-color","rgba(255, 142, 34, 0.31)");	 */
			}
		else{
		$.ajax({ 
	        url : "${pageContext.request.contextPath}/checkCoupon",
			async : false,
			data : ({ 
				userCoupon : coupon,
				}), 
				success : function(jqXHR) {
					//console.log(jqXHR);
					if(jqXHR!="false")
					{
						checkIfCouponValid=true;
						if(jqXHR=="free")
						{
							$('#amountToPay').text("0.00");
							$('#couponError').text(couponApplied+' '+'0.00'+' '+currency);
							$('#couponError').css("color","orange");/* 
							$('#userCoupon').css("border-color","rgba(255, 142, 34, 0.31)");	
							$('#userCoupon').css("background-color","rgba(255, 142, 34, 0.31)"); */	
						}
						else{
							jqXHR=jqXHR.substring(0, 2)+"."+jqXHR.substring(2, 4);
						$('#amountToPay').text(jqXHR);
						$('#couponError').text(couponApplied+' '+jqXHR+' '+currency);
						$('#couponError').css("color","orange");/* 
						$('#userCoupon').css("border-color","rgba(255, 142, 34, 0.31)");	
						$('#userCoupon').css("background-color","rgba(255, 142, 34, 0.31)");	 */
						}	
					}
					else
					{
						
						checkIfCouponValid=false;
					    $('#couponError').text(invalidErrorCode);
					    $('#couponError').css("color","red");
					   /*  $('#userCoupon').css("border-color","red"); */
					}
				}
		});
		}
		
	});

	$('#userEmail').on("change",function(){
		
		var email=$('#userEmail').val();
		
		var reg = /^([A-Za-z0-9_\-\.])+\@([A-Za-z0-9_\-\.])+\.([A-Za-z]{2,4})$/;
		if(reg.test(email))
			{
			$('#userEmail').css("border-color","#ccc"); 
			$('#incorrectEmail').text('');
			}
		else{
			$('#userEmail').css("border-color","red"); 
			$('#incorrectEmail').text('Incorrect Email');
			
		}
	});
		
	$('#userName').on("change",function(){
		var name=$('#userName').val();
		if(name=="")
		{
			$('#userName').css("border-color","red");
		}
		else{
			$('#userName').css("border-color","#ccc");
			
		}
		
		
	}); 
	
	
});


/* 
function selectPaymentMethod(num){
	$('#paymentChooseText').css("color","black");
	if(num==1)
	{
		if(swishClicked==true){
			$('#myCheckbox2').trigger('click')
			swishClicked=false;
		}
			klarnaClicked=true;
			$('#klarnaLabel').css("background-color","rgba(255, 142, 34, 0.31)");
			$('#swishLabel').css("background-color","white");
	}
	else
		{
		if(klarnaClicked==true){
			$('#myCheckbox1').trigger('click')
			klarnaClicked=false;
		}
		swishClicked=true;
		$('#swishLabel').css("background-color","rgba(255, 142, 34, 0.31)");
		$('#klarnaLabel').css("background-color","white");
		}
} */

function continueCheckout(){
	var flag = true;
	debugger;
	
	 if($("input[name='paymentMethod']:checked").val()==undefined && $('#userCoupon').val()=="")
	 {
		 return;
	 }
	
	var coupon=$('#userCoupon').val();
	/* var payment=$("input[name='paymentMethod']:checked"). val();
	if(payment==undefined)
	
	couponError
	 */
	if($('#amountToPay').text()=="0.00"){
		$("#userName").show();
		$("#userEmail").show();
	}
	else{
		$("#userName").hide();
		$("#userEmail").hide();
	}
	if(checkIfCouponValid==true){	
	$('#userInfo').hide();
	$('#paymentDiv').show();
	}
}

function continuePayment(){
	
	 
	 if($('#userName').val()=="" && $('#amountToPay').text()=="0.00")
		 {
		 $('#userName').trigger('change');
		 
		 return;
		 }
	 
	 if($('#userEmail').val()=="" && $('#amountToPay').text()=="0.00")
	 {
		 $('#userEmail').trigger('change');
		 return;
	 }
	
	 
	var name=$('#userName').val();
	var email=$('#userEmail').val();
	var coupon=$('#userCoupon').val();
	
	var payment=$("input[name='paymentMethod']:checked").val();
	if(payment==undefined)
		{
		payment="Coupon";
		}
	if($('#incorrectEmail').text()=="")
		{
		
		}
	else
		{
		return;
		}
	
	$.ajax({ 
        url : "${pageContext.request.contextPath}/saveUser",
		async : false,
		data : ({ 
			userName : name,
			userEmail : email,
			userCoupon : coupon,
			paymentMode : payment,
			lang:defaultLanguage
			}), 
			success : function(jqXHR) {
				console.log('success');
				
				$(".modalDiv").hide();
				if(jqXHR.includes('free-'))
				{
					console.log('Customer is not getting saved for free users.');
					var ur=jqXHR.split('-');
					
					window.location.href = ur[1];
				}
				else if(jqXHR=='error'){
					console.log("error occured");
					window.location.href = '${pageContext.request.contextPath}/errorPage';
				}
				else{
				$('#KCO').val(jqXHR);
				startKlarnaMethod();
				$('#paymentDiv').hide();
				$('#paymentOrderDiv').show();
				}
			}
	});
	
	
}


function openGdpr(){
	
	window.open("${pageContext.request.contextPath}/termsAndConditions");
}

function openPrivacyPolicy(){
	
	window.open("${pageContext.request.contextPath}/privacyPolicy");
}

</script>
</head>
<body>


<div id="userInfo">
				<br>	
					<div class="row">
						<div class="col-sm-3"></div>
						<div class="col-sm-6" style="text-align:center;" >
							<span id="paymentChooseText" style="font-family: Avenir next, sans-serif;"><spring:message code="label.contus.paymentMethod" />
							</span>
			
						</div>
						</div>
						<br><br>
		<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-9">
						<hr>
					</div>
				</div>
		<div class="row" style="">
			<div class="col-sm-2"></div>
			<div class="col-sm-10" >
				
				<input type="radio" id="paymentKlarna" name="paymentMethod"
											class="" value="klarna" > <label
											class="role" for="paymentKlarna"></label>
											
				
				<span class="" style="" id="klarnaImageDiv">
					<img src="resources/klarnaNew1.jpg" id="klarnaImage"  style="width: 81px;height:33px;margin-left: 7%;margin-top: -3%;"/> 
				</span>
			<%-- 	<span class="" id="klarnaText" style=" font-family: Avenir next, sans-serif;font-size: 15px;
					font-stretch: normal;font-style: normal;line-height: normal;letter-spacing: 2.4px;margin-left: 11%;position: relative;bottom: 15%;"> 
					<spring:message code="label.contus.bankAcc" />
				</span> --%>
			</div>
			</div>
		<div class="row">
			<div class="col-sm-2"></div>
			<div class="col-sm-9">
				<hr>
			</div>
		</div>
		
		<div class="row" style="">
				<div class="col-sm-2" id="extraSpaceDiv"></div>
				<div class="col-sm-10" >
				<!-- <div class="radio">
					<label><input type="radio" name="paymentMethod" value="swish" style="transform: scale(1.5);"></label>
				</div> -->
				<input type="radio" id="paymentSwish" name="paymentMethod"
											class="" value="swish" disabled="true" readonly="true"> <label
											class="role" for="paymentSwish" ></label>
											
				
				<span class="" id="swishImageDiv">
					<img src="resources/swishNew.png" id="swishImage" style="width: 80px;height: 24px;margin-left: 7%;margin-top: -2%;"/> 
				
				<span id="swishText" class="" style="margin-top: -5%;font-family: Avenir next, sans-serif;font-size: 15px;
						font-stretch: normal;font-style: normal;line-height: normal;letter-spacing: 2.4px;margin-left:10%;position: relative;bottom: 15%;"> 
					(<spring:message code="label.contus.comingSoon" />)
				</span>
				
				</span>
			</div>
		</div>
				<div class="row">
					<div class="col-sm-2"></div>
					<div class="col-sm-9">
						<hr>
					</div>
				</div>
		 
		 				<br><br>
							<div class="row">
								<div class="col-sm-2"></div>
								
								<div class="col-sm-8">
									<input type="text" placeholder="   Code" id="userCoupon" style="width:100%;border-radius: 
									14px;">
									&nbsp;&nbsp;<span id="couponError" style="color:red"></span>
								</div>		
							</div>
							<br>
						<div class="row">
							<div class="col-sm-4"></div>
							<div class="col-sm-5">
									<button type="button" id="continueButton"  onclick="continueCheckout();" 
										class="btn btn-lg vertical-center">
										<span id="testButtonModal" 
											style="font-family:  Avenir next, sans-serif; font-size: 20px; font-weight: bold; font-stretch: normal; font-style: normal; 
											line-height: normal; letter-spacing: 1.2px; text-align: center; color: #ffffff;">
											<spring:message code="label.contus.continue" />
											</span>
									</button>
								</div>
							</div>
					
						  <br>
						</div>
						
					<div id="paymentDiv">
						<div class="">
							
							<div class="">
								<div id="warningDiv"><spring:message code="label.contus.warning" />
								</div>
							</div>
						</div>
						<br>
						<div id="loaderDiv">
							<spring:message code="label.contus.extraWarning" />
						</div>
					
						<br>
							<div class="row" class="userDataDiv">
								<div class="col-sm-3"></div>
								<div class="col-sm-6">
									<input type="text" placeholder="&nbsp;&nbsp;<spring:message code="label.contus.contactName" />"	 id="userName">
								
								</div>
							</div>
							<br><br>
							<div class="row" class="userDataDiv">
								<div class="col-sm-3"></div>
								<div class="col-sm-6">
									<input type="text" placeholder="&nbsp;&nbsp;<spring:message code="label.contus.contactEmail" />"  id="userEmail">
									<span id="incorrectEmail" style="color:red;margin-left: 2%;"></span>
								</div>
							</div>
						
						<br>
						
						<div id="gdprDiv" style="margin-left: 11%;">
							<label>
							  <input id="termsCheckBox" onclick="checkCheckBox();" type='checkbox'>
							  <span ></span>
							</label>
							<span id="termsDiv">
							<spring:message code="label.contus.agreeTerms" />
							<a href="#" style="color:black; text-decoration: underline;" onclick="openGdpr();">
							<spring:message code="label.contus.termsAndCondition" /></a> <spring:message code="label.contus.and" /> 
							<a href="#" style="color:black; text-decoration: underline;" onclick="openPrivacyPolicy();">
							<spring:message code="label.contus.privacyPolicy" /> </a>
							</span>
						</div>
						
						<br><br>
						<div class="row">
							<div class="col-sm-4"></div>
							<div class="col-sm-5">
							<button type="button" id="payButton" class="btn btn-lg vertical-center"><span id="testButtonModalSpan" 
							 style="font-family:  Avenir next, sans-serif; font-size: 20px; font-weight: bold;
	  							font-stretch: normal; font-style: normal; line-height: normal; letter-spacing: 1.2px; text-align: center; color: #ffffff;">
	  								<spring:message code="label.contus.price" /> <span id="amountToPay">199 </span> <spring:message code="label.contus.sek" /> </span></button>
							</div>
						</div>
						<br>
					</div>
					
			<div id="paymentOrderDiv">
						
				<textarea style="display: none" id="KCO">
	
			    </textarea>
			
			
			
				<div id="my-checkout-container"></div>
			
			
			
				<!-- START - Dont edit -->
				<script type="text/javascript">
				//startKlarnaMethod();
				function startKlarnaMethod(){
				var checkoutContainer = document.getElementById('my-checkout-container')
					checkoutContainer.innerHTML = (document.getElementById("KCO").value).replace(/\\"/g, "\"").replace(/\\n/g, "");
					var scriptsTags = checkoutContainer.getElementsByTagName('script')
					for (var i = 0; i < scriptsTags.length; i++) {
						var parentNode = scriptsTags[i].parentNode
						var newScriptTag = document.createElement('script')
						newScriptTag.type = 'text/javascript'
						newScriptTag.text = scriptsTags[i].text
						parentNode.removeChild(scriptsTags[i])
						parentNode.appendChild(newScriptTag)
					}
				}
				</script>
				<!-- END -->
			</div>
					
					




</body>

<style>



/* Center the loader */
#loader {
  position: absolute;
  left: 55%;
  top: 71%;
  z-index: 1;
  width: 150px;
  height: 150px;
  margin: -75px 0 0 -75px;
  border: 16px solid white;
  border-radius: 50%;
  border-top: 16px solid  orange;
  border-bottom: 16px solid  orange;
  width: 35px;
  height: 35px;
  -webkit-animation: spin 2s linear infinite;
  animation: spin 2s linear infinite;
}

@-webkit-keyframes spin {
  0% { -webkit-transform: rotate(0deg); }
  100% { -webkit-transform: rotate(360deg); }
}

@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}

/* Add animation to "page content" */
.animate-bottom {
  position: relative;
  -webkit-animation-name: animatebottom;
  -webkit-animation-duration: 1s;
  animation-name: animatebottom;
  animation-duration: 1s
}

@-webkit-keyframes animatebottom {
  from { bottom:-100px; opacity:0 } 
  to { bottom:0px; opacity:1 }
}

@keyframes animatebottom { 
  from{ bottom:-100px; opacity:0 } 
  to{ bottom:0; opacity:1 }
}


input[type="checkbox"][id^="myCheckbox"] {
  display: none;
}

label {
  border: 1px solid #fff;

  position: relative;
  margin: 15px;
  cursor: pointer;
}

label:before {
  background-color: white;
  color: white;
  content: " ";
  display: block;
  border-radius: 50%;
  border: 1px solid grey;
  position: absolute;
  top: -5px;
  left: -5px;
  width: 25px;
  height: 25px;
  text-align: center;
  line-height: 28px;
  transition-duration: 0.4s;
  transform: scale(0);
}

label img {
  height: 100px;
  width: 100px;
  transition-duration: 0.2s;
  transform-origin: 50% 50%;
}

:checked + label {
  border-color: #ddd;
}

:checked + label:before {
  content: "";
  background-color: rgba(255, 142, 34, 0.31);
  
}

:checked + label img {
  transform: scale(0.9);
  /* box-shadow: 0 0 5px #333; */
  z-index: -1;
}

#paymentModalHeading {
font-family:  Avenir next, sans-serif;
    font-size: xx-large;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    /* letter-spacing: 2.4px; */
    text-align: center;
    color: #2d2d2d;
}

.modalDiv {
    display:    none;
    position:   fixed;
    z-index:    1000;
    top:        0;
    left:       0;
    height:     100%;
    width:      100%;
    background: rgba( 255, 255, 255, .8 ) 
                url('http://i.stack.imgur.com/FhHRx.gif') 
                50% 50% 
                no-repeat;
}

#userEmail , #userName{
    width: 100%;
    height: 40px;
    border-radius: 14px;
   
}


  #payButton {
	border-radius: 30px;
	width: 220px;
	height: 50px;
	background-color: #b2b2b2;
	border-color: #b2b2b2;
	border-bottom-style: hidden;
	border-right: #b2b2b2;
	  
  }
  

  #continueButton{
	border-radius: 30px;
	width: 220px;
	height: 50px;
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

 
 }
 
#lowerContusData {
    width: 100%;
    height: 30%;
    font-family: Avenir next, sans-serif;
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


#warningDiv{
	font-family: Avenir next, sans-serif;
    font-size: 25px;
    font-weight: bold;
    font-stretch: normal;
    font-style: normal;
    line-height: normal;
    letter-spacing: 2.4px;
    text-align: center;
    color: #2d2d2d;
    margin-right: 10%;
    margin-left: 10%;
    margin-top: 4%;
}

#loaderDiv{
 font-family: Avenir next, sans-serif;
  font-size: 14px;
  font-weight: normal;
  font-stretch: normal;
  font-style: normal;
  line-height: normal;
  letter-spacing: 1.44px;
  text-align: center;
  color: #626262;
  margin-right: 10%;
    margin-left: 10%;
}




@media only screen and (max-width: 600px){

#swishText{
margin-left:7% !important;
}

#swishImage{
  margin-left: 0% !important;
}
#extraSpaceDiv{
    margin-top: 11%;
}

#klarnaImage{
margin-left: 0% !important;
    margin-top: -5% !important;
}

#payButton {
    margin-left: 5% !important;
}

}


/* @media only screen and (max-width: 375px){
#klarnaImage {
    margin-left: -8% !important;
}

#swishImage {
    margin-left: -10% !important;
}

#swishText {
    margin-left: 0% !important;
}

}
 */
@media only screen and (max-width: 441px){

#klarnaImage {
    margin-left: -8% !important;
    margin-top: -5% !important;
}

#swishImage {
    margin-left: -10% !important;
        margin-top: -4% !important;
}

#swishText {
    margin-left: 7% !important;
}

}




@media only screen and (max-width: 353px){

#swishImage {
    margin-left: -11% !important;
    margin-top: -6% !important;
}

#swishText{
    font-size: 10px !important;
}
}

label input {
  display: none; /* Hide the default checkbox */
}

/* Style the artificial checkbox */
label span {
 	height: 18px;
    width: 18px;
    border: solid 1px #979797;
    display: inline-block;
    position: relative;
    transform: translateY(21%);
        
}

/* Style its checked state...with a ticked icon */
/*
[type=checkbox]:checked + span:before {
  content: url('resources/checkMark.png');
  position: absolute;
  top: -60px;
  color:orange;
  width: 100px;
  zoom: 0.18;
      left: -17px;
    -ms-transform: scale(1.5); 
 -moz-transform: scale(1.5); 
 -webkit-transform: scale(1.5); 
 -o-transform: scale(1.5);  
}
*/


input[type='radio'] {
        -webkit-appearance: none;
        width: 21px;
        height: 21px;
        border-radius: 50%;
        outline: none;
        border: 1px solid gray;
    }

    input[type='radio']:before {
        content: '';
        display: block;
        width: 70%;
        height: 70%;
       margin-left: 15%;
       margin-top: 14%;
        border-radius: 50%;
    }


 input[type="radio"]:checked:before {
        background: #ff7d00;
        
    }
    
    input[type="radio"]:checked {
      border-color: #000000;
    }
    
  #paymentChooseText{
  
    font-size: 24px;
    font-weight: bold;
    letter-spacing: 2.4px;
    text-align: center;
    color: #2d2d2d;
    
  }
  
  /* Style its checked state...with a ticked icon */
[type=checkbox]:checked + span:before {
  content: '\2713';
  position: absolute;
  top: -8px;
  color:orange;
  width: 100px;
  zoom: 1.1;
      left: 26px;
   -ms-transform: scale(1.5); /* IE */
 -moz-transform: scale(1.5); /* FF */
 -webkit-transform: scale(1.5); /* Safari and Chrome */
 -o-transform: scale(1.5); /* Opera */
}
  
@media only screen and (max-width: 376px){

#klarnaText ,#swishText{
font-size:3vw !important;
}

}


@media only screen and (max-width: 343px){

#klarnaText ,#swishText{
font-size:3vw !important;
margin-left:5% !important;
}

}


@media only screen and (max-width: 770px){

#swishText{
font-size:12px !important;
margin-left:2% !important;
}

}

</style>


</html>