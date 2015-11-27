<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/theme.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<div>
<h1 align="center">ASSIGNMENT RESULT</h1>
<%String assignment[]=(String[])request.getAttribute("assignment"); %>

<%for(int x=0; x<assignment.length;x++){ %>
<p align="center"><%=assignment[x] %></p>
<%}%>
</div>
<a href="index.jsp" class="btn">back to index</a>
</body>
</html>