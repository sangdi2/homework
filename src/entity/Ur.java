package entity;


import com.opensymphony.xwork2.ActionSupport;
import servlet.Login;

import java.util.ArrayList;

public class Ur extends ActionSupport {
    private int id;
    private String username;
    private String password;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public Ur(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
    }

    public Ur() {
    }
    public String execute() throws Exception {
        // TODO Auto-generated method stub
        ArrayList<String> userList = new ArrayList<String>();
        userList.add(username);
        userList.add(password);
        Login login = new Login();
        boolean mark = login.checkLogin(userList);
        if(mark) return "success";
        else return "error";
    }

   /* public String execute(){
        if(getUsername().equals("liang")&& getPassword().equals("liang")){
            return "success";
        }
        return "error";
    }*/
}
