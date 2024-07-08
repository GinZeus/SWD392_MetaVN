/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Asus
 */
public class OrderDetail {
    private int orderDetailId;
    private int orderId;
    private int productId;
    private int quantity;
    private Float total;

    public OrderDetail() {
    }

    public OrderDetail(int orderDetailId, int orderId, int productId, int quantity, Float total) {
        this.orderDetailId = orderDetailId;
        this.orderId = orderId;
        this.productId = productId;
        this.quantity = quantity;
        this.total = total;
    }

    public int getOrderDetailId() {
        return orderDetailId;
    }

    public void setOrderDetailId(int orderDetailId) {
        this.orderDetailId = orderDetailId;
    }

    public int getOrderId() {
        return orderId;
    }

    public void setOrderId(int orderId) {
        this.orderId = orderId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public Float getTotal() {
        return total;
    }

    public void setTotal(Float total) {
        this.total = total;
    }

    @Override
    public String toString() {
        return "OrderDetail{" + "orderDetailId=" + orderDetailId + ", orderId=" + orderId + ", productId=" + productId + ", quantity=" + quantity + ", total=" + total + '}';
    }
    
    
}
