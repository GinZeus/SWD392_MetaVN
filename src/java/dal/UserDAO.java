/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.User;

/**
 *
 * @author datng
 */
public class UserDAO extends BaseDAO {

    public User getAccountToAccess(String username, String password) {

        try {
            String sql = "select * from [User] where [username] = ? AND [password]= ?";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, username);
            statement.setString(2, password);

            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                User usr = new User(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getInt(9),
                    rs.getDate(10)
                );
                return usr;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public User getUserInfo(String usrID) {
        try {
            String sql = "select * from [User] where [user_id] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, usrID);

            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                User usr = new User(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getInt(9),
                    rs.getDate(10)
                );
                return usr;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public User getUserByUsername(String username) {
        try {
            String sql = "select * from [User] where [username] = ?";
            PreparedStatement statement = connection.prepareStatement(sql);

            statement.setString(1, username);

            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                User usr = new User(
                    rs.getInt(1),
                    rs.getString(2),
                    rs.getString(3),
                    rs.getString(4),
                    rs.getString(5),
                    rs.getString(6),
                    rs.getString(7),
                    rs.getString(8),
                    rs.getInt(9),
                    rs.getDate(10)
                );
                return usr;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    public void EditProfile(String fullname, String address , String phone, String username) {
        PreparedStatement stm;
        ResultSet rs;
        String sql = "UPDATE [dbo].[User]\n"
                + "   SET [fullname] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[phone_number] = ?\n"
                + "     \n"
                + " WHERE [username]= ? ";
        try {
            stm = connection.prepareStatement(sql);
            stm.setString(1, fullname);
            stm.setString(2, address);
            stm.setString(3, phone);
            stm.setString(4, username);
            stm.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        } finally {

        }
    }
    public static void main(String[] args) {
        String username = "john_doe";
        String password ="pass123";
        UserDAO dao = new UserDAO();
        User usr = dao.getUserByUsername("john_doe");
        System.out.println(usr);
        
    }
}
