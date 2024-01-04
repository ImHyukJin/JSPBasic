<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	String name =(String)request.getAttribute("name");
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!--  requestScope는 생략이 가능하다. -->
	${requestScope.name }<br>
	${requestScope.vo.id }<br>
	${vo.name }<br>
	${vo.email }<br>
	<%=name %><br>
	${sessionScope.now }
</body>
</html>