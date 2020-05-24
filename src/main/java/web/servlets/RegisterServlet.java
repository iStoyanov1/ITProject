package web.servlets;

import domain.models.User;
import repositories.UserRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/register.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        User user = (User) req.getAttribute("registerUser");

        if (user.getPassword().equals(req.getParameter("confirmPassword"))) {
            UserRepository.users.add(user);
            resp.sendRedirect("/login");
        }else{
            throw new ServletException("Паролите не съвпадат!");
        }
    }
}
