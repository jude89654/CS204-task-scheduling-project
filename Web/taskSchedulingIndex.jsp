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
<div id="content"  class="text-center">
<form action="schedulingInput.jsp" >
	<p>INPUT NO OF WORKERS<input type="number" name="noOfWorkers" required="required" min="1" id="spaces" class="tb"></p>
	<p>INPUT NO OF TASKS<input type="number" name="noOfTasks" required="required" min="1" id="spaces" class="tb"></p>
	<p><input type="submit" value="submit" class="btn"></p>
</form>
</div>
</body>
</html>