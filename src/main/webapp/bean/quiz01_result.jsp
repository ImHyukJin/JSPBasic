<%@page import="com.example.bean.quizVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    	quizVO vo = (quizVO)request.getAttribute("vo");
    	double avg = (Double.valueOf(vo.getKor())+Double.valueOf(vo.getMath()))/2 ;
    	double sum = avg *2 ;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	아이디:<%=vo.getId() %><br>
	패스워드:<%=vo.getPw() %><br>
	이름:<%=vo.getName() %><br>
	주소:<%=vo.getAddress()%><br>
	국어점수:<%=vo.getKor() %><br>
	수학점수:<%=vo.getMath() %><br>
	
	평균 <%=avg %><br>
	총점 <%=sum %>
	
</body>
</html>