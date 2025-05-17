/*
     * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
     * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import Utils.UserDAO;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import model.User;

@WebServlet(name = "LoginController", urlPatterns = {"/LoginController"})
public class LoginController extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
        String email = req.getParameter("email");
        if (email != null) {
            email = email.trim();
        }

        String password = req.getParameter("password");
        if (password != null) {
            password = password.trim();
        }

        System.out.println("EMAIL NHẬP VÀO: " + email);
        System.out.println("PASSWORD NHẬP VÀO: " + password);

        User user = UserDAO.checkLogin(email, password);
        System.out.println("User object: " + user);

        if (user != null) {
            HttpSession session = req.getSession();
            session.setAttribute("user", user);
            resp.sendRedirect("View/Home.jsp");
        } else {
            req.setAttribute("error", "Wrong user name or password!");
            req.getRequestDispatcher("View/Login.jsp").forward(req, resp);
        }
    }

}
