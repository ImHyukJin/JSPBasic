<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//���⿡�� ������ ���� -> ������ �ȵ� ���
	 if(session.getAttribute("user_id") ==null){
		 response.sendRedirect("session_login.jsp");
	 }



	//���ǰ��� ��´�
	String id =(String)session.getAttribute("user_id");
	String nick =(String)session.getAttribute("user_nick");


%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
		<%=id %>(<%=nick %>)�� ȯ���մϴ�.
		<a href = "session_logout.jsp">[�α׾ƿ�]</a>
		
		
		
		
</body>
</html>