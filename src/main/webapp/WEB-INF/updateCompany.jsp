<%@ page import="com.example.companyemployeeservlet.model.Company" %><%--
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
<% Company company = (Company) request.getAttribute("company"); %>

<a href="/companies">Back</a>

<h2>Update Company</h2>

<form action="/updateCompany" method="post">
    <input name="id" type="hidden" value="<%=company.getId()%>">
    Name: <input type="text" name="name" value="<%=company.getName()%>"> <br>
    Country: <input type="text" name="country" value="<%=company.getCountry()%>"> <br>
    <input type="submit" value="update">
</form>

</body>
</html>
