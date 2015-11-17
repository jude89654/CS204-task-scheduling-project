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
		int noOfWorkers = Integer.parseInt(request
				.getParameter("noOfWorkers"));
		int noOfTasks = Integer.parseInt(request.getParameter("noOfTasks"));
	%>
	<form action="inputcontinuation.jsp">
		<h2>PLEASE INPUT NAME FOR:</h2>
		<%
			for (int x = 0; x < noOfWorkers; x++) {
		%>
		<p>
			WORKER
			<%=x + 1%><input type="text" name="workers" required="required" />
		<p>
			<%
				}
			%>
		
		<h2>PLEASE INPUT TASK NAMES</h2>
		<%
			for (int x = 0; x < noOfTasks; x++) {
		%>
		<p>
			TASK
			<%=x + 1%><input type="text" name="tasks" required="required" />
		<p>
			<%
				}
			%>
		
		<p>
			<input type="submit" />
	</form>

</body>
</html>