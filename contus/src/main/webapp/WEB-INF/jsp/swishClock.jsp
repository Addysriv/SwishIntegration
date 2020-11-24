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
    var timer = duration, minutes, seconds;
    var before=(new Date()).getMinutes();
    setInterval(function () {
        minutes = parseInt(timer / 60, 10);
        seconds = parseInt(timer % 60, 10);

        minutes = minutes < 10 ? "0" + minutes : minutes;
        seconds = seconds < 10 ? "0" + seconds : seconds;

        display.textContent = minutes + ":" + seconds;

        if (--timer < 0) {
            timer = duration;
        }
    }, 1000);
 
	if (minutes != 0 && seconds != 00) {
			setInterval(function() {
				waitForPayment();

			}, 5000);
		}
	}

	window.onload = function() {
		$("#swish-success").hide();
		var threeminutes = 60 * 3, display = document.querySelector('#time');
		startTimer(threeminutes, display);
	}

	//Our custom function.
	function waitForPayment() {
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
							console
									.log("Do Nothing!!Continue till we get Success or Fail Response");
						} else if (data == 'error') {
							console.log("Payment Failed From Swish End!!");
							window.location.href = '${pageContext.request.contextPath}/errorPage';
						} else if (data == "PAID") {

							$("#swish-timeout").hide();
							$("#swish-success").show();

						}

					}
				});
	}
	//Call our function
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
</style>
</head>
<body>
	<div id="swish-timeout">
		<div class="image-container image-2">
			<img src="resources/swishImage.png"
				style="width: 81px; height: 33px; margin-left: 7%; margin-top: -3%;" />
		</div>
		<div>
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
</body>
</html>