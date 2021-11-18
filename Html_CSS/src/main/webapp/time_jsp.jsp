<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Jsp: Web Server에서 실행되는 또다른 JAVA임.
JSP(MVC model 1): Client 요청(http://localhost/time_jsp.jsp)을 서버의 jsp가 받아서 처리한 후
				  html 문서로 브라우저에게 전달.<br>

JSP(MVC model 2): Client의 요청을 서블릿이 받아서 처리한 후 JSP를 통해서 브라우저에 html문서로 전달.<br>
				  

	<%
	//서버에서 수행될 사항들(java script)
	Calendar c = Calendar.getInstance(); //싱글톤=>이거실행하면 캘린더클래스의 메소드 다 쓸수있음
	int hour = c.get(Calendar.HOUR_OF_DAY);
	int minute = c.get(Calendar.MINUTE);//static변수,고정상수
	int second = c.get(Calendar.SECOND);
	System.out.println("서버의 시간 콘솔 출력 - " + hour + ":" + minute + ":" + second);

	out.println("<br><br>");
	out.println("web 출력: " + hour + ":" + minute + ":" + second + "<br>");
	%>

	Web에서 현재 시간은
	<%=hour%>시 	<%=minute%>분 <%=second%>초 입니다.


</body>
</html>