<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

	<c:choose>
		<c:when test="${param.name eq '홍길동' }">
			홍길동입니다
		</c:when>
		<c:when test="${param.name eq '이순신' }">
			<c:out value="이순신입니다"></c:out>
		</c:when>
		<c:otherwise>
			홍길동도 이순신도 아닙니다
		</c:otherwise>
	</c:choose>

	<!-- 
		choose를 사용해서 90이상이면 A, 80이상이면 B, 나머지는 F
		중첩구문을 사용해서 95점이상일대는 A+, 90~94 까지는 A로 출력
	 -->

	<c:choose>
		<c:when test="${param.score>=90 }">
			<c:choose>
				<c:when test="${param.score>=95 }">
					A+입니다
				</c:when>
				<c:otherwise>
					A입니다
				</c:otherwise>
			</c:choose>
			
	 	</c:when>
		<c:when test="${param.score>=80 }">
		B입니다
		</c:when>
		<c:otherwise>
		F입니다
		</c:otherwise>
	</c:choose>


</body>
</html>