<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
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
<div  id="input" class="text-center">
	<%
		int noOfWorkers = Integer.parseInt(request
				.getParameter("noOfWorkers"));
		int noOfTasks = Integer.parseInt(request.getParameter("noOfTasks"));
	%>
	<form action="schedulingInputContinuation.jsp">
		<h2>PLEASE INPUT NAME FOR: </h2>
		<%
			for (int x = 0; x < noOfWorkers; x++) {
		%>
		<p><!-- getting the names of workers -->
			WORKER 
			<%=x + 1%>:	<input type="text" name="workers" required="required" id="spaces" class="tb"/>
		<p>
			<%
				}
			%>
		
		<h2>PLEASE INPUT TASK NAMES: </h2>
		<%
			for (int x = 0; x < noOfTasks; x++) {
		%>
		<p><!-- getting the names of tasks -->
			TASK
			<%=x + 1%>:	<input type="text" name="tasks" required="required" id="spaces" class="tb"/>
		<p>
			<%
				}
			%>
		
		<p>
			<input type="submit" class="btn" />
	</form>
</div>
</body>
</html>