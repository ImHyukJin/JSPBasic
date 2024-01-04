<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%
    //application은 session과 사용방법은 거의 유사합니다.
    //application 객체는 프로젝트가 시작될 때 1개 생성되고,프로젝트를 끌 때까지 유지 됩니다. 
    // application 서버중지까지 살아있고 --객체 1개
    //session은 브라우저 끄면 초기화 -- 브라우저 별로 객체생성
    
    int total = 0;
  
    //사용
    if(application.getAttribute("total")!=null){
    	total = (int)application.getAttribute("total");
    }
    total++;
    
    //저장
    application.setAttribute("total", total );
    
 	///////////////////////
 	int count = 0;
 	if(session.getAttribute("count")!=null){
 		count = (int)session.getAttribute("count");
 	}
 	count ++;
 	
 	//저장
 	session.setAttribute("count", count);
    
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<h3>application 객체 확인하기</h3>
	
	application에 저장한 현재토탈 :<%=total %>
	
	<h3>session 확인하기</h3>
	session에 저장된 카운트 : <%=count %>
</body>
</html>