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
String[] workers = request.getParameterValues("workers");
String[] tasks = request.getParameterValues("tasks");
%>
<div>
<form action="assignmentProcess.html">
	
		<%
			for (String worker : workers) {
		%>
		<input type="hidden" value="<%=worker%>" name="workers" />
		<%
			}
		%>
		
		
		<%
			for (String task : tasks) {
		%>
		<input type="hidden" value="<%=task%>" name="tasks" />
		<%
			}
		%>
		
		<h2 align="center">INPUT HOW FAST EACH WORKER CAN DO THAT TASK</h2>
		
		<%
			for (int x = 0; x < workers.length; x++) {
		%>
		<p align="center"  ><%=workers[x]%>: <p align="center">
			<%
				for (int y = 0; y < tasks.length; y++) {
			%>
				<%=tasks[y]%><input type="number" min="1"
				name="task<%=x%>" id="spaces" value="<%=tasks[y]%>" required="required" /><br>
			<%
				}
			%>
				</p>
			<%
				}
			%>
			<p align="center">
			<input type="submit" class="btn" value="submit">
</form>
</div>
</body>
</html>