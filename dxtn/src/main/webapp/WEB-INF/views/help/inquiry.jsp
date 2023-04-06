<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>(주)디엑스티앤</title>
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<style>
.container{
	padding-top:100px;
	padding-bottom:100px;
}

.form {
	width: 480px;
	height: 500px;
	background: #e6e6e6;
	border-radius: 8px;
	box-shadow: 0 0 40px -10px #000;
	padding: 20px;
	margin: 0 auto; box-sizing : border-box;
	font-family: 'Montserrat', sans-serif;
	position: relative;
	box-sizing: border-box;
}

h2 {
	margin: 10px 0;
	padding-top: 10px;
	width: 180px;
	color: #78788c;
	border-bottom: 3px solid #78788c
}
 
input {
	width: 100%;
	padding: 10px;
	box-sizing: border-box;
	background: none;
	outline: none;
	resize: none;
	font-family: 'Montserrat', sans-serif;
	transition: all .3s;
	border: 0;
	border-bottom: 2px solid #bebed2
}

input:focus {
	border-bottom: 2px solid #78788c
}

p:before {
	content: attr(type);
	display: block;
	margin: 28px 0 0;
	font-size: 14px;
	color: #5a5a5a
}

button {
	float: right;
	padding: 8px 12px;
	margin: 8px 0 0;
	font-family: 'Montserrat', sans-serif;
	border: 2px solid #78788c;
	background: 0;
	color: #5a5a6e;
	cursor: pointer;
	transition: all .3s
}

button:hover {
	background: #78788c;
	color: #fff
}

div.fa {
	content: 'Hi';
	position: absolute;
	bottom: -20px;
	right: -15px;
	background: #50505a;
	color: #fff;
	width: 280px;
	padding: 16px 4px 16px 25px;
	border-radius: 6px;
	font-size: 13px;
	box-shadow: 10px 10px 40px -14px #000;
}

span {
	margin: 0 5px 0 15px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<body>

<div class="container">
	<form class="form" action="testMail" method="post" name="sendMail">
		<h2>CONTACT US</h2>
		<p type="Name:">
			<input placeholder="Write your name here.." name="uName" id="uName" required></input>
		</p>
		<p type="Email:">
			<input placeholder="Let us know how to contact you back.." name="uMail" id="uMail" required></input>
		</p>
		<p type="Message:">
			<input placeholder="What would you like to tell us.." name="uMsg" id="uMsg" required></input>
		</p>
		<button class="send" type="button">Send Message</button>
		<div class="fa">
			<span class="fa fa-phone"></span>02 2088 0433 
			<span class="fa fa-envelope-o"></span> dxtn@dxtn.com
		</div>
	</form>
</div>
</body>
<script>
	$(".send").click(function(){
		var cf = confirm("문의하시겠습니까?")
		if(cf){
			alert("문의성공");
			$("form").submit();		
		}
	})
</script>
<footer>
	<%@ include file="../footer.jsp"%>
</footer>
</html>