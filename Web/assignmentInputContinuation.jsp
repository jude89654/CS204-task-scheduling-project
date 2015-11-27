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
String[] workers = request.getParameterValues("workers");
String[] tasks = request.getParameterValues("tasks");
%>

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
		
		<h2>INPUT HOW FAST EACH WORKER CAN DO THAT TASK</h2>
		<%
			for (int x = 0; x < workers.length; x++) {
		%>
		<p><%=workers[x]%>: <p>
			<%
				for (int y = 0; y < tasks.length; y++) {
			%>
				<%=tasks[y]%><input type="number" min="1"
				name="task<%=x%>" /><br>
			<%
				}
			%>
				</p>
			<%
				}
			%>
			
<input type="submit" value="submit"/>
</form>

</body>
</html>