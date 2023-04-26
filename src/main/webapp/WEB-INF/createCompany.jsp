<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24.04.2023
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Company</title>
</head>
<body>
<a href="/companies">Back</a>

<h2>Create Company</h2>
<form action="/createCompany" method="post">
    Name: <input type="text" name="name"> <br>
    Country: <input type="text" name="country"> <br>
    <input type="submit" value="create">
</form>

</body>
</html>
