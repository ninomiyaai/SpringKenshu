<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Welcome</title>
	</head>

	<body>
		<h1>${message}</h1>
		<c:forEach items="${tests}" var="test">
			<p>
				<c:out value="${test.id}"></c:out> : <c:out value="${test.name}"></c:out>
				<a href="${pageContext.request.contextPath}/test/update/input/${test.id}/">編集</a>
			</p>
		</c:forEach>
	</body>
</html>