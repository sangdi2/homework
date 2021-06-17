package servlet;


import com.sun.deploy.cache.CacheEntry;
import utils.MysqlConnection;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class RegisterServlet {
  /*  public String un;
    public String pwd;
    public String pwd2;
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        un=req.getParameter("username");
        pwd=req.getParameter("password");
        pwd2=req.getParameter("password");
    }*/
    public boolean checkRegistry(ArrayList list){
        String user = (String)list.get(0);
        String password = (String)list.get(1);
        String password1=(String) list.get(2);
        boolean rt = false;
        try {
            Connection conn = MysqlConnection.getConnection();
            Statement statement = conn.createStatement();
            ResultSet result = statement.executeQuery("select username from table_name where username='" + user + "'");
            /*HashMap<String,String> hm = new HashMap();
            while(result.next())
            {
                hm.put(result.getString("username"), result.getString("password"));
            }*/

            //Set<String> set = hm.keySet();
            //Iterator it = set.iterator();
            if (result.next()) {
                System.out.println("error...........");
            } else {
                //if(password1.equals(password)) {
                    statement.executeUpdate("insert into table_name (username,password)values('" + user + "','" + password + "')");
                    rt=true;
                    return rt;
                    //break;
                //}
            }
            //MysqlConnection.release(statement,conn,result);
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return rt;
    }

}
