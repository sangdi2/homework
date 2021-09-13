package servlet;

import sql.MysqlConnection;
import java.io.IOException;
import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class Login   {


    public boolean checkLogin(ArrayList list)
    {
        String user = (String)list.get(0);
        String password = (String)list.get(1);
        boolean rt = false;

        try
        {

            Connection conn = MysqlConnection.getConnection();
            PreparedStatement p = conn.prepareStatement("select * from user ");
            ResultSet rs = p.executeQuery();
            HashMap<String,String> hm = new HashMap();
            while(rs.next())
            {
                hm.put(rs.getString("username"), rs.getString("password"));
            }
            MysqlConnection.release(p, conn,rs);
            Set<String> set = hm.keySet();
            Iterator it = set.iterator();
            while(it.hasNext())
            {
                if(it.next().equals(user))
                {

                    if(password.equals(hm.get(user)))
                    {
                        rt = true;
                        break;
                    }
                }
            }
        }
        catch(SQLException e)
        {
            System.out.println("数据库出问题");
        } catch (IOException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        return rt;
    }

}
