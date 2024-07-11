/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
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
    
    public List<Product> getProductList() {

        try {
            List<Product> list = new ArrayList<>();
            String sql = "SELECT *"
                    + "  FROM [Product]";
            PreparedStatement statement = connection.prepareStatement(sql);
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
                list.add(s);
            }
            return list;
        } catch (SQLException ex) {
            Logger.getLogger(ProductDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void addProduct(String productName, int quantity, String thumbnail, float price, String des, String manufacturer, String status, LocalDateTime createdAt) {
        PreparedStatement stm = null;
        try {
            String sql = "INSERT INTO [Product] ( product_name, quantity, thumbnail, price, des, manufacturer, status, createAt) VALUES ( ?, ?, ?, ?, ?, ?, ?, ?);";
            stm = connection.prepareStatement(sql);
            //stm.setInt(1, productId);
            stm.setString(1, productName);
            stm.setInt(2, quantity);
            stm.setString(3, thumbnail);
            stm.setFloat(4, price);
            stm.setString(5, des);
            stm.setString(6, manufacturer);
            stm.setString(7, status);
            stm.setTimestamp(8, Timestamp.valueOf(createdAt));
            stm.executeUpdate();
        } catch (Exception e) {
            e.printStackTrace(); // Log the exception
        } 
    }
    
    public void deleteProduct(int productId) {
        PreparedStatement stm;
        ResultSet rs;
        try {
            String sql = "DELETE FROM [Product] where p_id = ?";
            stm = connection.prepareStatement(sql);
            stm.setInt(1, productId);
            stm.executeUpdate();
        } catch (Exception e) {
        }

    }

    public static void main(String[] args) {
        ProductDAO dao = new ProductDAO();
//        Product p = dao.getProductByID("1");
//        List<Product> list = dao.getProductList();
        LocalDateTime now = LocalDateTime.now();
        dao.addProduct( "test", 0, "test", 0, "test", "test", "test", now);
        //dao.deleteProduct(12);
        //System.out.println(list);
    }
}
