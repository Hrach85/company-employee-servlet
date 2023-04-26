package com.example.companyemployeeservlet.servlet;

import com.example.companyemployeeservlet.meneger.CompanyManager;
import com.example.companyemployeeservlet.meneger.EmployeeManager;
import com.example.companyemployeeservlet.model.Company;
import com.example.companyemployeeservlet.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/createEmployee")
public class CreateEmployeeServlet extends HttpServlet {
    EmployeeManager employeeManager = new EmployeeManager();
    CompanyManager companyManager = new CompanyManager();
    Company company = new Company();
    List<Company> names = companyManager.getAll();
    ;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setAttribute("companyName", names);
        req.getRequestDispatcher("WEB-INF/createEmployee.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String surname = req.getParameter("surname");
        String email = req.getParameter("email");
        int companyId = Integer.parseInt(req.getParameter("company"));
        Employee employee = new Employee();
        employee.setName(name);
        employee.setSurname(surname);
        employee.setEmail(email);
        employee.setCompany(companyManager.getById(companyId));
        employeeManager.save(employee);
        resp.sendRedirect("/employees");
    }
}
