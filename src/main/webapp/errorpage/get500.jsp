<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page errorPage="error_view.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<%
		String aaa = (String)session.getAttribute("aaa");
		///aaa가 null이라 에러
		aaa.charAt(0);
	
	
	%>

</body>
</html>