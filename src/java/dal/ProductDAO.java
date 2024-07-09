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
import model.Product;

/**
 *
 * @author datng
 */
public class ProductDAO extends BaseDAO {

    public Product getProductByID(String pid) {

        try {
            String sql = "SELECT *"
                    + "  FROM [Product]"
                    + "WHERE status='active'"
                    + "and p_id=?";
            PreparedStatement statement = connection.prepareStatement(sql);
            statement.setString(1, pid);
            ResultSet rs = statement.executeQuery();
            while (rs.next()) {
                Product s = new Product();
                s.setProductId(rs.getInt("p_id"));
                s.setProductName(rs.getString("product_name"));
                s.setQuantity(rs.getInt("quantity"));
                s.setThumbnail(rs.getString("thumbnail"));
                s.setPrice(rs.getFloat("price"));
                s.setDes(rs.getString("des"));
                s.setManufacturer(rs.getString("manufacturer"));
                s.setCreateAt(rs.getDate("createAt"));
                s.setStatus(rs.getString("status"));
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
        Product p = dao.getProductByID("1");
        System.out.println(p);
    }
}
