<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Welcome</title>
</head>
<body>
	<h1>${message}</h1>
	Nameを変更してください
	<form:form modelAttribute="testForm">
		<p>ID: ${test.id}</p>
		<p>NAME: <form:input path="name" /></p>
		<input type="submit">
	</form:form>
</body>
</html>