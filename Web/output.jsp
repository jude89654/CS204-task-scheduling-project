<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ust.model.WorkerBean"%>
<%@page import="com.ust.model.TaskBean"%>
<%@page import="com.ust.utility.TaskScheduling"%>
<%
	WorkerBean workers[] = (WorkerBean[]) request
			.getAttribute("schedule");
	TaskBean tasks[] = (TaskBean[]) request.getAttribute("task");
	int maxLength = TaskScheduling.maxLength(tasks);
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>SCHEDULE FOR WORKERS</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/theme.css" rel="stylesheet">
</head>
<body>
	<div id="title">
		<h1 class="text-center">Task allocation application</h1>
	</div>
	<div id="tables">
		<table border="1" width="100%" cellpadding="3" cellspacing="3">
			<tr>
				<th>EMPLOYEE</th>
				<%
					//para sa paggawa ng headers ng days
					for (int x = 0; x < maxLength; x++) {
				%>
				<!-- para magsimula ang day sa 1 kaya may x+1 -->
				<td>DAY <%=x + 1%></td>
				<%
					}
				%>
			</tr>
			<%
				for (WorkerBean worker : workers) {
			%><!-- paglagay ng pangalan ng worker sa table -->
			<tr>
				<td><%=worker.getName()%></td>
				<%
					for (int x = 0; x < maxLength; x++) {
				%><!-- paglagay ng schedule ng worker sa table -->
				<td><%=worker.getSchedule()[x]%></td>
				<%} }%>
			
		</table>
	</div>

<a href="index.jsp" class="btn">back to index</a>
</body>
</html>