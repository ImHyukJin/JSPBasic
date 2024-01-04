<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//세션지우기
	session.removeAttribute("user_name"); //삭제
	
	//세션을 통째로 제거
	session.invalidate();




%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<a href ="session_get.jsp">세션확인하기</a>
	
</body>
</html>