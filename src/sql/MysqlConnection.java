package sql;

import java.io.IOException;
import java.io.InputStream;
import java.sql.*;
import java.util.Properties;

public class MysqlConnection {
    /*private static MysqlConnection mysqlConnection=new MysqlConnection();
    public static Connection connection;
    public static MysqlConnection getInstance(){
        if(mysqlConnection==null){
            synchronized (MysqlConnection.class){
                if(mysqlConnection==null){
                    mysqlConnection=new MysqlConnection();
                }
            }
        }
        return mysqlConnection;
    }*/
    public static Connection getConnection() throws IOException, ClassNotFoundException, SQLException {
        /**
         * 步骤：
         *  1. 声明  driver、jdbcUrl、user、password 四个变量
         *  2. 新建 jdbc.properties 配置文件，使其在不改源码情况下，变更数据库
         *  3. 获取 jdbc.properties 文件参数，利用Java反射和输入流方式获取
         *  4. Class.forName(driver);加载驱动
         *  5. 获取连接实例
         */
        String driver =null;
        String jdbcUrl =null;
        String user =null;
        String password =null;

        InputStream inputStream = MysqlConnection.class.getClassLoader().getResourceAsStream("jdbc.properties");
        Properties properties = new Properties();
        properties.load(inputStream);
        driver = properties.getProperty("driver");
        jdbcUrl = properties.getProperty("jdbcUrl");
        user = properties.getProperty("user");
        password = properties.getProperty("password");
        Class.forName(driver);
        Connection conn = (Connection) DriverManager.getConnection(jdbcUrl, user, password);
        return conn;
    }
    public static void release(Statement statement, Connection conn, ResultSet result) {
        try {
            if (statement != null) {
                statement.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (conn != null) {
                conn.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        try {
            if (result != null) {
                result.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
/*class A{
    public static void main(String[] args) throws SQLException, IOException, ClassNotFoundException {
        MysqlConnection.getConnection();
    }
}*/
