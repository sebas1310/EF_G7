package com.example.ef_g7.Servlets;

import com.example.ef_g7.Beans.User;
import com.example.ef_g7.Daos.RegistroInicioDao;
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
        String action = request.getParameter("action");
        RegistroInicioDao ri = new RegistroInicioDao();
        switch (action){
            case"guardar":
                String nombre = request.getParameter("name");
                String apellido = request.getParameter("apellido");
                String correo = request.getParameter("correo");
                String password = request.getParameter("password");
                String password2 = request.getParameter("password2");
                String tipoUsuario = request.getParameter("tipo");
                if(ri.validmail(correo)){
                    if(password2.equals(password)){
                        User user = new User();
                        user.setNombre(nombre);
                        user.setApellido(apellido);
                        user.setPassword(password);
                        user.setCorreo(correo);
                        user.setTipoUsuario(tipoUsuario);
                        ri.guardar(user);
                        response.sendRedirect(request.getContextPath() + "/SessionServlet");
                    }
                    else{
                        request.getSession().setAttribute("msj","las contraseñas deben ser iguales");
                        response.sendRedirect(request.getContextPath()+"/SessionServlet?action=registro");
                    }
                }
                else{
                    request.getSession().setAttribute("msjmail","El correo ingresado ya esta en uso.");
                    response.sendRedirect(request.getContextPath()+"/SessionServlet?action=registro");
                }

        }

    }
}
