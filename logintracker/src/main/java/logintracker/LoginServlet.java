package logintracker;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.GenericServlet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebServlet;

@WebServlet("/login")
public class LoginServlet extends GenericServlet {

    public void service(ServletRequest req, ServletResponse res) throws ServletException, IOException {
        String email = req.getParameter("email");
        String password = req.getParameter("password");

        User user = DatabaseOperations.checkLogin(email, password);

        if (user != null) {  
            req.setAttribute("username", user.getUsername());
            req.setAttribute("email", user.getEmail());
            req.setAttribute("designation", user.getDesignation());

            RequestDispatcher dispatcher = req.getRequestDispatcher("/Dashboardd.jsp");
            dispatcher.forward(req, res);
        } else {
            RequestDispatcher dispatcher = req.getRequestDispatcher("index.html");
            dispatcher.forward(req, res);
        }
    }
}
