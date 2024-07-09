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

/**
 *
 * @author datng
 */
public class OrderDAO extends BaseDAO{
    public boolean checkUserBuyPro(int user_id, String p_id) {
        try {
            String sql = "select * from [Order] o, [OrderDetails] od\n"
                    + "  where o.order_id=od.order_id\n"
                    + "  and o.user_id = ?\n"
                    + "  and od.p_id = ?\n";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setInt(1, user_id);
            statement.setString(2, p_id);
            ResultSet rs = statement.executeQuery();
            if (rs.next()) {
                return true;
            }
        } catch (SQLException ex) {
            Logger.getLogger(OrderDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    public static void main(String[] args) {
        OrderDAO dao = new OrderDAO();
        boolean check = dao.checkUserBuyPro(3, "1");
        System.out.println(check);
    }
}
