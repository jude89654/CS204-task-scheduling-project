<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	int number=Integer.parseInt(request.getParameter("number"));
%>
<form action="assignmentInputContinuation.jsp">
<%for(int x=1;x<=number;x++){ %>
<p>INPUT NAME FOR WORKER<%=x%>:<input type="text" name="workers"required="required"/></p>
<%} %>
<%for(int x=1;x<=number;x++){ %>
<p>INPUT NAME FOR TASK<%=x%>:<input type="text" name="tasks" required="required"/></p>
<%} %>
<input type="submit" value="submit"/>
</form>
</body>
</html>