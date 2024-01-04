<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    	<%
    	request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:out value="출력합니다~"/>
	
	<c:set var ="a" value = "홍길동" />
	<c:out value="${a}변수를 안에서 사용"/>
	${a }<br>
	${param.name }<br>
	${param.age }<br>
	<c:if test="${param.name eq '홍길동' }">
			<b>홍길동 입니다</b>	
	</c:if>

	<h3>이름이 홍길동이고, 나이가 20세 이상이라면 "성인입니다" 출력</h3>
	
	<c:if test="${param.name eq '홍길동' and param.age >=20}">
			<c:out value="성인입니다"></c:out>	
	</c:if>
</body>
</html>