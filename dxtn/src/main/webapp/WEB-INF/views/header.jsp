<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<link rel="stylesheet" href="resources/css/header.css">
<link rel="stylesheet" href="resources/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/style.css">
<link rel="stylesheet" href="resources/font/IBMPlexSansKR-Regular.ttf">
<link rel="shortcut icon" href="resources/img/icon.png" type="icon">
<body>
	<div class="navbar-nav menubar" style="z-index: 5;">
		<div class="img">
			<a href="/"><img src="resources/img/logo.png" alt="logo"></a>
		</div>
		<ul class="nav menu">
			<li>
				<a href="about">DXT& 소개</a>
				<ul class="submenu">
					<li><a href="about">기업소개</a></li>
					<li><a href="hello">인사말</a></li>
					<li><a href="hello">연혁</a></li>
					<li><a href="vision">기업비전</a></li>
				</ul>
			</li>
			<li>
				<a href="business">SERVICE</a>
				<ul class="submenu">
					<li><a href="business">사업부문</a></li>
					<li><a href="customer">주요고객</a></li>
					<li><a href="major">주요사업</a></li>
					<li><a href="hello">준비중</a></li>
				</ul>
			</li>
			<li>
				<a href="employ">인재채용</a>
				<ul class="submenu">
					<li><a href="employ">채용정보</a></li>
					<li><a href="talent">인재상</a></li>
					<li><a href="hello">준비중</a></li>
					<li><a href="hello">준비중</a></li>
				</ul>
			</li>
			<li>
				<a href="map">고객센터</a>
				<ul class="submenu">
					<li><a href="map">오시는길</a></li>
					<li><a href="inquiry">사업문의</a></li>
					<li><a href="hello">준비중</a></li>
					<li><a href="hello">준비중</a></li>
				</ul>
			</li>
		</ul>
	</div>
</body>
   <!-- Channel Plugin Scripts -->
<script>
  (function() {
    var w = window;
    if (w.ChannelIO) {
      return (window.console.error || window.console.log || function(){})('ChannelIO script included twice.');
    }
    var ch = function() {
      ch.c(arguments);
    };
    ch.q = [];
    ch.c = function(args) {
      ch.q.push(args);
    };
    w.ChannelIO = ch;
    function l() {
      if (w.ChannelIOInitialized) {
        return;
      }
      w.ChannelIOInitialized = true;
      var s = document.createElement('script');
      s.type = 'text/javascript';
      s.async = true;
      s.src = 'https://cdn.channel.io/plugin/ch-plugin-web.js';
      s.charset = 'UTF-8';
      var x = document.getElementsByTagName('script')[0];
      x.parentNode.insertBefore(s, x);
    }
    if (document.readyState === 'complete') {
      l();
    } else if (window.attachEvent) {
      window.attachEvent('onload', l);
    } else {
      window.addEventListener('DOMContentLoaded', l, false);
      window.addEventListener('load', l, false);
    }
  })();
  ChannelIO('boot', {
    "pluginKey": "a2129166-abe7-4d22-89a5-33e5b8083163"
  });
</script>
<!-- End Channel Plugin -->
</html>