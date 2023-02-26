package tech.qiwei.learning.Filters;

import tech.qiwei.learning.Model.UserModel;

import javax.servlet.*;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;


public class AuthenticationFilter implements Filter {

    private static String DB_CONNECTION_URL = "jdbc:sqlserver://localhost;database=J2EEBasic;encrypt=true;trustServerCertificate=true";
    private static String DB_USERNAME  = "qiwei";
    private static String DB_PASSWORD = "qiwei123";

    @Override
    public void doFilter(ServletRequest req, ServletResponse resp, FilterChain chain) throws IOException, ServletException {

        String username = req.getParameter("username");
        String password = req.getParameter("password");

        HttpServletRequest sreq = (HttpServletRequest) req;
        HttpServletResponse sresp = (HttpServletResponse) resp;

        if (username == null || password == null || username.equals("") || password.equals("")) {
            redirectToLogin(sreq, sresp);
        } else {
            UserModel userModel = null;
            try {
                userModel = authenticate(username, password);
            } catch (ClassNotFoundException e) {
                throw new RuntimeException(e);
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
            if (userModel == null) {
                redirectToLogin(sreq, sresp);
                return;
            }
            HttpSession session = sreq.getSession();
            session.setAttribute("userModel",userModel);
            chain.doFilter(sreq, sresp);
        }

    }

    private UserModel authenticate(String username, String password) throws ClassNotFoundException, SQLException {
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String sql = "SELECT * FROM tb_user where username = ? AND password = ?";
        Connection con = DriverManager.getConnection(DB_CONNECTION_URL, DB_USERNAME, DB_PASSWORD);
        PreparedStatement pstmt = con.prepareStatement(sql);
        pstmt.setString(1, username);
        pstmt.setString(2, password);
        ResultSet rs = pstmt.executeQuery();
        if (rs.next()) {
            // If have results
            UserModel userModel = new UserModel(rs.getString("username"), rs.getString("password"));
            userModel.setUserId(rs.getString("user_id"));
            return userModel;
        }
        return null;
    }

    private void redirectToLogin(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        resp.sendRedirect(req.getContextPath()+"/login.jsp");
    }

}
