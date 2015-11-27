<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd ">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/theme.css" rel="stylesheet">
<title>Insert title here</title>
</head>
<body>
<%
	int number=Integer.parseInt(request.getParameter("number"));
%>
<form action="assignmentInputContinuation.jsp">
<div>
<%for(int x=1;x<=number;x++){ %>
<p align="center">INPUT NAME FOR WORKER<%=x%>:<input id="spaces" type="text" name="workers"required="required"/></p>
<%} %>
<%for(int x=1;x<=number;x++){ %>
<p align="center">INPUT NAME FOR TASK<%=x%>:<input type="text" id="spaces" name="tasks" required="required"/></p>
<%} %>

<p align="center"><input type="submit" class="btn" value="submit"/></p>
</div>
</form>
</body>
</html>