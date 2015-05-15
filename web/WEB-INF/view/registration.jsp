<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Registration</title>
</head>
<body>

<fieldset>
    <legend>User Registration</legend>
    <form method="post">
        First Name: <input type="text" name="firstName"/><br/>
        Last Name: <input type="text" name="lastName"/><br/>
        Email: <input type="email" name="email"/><br/>
        Password: <input type="password" name="password"/><br/>
        <input type="submit" name="Submit"/>


    </form>
</fieldset>

<jsp:include page="fragments/footer.jsp"/>
</body>
</html>
