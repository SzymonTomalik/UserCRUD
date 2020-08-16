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
public class Edit extends HttpServlet {
    UserDao userDao = new UserDao();

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        String userName = request.getParameter("userName");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        User updatedUser = new User(userName, email, password);
        updatedUser.setId(id);
        userDao.update(updatedUser);
        response.sendRedirect("/users/list");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int id = Integer.parseInt(request.getParameter("id"));
        request.setAttribute("userEdit", userDao.read(id));
        getServletContext().getRequestDispatcher("/users/edit.jsp").forward(request, response);

    }
}
