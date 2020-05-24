package web.filters;

import domain.models.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter("/register")
public class RegisterUserFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

        if (req.getMethod().toLowerCase().equals("post")){
            User user = new User();
            user.setUsername(req.getParameter("username"));
            user.setPassword(req.getParameter("password"));

            req.setAttribute("registerUser", user);
        }
        filterChain.doFilter(req, resp);
    }
}
