<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
img {
	max-width: 480px;
	width: 100%;
	height: auto;
        display: block;
        margin:20px auto;
	
    }
</style>
<link rel="stylesheet" type="text/css"
	href="resources/css/customFrontPage.css">
<title>Swish Payment Gateway</title>
</head>
<script type="text/javascript">
function startTimer(duration, display) {
    var timer = duration, minutes, seconds;
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
}

window.onload = function () {
    var fiveMinutes = 60 * 3,
        display = document.querySelector('#time');
    startTimer(fiveMinutes, display);
}
</script>
<body>
	<div style="text-align: center;">
		Swish Payment Gateway closes in <span id="time">03:00</span> minutes!
	</div>
	<div style="text-align: center;">
		<img src="resources/swishImage.png" class="rotate" width="100"
			height="100" /> <img src="resources/swishLogo.png" width="100"
			height="100" />
	</div>
</body>
</html>