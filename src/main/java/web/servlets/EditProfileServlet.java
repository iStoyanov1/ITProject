package web.servlets;

import domain.models.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URLDecoder;

@WebServlet("/edit")
public class EditProfileServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //User user = (User) req.getAttribute("user");
        String name = URLDecoder.decode((req.getQueryString().split("=")[1]).replace("%20", " "),"UTF-8");
        req.setAttribute("name", name);
        System.out.println();
        req.getRequestDispatcher("/edit-profile.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

      User user = (User) req.getSession().getAttribute("login");

        if (user == null){
            resp.sendRedirect("/login");
        }else{
            user.setName(req.getParameter("name"));
            user.setJob(req.getParameter("job"));
            user.setDescription(req.getParameter("description"));
            user.setEmail(req.getParameter("email"));
            user.setCity(req.getParameter("city"));
            user.setAddress(req.getParameter("address"));
            user.setPhone(req.getParameter("phone"));

            resp.sendRedirect("/user?="+user.getUsername());
        }
    }
}
