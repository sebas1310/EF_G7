package com.example.ef_g7.Daos;

import com.example.ef_g7.Beans.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class RegistroInicioDao extends DaoBase {
    public void guardar(User user){
        String sql = "INSERT INTO usuario (Nombre,Apellido,Correo,Codigo,DNI,Celular,Categoria,Rol_idRol,Contrasenia) VALUES (?,?,?,?,?,?,?,?,sha2(?,256))";

        try(Connection connection = this.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql)) {

            /*
            pstmt.setString(1, user.getNombre());
            pstmt.setString(2, user.getApellido());
            pstmt.setString(3, user.getCorreo());
            pstmt.setString(4, user.getCodigo());
            pstmt.setString(5, user.getDni());
            pstmt.setString(6, user.getCelular());
            switch (user.getCategoria()) {
                case "1":
                    pstmt.setString(7, "Alumno");
                    break;
                case "2":
                    pstmt.setString(7, "Profesor");
                    break;
                case "3":
                    pstmt.setString(7, "Jefe de practica");
                    break;
                case "4":
                    pstmt.setString(7, "Administrativo");
                    break;
            }
            pstmt.setInt(8, user.getRolId());
            pstmt.setString(9, user.getContrasena());
            */
            pstmt.executeUpdate();

        } catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
}

