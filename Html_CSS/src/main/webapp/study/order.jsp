<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--java 땅이면선 jsp땅이다~ -->
<% 
 	request.setCharacterEncoding("utf-8");
 	response.setContentType("text/html;charset=utf-8");
%>

    <% 
    String coffee1 = request.getParameter("coffee1");
    String coffee2 = request.getParameter("coffee2");
    String coffee3 = request.getParameter("coffee3");
    
    out.println(coffee1);
    out.println(coffee2);
    out.println(coffee3);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- fav_language: <%=fav %><br> --%>

</body>
</html>