package com.example.ef_g7.Daos;

import com.example.ef_g7.Beans.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegistroInicioDao extends DaoBase {
    public void guardar(User user){
        String sql = "INSERT INTO usuarios (nombre,apellido,correo,password,tipousuario) VALUES (?,?,?,sha2(?,512),?)";

        try(Connection connection = this.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql)){

            pstmt.setString(1, user.getNombre());
            pstmt.setString(2, user.getApellido());
            pstmt.setString(3, user.getCorreo());
            pstmt.setString(4, user.getPassword());
            pstmt.setString(5, user.getTipoUsuario());
            pstmt.executeUpdate();

        } catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
    public boolean validmail(String mail){
        String sql = "select correo from usuarios where correo = ?";

        try(Connection connection = this.getConnection();
            PreparedStatement pstmt = connection.prepareStatement(sql);) {
            pstmt.setString(1,mail);
            int flag = 0;
            try(ResultSet rs = pstmt.executeQuery()){
                while (rs.next()){
                    if(mail.equals(rs.getString(1))){
                        flag=1;
                        break;
                    }
                }
                if (flag==0){
                    return true;
                }
                else{
                    return false;
                }
            }
        }
        catch(SQLException e){
            throw new RuntimeException(e);
        }
    }
}

