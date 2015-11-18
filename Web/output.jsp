<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.ust.model.WorkerBean" %>
<%@page import="com.ust.utility.TaskScheduling" %>
<% 
    	WorkerBean worker[]=(WorkerBean[]) request.getAttribute("workers");
		int maxLength=TaskScheduling.maxLength(tasks)
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

</body>
</html>