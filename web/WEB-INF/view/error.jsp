<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Error Page</title>
</head>
<body>

<c:choose>
    <c:when test="${statusCode == 404}">
        <h2>Sorry, the page you requested was not found.</h2>
    </c:when>
    <c:otherwise>
        <h2>There has been an error in processing your request.</h2>
    </c:otherwise>
</c:choose>

<br/>
<a href="<c:url value="/"/>"> Go Back</a>

</body>
</html>
