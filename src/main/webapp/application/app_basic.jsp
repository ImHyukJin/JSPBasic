<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    //application�� session�� ������� ���� �����մϴ�.
    //application ��ü�� ������Ʈ�� ���۵� �� 1�� �����ǰ�,������Ʈ�� �� ������ ���� �˴ϴ�. 
    // application ������������ ����ְ� --��ü 1��
    //session�� ������ ���� �ʱ�ȭ -- ������ ���� ��ü����
    
    int total = 0;
  
    //���
    if(application.getAttribute("total")!=null){
    	total = (int)application.getAttribute("total");
    }
    total++;
    
    //����
    application.setAttribute("total", total );
    
 	///////////////////////
 	int count = 0;
 	if(session.getAttribute("count")!=null){
 		count = (int)session.getAttribute("count");
 	}
 	count ++;
 	
 	//����
 	session.setAttribute("count", count);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>application ��ü Ȯ���ϱ�</h3>
	
	application�� ������ ������Ż :<%=total %>
	
	<h3>session Ȯ���ϱ�</h3>
	session�� ����� ī��Ʈ : <%=count %>
</body>
</html>