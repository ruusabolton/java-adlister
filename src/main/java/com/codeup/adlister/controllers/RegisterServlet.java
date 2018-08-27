package com.codeup.adlister.controllers;

import com.codeup.adlister.dao.DaoFactory;
import com.codeup.adlister.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet(name = "controllers.RegisterServlet", urlPatterns = "/users/register")
public class RegisterServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO: show the registration
        User user = (User)request.getSession().getAttribute("user");
        if(user != null) {
            response.sendRedirect("/profile");
            return;
        }
        request.getRequestDispatcher("/WEB-INF/users/register.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // TODO: ensure the submitted information is valid

    boolean inputHasErrors = username.isEmpty() || email.isEmpty() || password.isEmpty() || (DaoFactory.getUsersDao().findByUsername(username) != null);

       if(inputHasErrors) { response.sendRedirect("/register");
       return;}

        // TODO: create a new user based off of the submitted information

        User user = new User(
                2,
                request.getParameter("username"),
                request.getParameter("email"),
                request.getParameter("password")

        );
        DaoFactory.getUsersDao().insert(user);
        request.getSession().setAttribute("user", DaoFactory.getUsersDao().findByUsername(username));
        response.sendRedirect("/profile");
        // TODO: if a user was successfully created, send them to their profile
        response.sendRedirect("/login");

    }


}


