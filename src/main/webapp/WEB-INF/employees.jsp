<%@ page import="java.util.List" %>
<%@ page import="com.example.companyemployeeservlet.model.Employee" %>
<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 24.04.2023
  Time: 18:58
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Employee</title>
</head>
<%List<Employee> employees = (List<Employee>) request.getAttribute("employees");%>
<body>
<a href="/">Back</a>
<h2>Company</h2>
<a href="/createEmployee">Create Employee</a>

<table border="1">
    <th>id</th>
    <th>name</th>
    <th>surname</th>
    <th>email</th>
    <% if (employees != null && !employees.isEmpty()) {%>
    <% for (Employee employee : employees) { %>
    <tr>
        <td><%=employee.getId()%>
        </td>
        <td><%=employee.getName()%>
        </td>
        <td><%=employee.getSurname()%>
        </td>
        <td><%=employee.getEmail()%>
        </td>
        <td><a href="/removeEmployee?id=<%=employee.getId()%>">delete</a> /
        <a href="updateEmployee?id=<%=employee.getId()%>">Update</a></td>
    </tr>
    <%}%>
    <%}%>
</table>
</body>
</html>
