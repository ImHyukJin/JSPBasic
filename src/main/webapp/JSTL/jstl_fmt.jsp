<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>


	<h3>fmt모듈</h3>

	formatDate , parseDate , formatNumber, parseNumber
	<br>
	parse는 형변환입니다
	format은 출력형식변환
	
	<hr>
	
	<h2>formatDate -날짜를 문자로</h2>
	<c:set var="a" value="<%=new Date()  %>"/>
	
	${a }<br>
	<fmt:formatDate var = "result" value="${a }" pattern="yyyy년MM월dd일"/><br>
	<fmt:formatDate var = "result2" value="${a }" pattern="yyyy-MM-dd- HH:mm:ss"/>
	${result }
	${result2 }
	
	<h2>parseDate - 문자를 날짜로</h2>
	
	<fmt:parseDate var = "result3" value = "2023-01-04" pattern ="yyyy-MM-dd"/> 
	${result3 }
	
	<hr>
	
	<h3>parseNumber - 문자를 숫자로</h3>
	
		<fmt:parseNumber value="10000번" pattern="00000번"/>
		<fmt:parseNumber var="x" value="3,300원" pattern="0,000원"/>
		
		${x }
		${x +1000 }
	<hr>
	
		<h2>아래값들을 2020년05월03일 형식으로 변경해서 출력</h2>
	
	<c:set var="TIME_A" value="2020-05-03" />
	<c:set var="TIME_B" value="2020/05/03" />
	<c:set var="TIME_C" value="2020-05-03 21:30:22" />
	<c:set var="TIME_D" value="<%=new Date() %>" />
	
	<fmt:parseDate var = "ae" value="${TIME_A }" pattern = "yyyy-MM-dd"/><br>
	<fmt:formatDate value="${ae }" pattern = "yyyy년MM월dd일"/><br>
	<hr>
	<fmt:parseDate var="aq" value="${TIME_B }" pattern = "yyyy/MM/dd"/><br>
	<fmt:formatDate value="${aq }" pattern = "yyyy년MM월dd일"/><br>
	<hr>
	<fmt:parseDate var="aw" value="${TIME_A }" pattern = "yyyy-MM-dd HH:mm:ss"/><br>
	<fmt:formatDate value="${aw }" pattern = "yyyy년MM월dd일 HH시mm분ss초"/><br>
	<hr>
	<fmt:formatDate value="${TIME_D}" pattern = "yyyy년MM월dd일"/>
	
	
</body>
</html>