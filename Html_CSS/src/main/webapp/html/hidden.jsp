<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--java 땅이면선 jsp땅이다~ -->

    <% 
    String fname = request.getParameter("fname");
    String id = request.getParameter("custId");
	
    out.println("fname= "+fname+" : "+ "custId= "+id);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
</body>
</html>