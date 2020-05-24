package web.servlets;

import domain.models.User;
import repositories.UserRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet implements HttpSessionListener {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/login.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String username = req.getParameter("userLogin");
        String password = req.getParameter("passLogin");

        User element = null;

        for (User user : UserRepository.users) {
            if (user.getUsername().equals(username) && user.getPassword().equals(password)){
                element = user;
                break;
            }
        }
        if  (element != null){
            req.getSession().setAttribute("login", element);
            resp.sendRedirect("/user?="+element.getUsername());
        }else{
            req.getRequestDispatcher("/login.jsp").forward(req, resp);
        }
    }
}
