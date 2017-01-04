<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>select</title>
</head>
<body>
<p>${message}</p>
<form:form modelAttribute="selectForm" action="${pageContext.request.contextPath}/sample/select/info/">
	<form:select path="employees" items="${selectEmployees}" multiple="true" />
	<input type="submit" />
</form:form>
</body>
</html>