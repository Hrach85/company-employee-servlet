<%@ page import="com.example.companyemployeeservlet.model.Company" %>
<
<%@ page import="java.util.List" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create Employee</title>
</head>

<body>
<a href="/employees">Back</a>
<% List<Company> Names = (List<Company>) request.getAttribute("companyName");%>

<h2>Create Company</h2>

<form action="/createEmployee" method="post">
    Name: <input type="text" name="name"> <br>
    Surname: <input type="text" name="surname"> <br>
    E-mail: <input type="text" name="email"> <br>
    Company: <select name="company">
    <%for (Company companyList : Names) {%>
    <option value="<%=companyList.getId()%>"><%=companyList.getName()%></option>
    <%}%>
</select>
    <br>

    <input type="submit" value="create">
</form>

</body>
</html>