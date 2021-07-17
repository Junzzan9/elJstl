<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>데이형</h1>

	<p>
		<!-- 
servlet에서 넘어온 값(request.get(Attribute(), request.getParameter())
들을 표현할때 사용한다. java보다 간결하다-->
		정수형: ${10} <br> 실수형 ${7.5} <br> 문자열 ${"정우성" } <br> 논리형 ${true} <br> null
		${null} <br>

	</p>
</body>
</html>