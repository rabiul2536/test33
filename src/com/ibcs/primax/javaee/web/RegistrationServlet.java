package com.ibcs.primax.javaee.web;

import com.ibcs.primax.javaee.model.User;
import com.ibcs.primax.javaee.service.UserService;
import com.ibcs.primax.javaee.service.UserServiceImpl;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


@WebServlet(name = "RegistrationServlet", urlPatterns = "/register")
public class RegistrationServlet extends HttpServlet {
    UserService userService = new UserServiceImpl();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("firstName");
        String lastName = request.getParameter("lastName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email.length() == 0) {
            throw new IllegalArgumentException("User must enter an email");
        }

        User user = new User(firstName, lastName, email, password);
        userService.saveUser(user, getServletContext());

        response.sendRedirect("/login");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/WEB-INF/view/registration.jsp").forward(request, response);
    }
}
