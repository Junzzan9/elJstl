<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="vo.UserVo"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%
UserVo authUser = (UserVo) request.getAttribute("authUSer");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="header" class="clearfix">
		<h1>
			<a href="/mysite/main">MySite</a>
		</h1>

		<%
		if (authUser != null) { //로그인 성공이면
		%>
		<ul>
			<li>${authUser.name}님안녕하세요^^</li>
			<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
			<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
		</ul>
		<%
		} else {
		%>
		<ul>
			<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
			<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
		</ul>
		<%
		}
		%>

	</div>
	<!-- //header -->

	<!-- ----------------------------------------------------------------- -->
	<c:choose>
		<c:when test="${!empty authUser}">
			<ul>
				<li>${sessionScope.authUser.name}님안녕하세요^^</li>
				<li><a href="/mysite/user?action=logout" class="btn_s">로그아웃</a></li>
				<li><a href="/mysite/user?action=modifyForm" class="btn_s">회원정보수정</a></li>
			</ul>
		</c:when>
		<c:otherwise>
			<ul>
				<li><a href="/mysite/user?action=loginForm" class="btn_s">로그인</a></li>
				<li><a href="/mysite/user?action=joinForm" class="btn_s">회원가입</a></li>
			</ul>
		</c:otherwise>
	</c:choose>

</body>
</html>