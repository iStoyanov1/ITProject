/*package web.filters;

import domain.models.User;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebFilter({"/login", "/register"})
public class LoginUserFilter implements Filter {
    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req  = (HttpServletRequest)servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

        User user = (User)req.getSession().getAttribute("login");
            if (user != null){
                resp.sendRedirect("/user?="+user.getUsername());
                return;
            }
            filterChain.doFilter(req, resp);
    }
}
*/