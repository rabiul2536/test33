<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<fmt:requestEncoding value="UTF-8"/>
<fmt:setLocale value="${param.lang}"/>
<fmt:setBundle basename="i18n/ApplicationResources"/>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Demo JSTL Tags</title>
</head>
<body>

<h3>
    Price of BMW Car: <fmt:formatNumber value="${price}" type="currency"/>
    as of <fmt:formatDate value="${now}" type="date" dateStyle="full"/>
</h3>


Today Date & Time:
<p>
    <fmt:formatDate value="${now}" pattern="dd-MM-yyyy"/>
</p>

<p>
    <fmt:formatDate value="${now}" type="time"/>
</p>

<p>
    <fmt:formatDate value="${now}" type="both"/>
</p>

<p>
    <fmt:timeZone value="GMT+2:00">
        <fmt:formatDate value="${now}" type="both" timeStyle="full"/>
    </fmt:timeZone>
</p>

<p>
</p>

</body>
</html>
