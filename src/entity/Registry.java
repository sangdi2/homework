package entity;

import com.opensymphony.xwork2.ActionSupport;
import servlet.Register;

import java.util.ArrayList;

public class Registry extends ActionSupport {
    private String username;
    private String password;
    private String password1;

    public String getPassword1() {
        return password1;
    }

    public void setPassword1(String password1) {
        this.password1 = password1;
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

    public String execute() throws Exception {
       /* HttpServletRequest req = null;
        String un=req.getParameter("username");
        String pw=req.getParameter("password");
        String pw2=req.getParameter("password");*/
        // TODO Auto-generated method stub
        ArrayList<String> userList = new ArrayList<String>();
        userList.add(username);
        userList.add(password);
        userList.add(password1);
        Register registerServlet = new Register();
        boolean mark = registerServlet.checkRegistry(userList);
        if(mark) return "success";
        else return "error";
    }
}
