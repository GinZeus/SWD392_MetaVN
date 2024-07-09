/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Feedback;

/**
 *
 * @author datng
 */
public class FeedbackDAO extends BaseDAO{
    public ArrayList<Feedback> getFeedbackFromPid(String p_id) {
        ArrayList<Feedback> list = new ArrayList<>();

        try {
            String sql = "  select * from Feedback where status = 'approved' and p_id = ?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, p_id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFeedbackId(rs.getInt("fb_id"));
                f.setUserId(rs.getInt("user_id"));
                f.setProductId(rs.getInt("p_id"));
                f.setContent(rs.getNString("content"));
                f.setStatus(rs.getString("status"));
                f.setUpdateAt(rs.getDate("updateAt"));
                list.add(f);
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public Feedback getFeedbackProFromUid(String p_id, int u_id) {
        try {
            String sql = "select * from Feedback where p_id = ? and user_id = ? and status = 'approved'";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, p_id);
            statement.setInt(2, u_id);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Feedback f = new Feedback();
                f.setFeedbackId(rs.getInt("fb_id"));
                f.setUserId(rs.getInt("user_id"));
                f.setProductId(rs.getInt("p_id"));
                f.setContent(rs.getNString("content"));
                f.setStatus(rs.getString("status"));
                f.setUpdateAt(rs.getDate("updateAt"));
                return f;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void postFeedback(int usr_id, String pid, String content) {
        try {
            String sql = "insert into [Feedback]"
                    + "(user_id,p_id,content,status,updateAt)"
                    + " values(?,?,?,'approved',GETDATE())";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, usr_id);
            statement.setString(2, pid);
            statement.setString(3, content);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
