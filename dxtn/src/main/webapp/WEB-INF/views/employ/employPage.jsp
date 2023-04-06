<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../header.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>채용공고</title>
</head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="resources/js/employScript.js"></script>
<body>
	<div class="sub">
		<img src="resources/img/banner.png" alt="banner">
		<div class="subTitle">
			<h2>채용 공고</h2>
		</div>
		<div class="subMenu">
			<ul>
				<li><a href="employ">채용 공고</a></li>
				<li><a href="talent">인재상</a></li>
				<li><a href="hello">준비중</a></li>
				<li><a href="hello">준비중</a></li>
			</ul>
		</div>
	</div>
	<table style="margin: 0 auto; width: 900px; margin-top: 80px;">
		<tr>
			<td style="text-align: right; padding-right: 20px;">
				<button id="write" class="pwdComp btn btn-info"
					style="-bs-btn-padding-y: .25rem; - -bs-btn-padding-x: .5rem; - -bs-btn-font-size: .75rem;">채용공고작성</button>
			</td>
		</tr>
	</table>
	<c:choose>
		<c:when test="${articles.size()==0 }">
			<table border="1"
				style="margin: 0 auto; width: 700px; margin-top: 80px;"
				class="table">
				<tr>
					<th style="text-align: center">채용공고가 없습니다.</th>
				</tr>
			</table>
		</c:when>
		<c:when test="${articles.size()!=0 }">
			<table class="table"
				style="margin: 0 auto; width: 900px; margin-top: 30px; margin-bottom: 80px;">
				<thead>
					<tr>
						<th scope="col" style="text-align: center">번호</th>
						<th scope="col" style="text-align: center">제목</th>
						<th scope="col" style="text-align: center">작성자</th>
						<th scope="col" style="text-align: center">작성일</th>
						<th scope="col" style="text-align: center">조회</th>
					</tr>
				</thead>

				<tbody>
					<c:forEach items="${articles}" var="article">
						<tr>
							<td style="text-align: center;">${article.rnum}</td>
							<td style="text-align: center;"><a
								href="javascript:getContent(${article.eno });"
								style="text-decoration: none; color: black; font-weight: 600">${article.esub}</a>
							</td>
							<td style="text-align: center;">admin</td>
							<td style="text-align: center;">${article.eregdate}</td>
							<td style="text-align: center;">${article.readcount}</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="5" style="text-align: center;">
							<div class="pagingArea" align="center">
								<c:forEach var="p" begin="1" end="${pageCnt}">
									<a href="employ?curentPg=${p}" class="btn btn-info mx-1"
										style="cursor: pointer; font-size: 16px; margin: 5px;">${p}</a>
								</c:forEach>
							</div>
						</td>
					</tr>
				</tfoot>
			</table>
		</c:when>
	</c:choose>
	
	<form action="" name="tForm" method="post">
		<input type="hidden" id="eno" name="eno" value=""> <input
			type="hidden" name="curentPg" value="${curentPg}">
	</form>
</body>
<footer>
	<%@ include file="../footer.jsp"%>
</footer>
</html>