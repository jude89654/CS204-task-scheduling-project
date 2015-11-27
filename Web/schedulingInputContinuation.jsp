<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/theme.css" rel="stylesheet">
</head>
<body>
<div id="title">
<h1  class="text-center">Task allocation application</h1>
</div>
<div id="left"  class="text-center">
	<%
		String[] workers = request.getParameterValues("workers");
		String[] tasks = request.getParameterValues("tasks");
	%>

	<form action="schedulingProcess.html" method="post">
		
		<%
			for (String worker : workers) {
		%>
		<input type="hidden" value="<%=worker%>" name="worker" />
		<%
			}
		%>
		<h2>PLEASE INPUT THE START DAY AND LAST DAY WHERE THE TASK MUST BE COMPLETED</h2>
		<%
			for (String task : tasks) {
		%>
		<input type="hidden" value="<%=task%>" name="task" />
		<p><%=task%>:	<input type="number" name="taskStart" required="required" size="2" id="spaces" class="tb2"/>		<input size="2" type="number" name="taskEnd" required="required" id="spaces" class="tb2"/></p>
		<%
			}
		%>
		
		<h2>PLEASE CHECK WHAT EACH WORKER CAN DO</h2>
		<%
			for (int x = 0; x < workers.length; x++) {
		%>
		<p><%=workers[x]%>: <p>
			<%
				for (int y = 0; y < tasks.length; y++) {
			%>
				<%=tasks[y]%><input type="checkbox"
				name="task<%=x%>" value="<%=tasks[y]	%>" /><br>
			<%
				}
			%>
				</p>
			<%
				}
			%>
			<input type="submit" class="btn">
	</form>
</div>
</body>
</html>