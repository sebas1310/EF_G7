package com.example.ef_g7.Servlets;

import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "SessionServlet", urlPatterns = {"","/SessionServlet"})
public class SessionServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        RequestDispatcher requestDispatcher;
        if(action==null){
            RequestDispatcher view = request.getRequestDispatcher("index.jsp");
            view.forward(request,response);
        }
        else{
            switch (action){
                /*case "LogIn":
                    BUsuarios user = (BUsuarios) request.getSession().getAttribute("userlogged") ;

                    if(user != null && user.getIdUsuario() !=0){
                        response.sendRedirect(request.getContextPath());
                        System.out.println("aca?");
                    }
                    else {
                        requestDispatcher = request.getRequestDispatcher("inicioDeSesion.jsp");
                        requestDispatcher.forward(request, response);
                        System.out.println("aqui");
                    }
                    break;*/
                case "registro":
                    requestDispatcher = request.getRequestDispatcher("registro.jsp");
                    requestDispatcher.forward(request,response);
                    break;
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
