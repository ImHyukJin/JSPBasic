<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	//���������
	session.removeAttribute("user_name"); //����
	
	//������ ��°�� ����
	session.invalidate();




%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<a href ="session_get.jsp">����Ȯ���ϱ�</a>
	
</body>
</html>