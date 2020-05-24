package web.servlets;


import domain.models.User;
import repositories.UserRepository;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;


@WebServlet("/user")
public class UserServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

             String name = URLDecoder.decode((req.getQueryString().split("=")[1])
                .replace("%20", " "),"UTF-8");
            User elem = null;
            for (User user : UserRepository.users) {
            if (user.getUsername().equals(name)){
                elem = user;

                 }
             }
            if (elem != null){
                req.setAttribute("elem", elem);
                req.getRequestDispatcher("/user-profile.jsp").forward(req, resp);
            }else{
                resp.sendRedirect("/login");
            }




    }

}
