<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<%
	//������ ���� ��¹�� getAttribute(Ű)
	String user_id =(String)session.getAttribute("user_id");
	String user_name =(String)session.getAttribute("user_name");

	//������ ��ȿ�ð�
	int time = session.getMaxInactiveInterval();

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
	
	���ǿ� ����� ��: <%=user_id %><br>
	���ǿ� ����� ��: <%=user_name %><br>
	������ �ð� : <%=time %>
	
	<a href= "session_remove.jsp">���ǻ����ϱ�</a>
</body>
</html>