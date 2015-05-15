<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Chat Box</title>
</head>
<body>

<fieldset>
    <legend>Person List:</legend>
    <c:forEach var="user" items="${userList}">
        <c:out value="${user.firstName}"/> <c:out value="${user.lastName}"/> (<c:out value="${user.email}"/>) <br/>
    </c:forEach>
</fieldset>

<p>&nbsp;</p>

<fieldset>
    <legend>Chat History:</legend>
    <c:forEach var="message" items="${messageList}">
        <b><c:out value="${message.user.firstName}"/> <c:out value="${message.user.lastName}"/> :</b>
        <c:out value="${message.text}"/><br/>
    </c:forEach>
</fieldset>

<p>&nbsp;</p>

<fieldset>
    <legend><h3>Write your chat here: </h3></legend>
    <form method="post">
        <input type="text" name="message"/><br/>
        <input type="submit" name="Submit"/>
    </form>
</fieldset>

<p>&nbsp;</p>
<a href="<c:url value="/logout"/>">logout</a>

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
