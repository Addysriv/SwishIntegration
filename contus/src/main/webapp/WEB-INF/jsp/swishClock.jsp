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
				clearInterval(counter);
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
							
						} else if (data == 'ERROR') {
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
#Box {
	border: 1px solid red;
	width: 400px;
}

p {
	width: 200px;
	margin-left: 40%;
	display: block;
}

dl dt {
	margin-left: 0;
}

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

#swishText {
	margin-left: 7% !important;
}

@media only screen and (max-width: 600px) {
	#swishText {
		margin-left: 7% !important;
	}
	#swishImage {
		margin-left: 0% !important;
	}
	#extraSpaceDiv {
		margin-top: 11%;
	}
	#klarnaImage {
		margin-left: 0% !important;
		margin-top: -5% !important;
	}
	#payButton {
		margin-left: 5% !important;
	}
}

@media only screen and (max-width: 441px) {
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

@media only screen and (max-width: 353px) {
	#swishImage {
		margin-left: -11% !important;
		margin-top: -6% !important;
	}
	#swishText {
		font-size: 10px !important;
	}
}
</style>
</head>
<body>
	<div id="swish-timeout">
		<br>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6" style="text-align: center;">
				<div class="center; style="margin-left: 17%; margin-top: 15%;">
					<img src="resources/swishImage.png"
						style="width: 145px; height: 133px; margin-left: 17%; margin-top: 15%;"
						class="rotate" /> <span id="swishText"
						style="margin-top: -5%; font-family: Avenir next, sans-serif; font-size: 15px; font-stretch: normal; font-style: normal; line-height: normal; letter-spacing: 2.4px; margin-left: 10%; position: relative; bottom: 15%;">
					</span>
				</div>
				<div class="center;" style="margin-left: 17%; margin-top: 15%;">
					<div class="col-sm-2" id="extraSpaceDiv"></div>
					<div class="col-sm-10">
						Swish Payment Gateway closes in <span id="time">03:00</span>
						minutes!
					</div>
				</div>
			</div>
		</div>
		</br>
	</div>

	<div id="swish-success">
		<br>
		<div class="row">
			<div class="col-sm-3"></div>
			<div class="col-sm-6" style="text-align: center;">
				<div class="center;">
					<div class="row text-center">
						<div class="col-sm-6 col-sm-offset-3">
							<br> <br>
							<p>Detail Message</p>
							<div class="alert alert-success">
								<strong>Success!</strong>
							</div>
							<dl class="dl-horizontal">
								<dt>Payment Succesfull in Swish Gateway. Redirecting you to
									HomePage</dt>

							</dl>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	</br>
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