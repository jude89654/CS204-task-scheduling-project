<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String[] workers = request.getParameterValues("workers");
		String[] tasks = request.getParameterValues("tasks");
	%>

	<form action="process.html" method="post">
		
		<%
			for (String worker : workers) {
		%>
		<input type="hidden" value="<%=worker%>" name="worker" />
		<%
			}
		%>
		<h1>PLEASE INPUT THE START DAY AND LAST DAY WHERE THE TASK MUST BE COMPLETED</h1>
		<%
			for (String task : tasks) {
		%>
		<input type="hidden" value="<%=task%>" name="task" />
		<p><%=task%><input type="number" name="taskStart" required="required" size="2"/><input size="2" type="number" name="taskEnd" required="required"/></p>
		<%
			}
		%>
		<h1>PLEASE CHECK WHAT EACH WORKER CAN DO</h1>
		<%
			for (int x = 0; x < workers.length; x++) {
		%>
		<p><%=workers[x]%>
			<%
				for (int y = 0; y < tasks.length; y++) {
			%>
				<%=tasks[y]%><input type="checkbox"
				name="task<%=x%>" value="<%=tasks[y]%>" />
			<%
				}
			%>
				</p>
			<%
				}
			%>
			<input type="submit">
	</form>
</body>
</html>