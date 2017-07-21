<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<c:forEach items="${list}" var="temp">
    ${temp.name}<br>
</c:forEach>
</body>
</html>
<script src="${pageContext.request.contextPath}/static/js/list.js"></script>
