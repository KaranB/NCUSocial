/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpSession;
import dbase.login;
import classes.userClass;
/**
 *
 * @author dbhrockzz
 */
public class loginservlet extends HttpServlet {

    private final String userID = "admin";
    private final String password = "password";
    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter p = response.getWriter();
        String email = request.getParameter("Username");
        String pass = request.getParameter("Password");
        System.out.println(email);
        System.out.println(pass);
        request.setAttribute("loginResult", "false");
        try{
            if(login.checkCredentials(email,pass))
            {
                                                HttpSession session = request.getSession();
		session.setAttribute("user",email);
		session.setMaxInactiveInterval(30*60);
		Cookie userName = new Cookie("user", email);
		userName.setMaxAge(30*60);
		response.addCookie(userName);
		request.setAttribute("loginResult", "false");
                response.sendRedirect("mainpage.jsp");
                userClass usr = new userClass(email);
                request.setAttribute("user", usr);
                RequestDispatcher rd = request.getRequestDispatcher("mainpage.jsp");
                rd.forward(request, response);

            }
            else
            {
                request.setAttribute("loginResult", "true");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
                //response.sendRedirect("index.jsp");
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        p.println("</body>");
        p.println("</html>");
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
