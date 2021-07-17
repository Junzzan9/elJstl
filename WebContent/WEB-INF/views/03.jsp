<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>파라미터</h1>
	<!-- localhost:8088/elJstl/03?id=you&pw=1111&name="재석"&num1=100&num2=200 -->
	<h2>자바------------->parameter 값 꺼내쓰기</h2>
	<%
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pw = request.getParameter("pw");
	int num1 = Integer.parseInt(request.getParameter("num1"));
	int num2 = Integer.parseInt(request.getParameter("num2"));
	
%>

	id =
	<%=id %>
	pw =
	<%=pw %>
	name =
	<%=name %>
	num1 =
	<%=num1 %>
	num2 =
	<%=num2 %>

	<h2>el------------->parameter 값 꺼내쓰기</h2>
	id = ${param.id} pw = ${param.pw} name = ${param.name } num1 = ${param.num1 } num2 = ${param.num2 }

</body>
</html>