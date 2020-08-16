package pl.coderslab.servlets;

import pl.coderslab.entity.User;
import pl.coderslab.entity.UserDao;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "Edit", value = "/users/edit")
public class UserEdit extends HttpServlet {
    UserDao userDao = new UserDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        User read = userDao.read(Integer.parseInt(request.getParameter("id")));
        read.setUserName(request.getParameter("userName"));
        read.setEmail(request.getParameter("email"));
        read.setPassword(request.getParameter("password"));
        userDao.update(read);

        response.sendRedirect("/users/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("userEdit", userDao.read(id));
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);

    }
}
