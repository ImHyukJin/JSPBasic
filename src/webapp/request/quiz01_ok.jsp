<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");

	
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String birth =request.getParameter("birth");
	String age =request.getParameter("age");
	
	String[] hobby = request.getParameterValues("a1");
	String major = request.getParameter("b1");
	
	String region = request.getParameter("region");
	String w = request.getParameter("w");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디 <%=id %> 님의 비밀번호 <%=pw %>이고,  <%=birth %>에 태어났으며,
	올해 <%=age %> 살 입니다 <br>
	취미는 <% for(String a : hobby) {%>
		<%=a %>
	<% }%> 를 가지고 있으며 전공은 <%=major %> 입니다<br>
	현재 <%=region %>에 살고 있습니다 
	저를 소개하자면 <%=w %>
	
		
		
</body>
</html>