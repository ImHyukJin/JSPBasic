<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%
 	//������ - ������ Ŭ���̾�Ʈ���� ������ �����ϱ� ���� ����
 	//�������� �����ϰ�, �������� ������
 	
 	session.setAttribute("user_id", "xxx123");
 	session.setAttribute("user_name", "�̼���");
    
 	//������ ��ȿ�ð� 1�ð�
 	session.setMaxInactiveInterval(3600);
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>


	<a href = "session_get.jsp">����Ȯ���ϱ�</a>
</body>
</html>