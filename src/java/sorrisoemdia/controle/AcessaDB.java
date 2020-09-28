/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package sorrisoemdia.controle;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author User
 */
public class AcessaDB {
    Connection con = null;
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost:3306/";
    String usuario = "root";
    String senha = "";
    
    public Connection conectaMySql(String db) throws SQLException
    {
        try {
            Class.forName(driver);
            try {
                con = (Connection) DriverManager.getConnection(url+db, usuario, senha);
            } catch (SQLException ex) {
                System.out.println("URL, Usuário ou Senha do DB incorretos.\n" + ex);
            }
        } catch (ClassNotFoundException ex) {
            System.out.println("O Driver para conexão não foi encontrado.\n" + ex);
        }
        
        return con;
    }
}
