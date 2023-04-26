package com.example.companyemployeeservlet.servlet;

import com.example.companyemployeeservlet.meneger.CompanyManager;
import com.example.companyemployeeservlet.model.Company;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/updateCompany")
public class updateCompanyServlet extends HttpServlet {
    CompanyManager companyManager = new CompanyManager();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int id = Integer.parseInt( req.getParameter("id"));
        Company company = companyManager.getById(id);
        req.setAttribute("company" , company);
        req.getRequestDispatcher("WEB-INF/updateCompany.jsp").forward(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String name = req.getParameter("name");
        String country = req.getParameter("country");
        int id = Integer.parseInt( req.getParameter("id"));
        Company company = new Company();
        company.setName(name);
        company.setCountry(country);
        company.setId(id);
        companyManager.update(company);
        resp.sendRedirect("/companies");
    }
}
