package web.filters;

import domain.models.User;
import repositories.UserRepository;
import util.XmlWorker;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.xml.bind.JAXBException;
import java.io.IOException;

@WebFilter(urlPatterns = "*")
public class LoadXMLFilter implements Filter {

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) servletRequest;
        HttpServletResponse resp = (HttpServletResponse) servletResponse;

        if (req.getSession().getAttribute("login") == null){
            UserRepository userRepository = new UserRepository();
            try {
                userRepository.add(new XmlWorker().readFromXml().getAll());
                req.getSession().setAttribute("login", userRepository);
            } catch (JAXBException e) {
                e.printStackTrace();
            }
        }
        filterChain.doFilter(req, resp);
    }
}
