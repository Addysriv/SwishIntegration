<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
   <head>
      <meta charset="ISO-8859-1">
      <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
      <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%><!-- jQuery library -->
      <script
         src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
      <link rel="stylesheet"
         href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
      <link rel="stylesheet" type="text/css"
         href="resources/css/customFrontPage.css">
      <script
         src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.5/umd/popper.min.js"></script>
      <title>Swish Payment Gateway</title>
      <script type="text/javascript">
         function startTimer(duration, display) {
         	var newseconds = 180;
         	var timer = duration, minutes, seconds;
         	var counter = setInterval(function() {
         		if (newseconds <= 0) {
         			clearInterval(counter);
         			$("#message-timeout").show();
         			return;
         		} else if ($("#swish-success").is(":visible")) {
         			clearInterval(counter);
         			return;
         		} else {
         			newseconds = newseconds - 1;
         		}
         		minutes = parseInt(timer / 60, 10);
         		seconds = parseInt(timer % 60, 10);
         
         		minutes = minutes < 10 ? "0" + minutes : minutes;
         		seconds = seconds < 10 ? "0" + seconds : seconds;
         
         		display.textContent = minutes + ":" + seconds;
         
         		if (--timer < 0) {
         			timer = duration;
         		}
         
         	}, 1000);
         
         	var secondCounter = 36;
         
         	var timeoutCounter2 = setInterval(function() {
         		if (secondCounter <= 0) {
         			clearInterval(timeoutCounter2);
         			$("#swish-timeout").hide();
         			$("#message-timeout").show();
         			return;
         		} else {
         			secondCounter--;
         			waitForPayment(timeoutCounter2);
         		}
         
         	}, 5000);
         }
         
         window.onload = function() {
         	$("#swish-success").hide();
         	$("#message-timeout").hide();
         	var threeminutes = 60 * 3, display = document.querySelector('#time');
         	startTimer(threeminutes, display);
         }
         
         //Our custom function.
         
         function waitForPayment(timeoutCounter2, counter) {
         	$
         			.ajax({
         				url : "${pageContext.request.contextPath}/swish-get-paymentStatus",
         				data : ({
         					swishPaymentCheckurl : "${paymentRequestInfoUrl}"
         				}),
         				async : false,
         				success : function(data) {
         
         					//console.log the response
         					if (data == 'CREATED') {
         						console.log("Do Nothing!!Continue till we get Success or Fail Response");
         					} else if (data == 'error') {
         						$("#swish-timeout").hide();
         						clearInterval(timeoutCounter2);
         					
         						console.log("Payment Failed From Swish End!!");
         						window.location.href = '${pageContext.request.contextPath}/errorPage';
         					} else if (data == "PAID") {
         						
         						clearInterval(timeoutCounter2);
         						$("#swish-timeout").hide();
         						$("#swish-success").show();
         					}
         
         				}
         			});
         }
      </script>
      <style>
         .image-container {
         width: 200px;
         display: flex;
         justify-content: center;
         margin: 10px;
         padding: 10px;
         /* Material design properties */
         }
         .image-2 {
         width: 500px;
         align-self: flex-start; /* to preserve image aspect ratio */
         }
         div#message-timeout {
         position: fixed;
         left: 0px;
         top: 0px;
         z-index: 1050;
         }
         div#timeout-warning {
         background: #f7941e;
         border: 3px solid #f0ad4e;
         color: #fff;
         font-family: Arial, Helvetica, sans-serif;
         font-size: 14px;
         padding: 10px;
         }
         div#timeout-error {
         background: red;
         border: 3px solid #f0ad4e;
         color: #fff;
         font-family: Arial, Helvetica, sans-serif;
         font-size: 14px;
         padding: 10px;
         }
      </style>
   </head>
   <body>
      <div id="swish-timeout">
         <div class="image-container image-2">
            <img src="resources/swishImage.png"
               style="width: 81px; height: 33px; margin-left: 7%; margin-top: -3%;"
               class="rotate" />
            <img src="resources/swishLogo.png"
               style="width: 81px; height: 33px; margin-left: 7%; margin-top: -3%;" />
         </div>
         <div style="text-align: center;">
            Swish Payment Gateway closes in <span id="time">03:00</span> minutes!
         </div>
      </div>
      <div id="swish-success">
         <div class="container">
            <div class="row text-center">
               <div class="col-sm-6 col-sm-offset-3">
                  <br> <br>
                  <h2 style="color: #0fad00">Payment Success in Swish</h2>
               </div>
            </div>
         </div>
      </div>
      <div id="message-timeout">
         <div id="timeout-warning">
            <strong>Error: Swish Payment Gateway Timeout</strong>
         </div>
         <div id="timeout-error">
            <strong>Your session has expired.</strong>
         </div>
      </div>
   </body>
</html>