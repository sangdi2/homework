package servlet;


import utils.MysqlConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class RegisterServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setCharacterEncoding("utf-8");
        Connection conn = null;
        Statement statement = null;
        ResultSet result = null;
        PrintWriter out = resp.getWriter();

        String un=req.getParameter("username");
        String pw=req.getParameter("password");
        String pw2=req.getParameter("password");
        try {
            conn = MysqlConnection.getInstance().getConnection();
            statement = conn.createStatement();
            result = statement.executeQuery("select username from table_name where username='" + un + "'");
            if (result.next()) {
                req.getRequestDispatcher("error.html").forward(req, resp);
            } else {
                if(pw.equals(pw2)) {
                    statement.executeUpdate("insert into table_name (username,password)values('" + un + "','" + pw + "')");
                    req.getRequestDispatcher("login.jsp").forward(req, resp);
                }else{
                    req.getRequestDispatcher("error.jsp").forward(req, resp);
                }
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
