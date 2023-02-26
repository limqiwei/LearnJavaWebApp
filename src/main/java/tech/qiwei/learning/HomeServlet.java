package tech.qiwei.learning;

import javax.ejb.Init;
import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;
import java.io.PrintWriter;


@WebServlet(value = "/home",
        initParams = @WebInitParam(name="name", value="Tiger")
)
public class HomeServlet extends HttpServlet {


    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        welcome(req, resp);
    }

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        welcome(req, resp);
    }

    private void welcome(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        HttpSession session  = req.getSession();
        String loggedUser = (String) session.getAttribute("user");
        Cookie ck[]= req.getCookies();
        for(int i=0;i<ck.length;i++) {
            String userCookieName = ck[i].getName();

            if (!userCookieName.equals("user")) continue;

            PrintWriter out = resp.getWriter();

            out.println(String.format(userCookieName));
            out.println(String.format("Welcome home %s!<br/>", ck[i].getValue()));

            ServletConfig ctx = getServletConfig();
            String nameStr = ctx.getInitParameter("name");
//            String phoneStr = ctx.getInitParameter("phone");
            out.println(nameStr);
//            out.println(phoneStr);

        }
    }

}
