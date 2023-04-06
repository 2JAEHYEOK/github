<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../header.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>기업 소개</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
</head>
<body>
    <div class="con col-12" id="about">
    		<div class="sub">
    			<img src="resources/img/banner.png" alt="banner">
    			<div class="subTitle">
    				<h2>기업 소개</h2>
    			</div>
    			<div class="subMenu">
    				<ul>
    					<li><a href="about">기업 소개</a></li>
    					<li><a href="hello">인사말</a></li>
    					<li><a href="hello">연혁</a></li>
    					<li><a href="vision">기업 비전</a></li>
    				</ul>
    			</div>
    		</div>
			<div class="company">
                <img class="com_logo" src="resources/img/logo.png" alt="로고">
                <div class="name">
                    <p><span>대표이사</span>최종구</p>
                    <p><span>설립일</span>2022년 1월 25일</p>
                </div>
                <hr>
                <p align="center">
                    (주)디엑스티앤은 클라우드 분야, 공공/금융 분야 SI, <br>
                    네트워크 보안 등의 솔루션 분야를 중점 사업으로 추진하고 있으며, <br>
                    특히, IT 대기업의 전략적 협력 회사로서 인력 채용에서부터 <br>
                    육성, 프로젝트 수행까지 공동으로 진행하고 있는
                    <span>Start-up</span>입니다.
                </p>
                
                <div class="business">
                    <img src="resources/img/company01.png" alt="SI사업본부">
                    <img src="resources/img/company02.png" alt="DX사업본부">
                    <img src="resources/img/company03.png" alt="솔루션사업본부" style="margin-right: 0;">
                </div>
            </div>
        </div>
</body>
<footer>
	<%@ include file="../footer.jsp" %>
</footer>
</html>