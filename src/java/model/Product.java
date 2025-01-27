/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;

/**
 *
 * @author Asus
 */
public class Product {
    private int productId;
    private String productName;
    private int quantity;
    private String thumbnail;
    private Float price;
    // description
    private String des;
    private String manufacturer;
    private String status;
    private Date createAt;

    public Product() {
    }

    public Product(int productId, String productName, int quantity, String thumbnail, Float price, String des, String manufacturer, String status, Date createAt) {
        this.productId = productId;
        this.productName = productName;
        this.quantity = quantity;
        this.thumbnail = thumbnail;
        this.price = price;
        this.des = des;
        this.manufacturer = manufacturer;
        this.status = status;
        this.createAt = createAt;
    }
    
    

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getThumbnail() {
        return thumbnail;
    }

    public void setThumbnail(String thumbnail) {
        this.thumbnail = thumbnail;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getManufacturer() {
        return manufacturer;
    }

    public void setManufacturer(String manufacturer) {
        this.manufacturer = manufacturer;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getCreateAt() {
        return createAt;
    }

    public void setCreateAt(Date createAt) {
        this.createAt = createAt;
    }

    @Override
    public String toString() {
        return "Product{" + "productId=" + productId + ", productName=" + productName + ", quantity=" + quantity + ", thumbnail=" + thumbnail + ", price=" + price + ", des=" + des + ", manufacturer=" + manufacturer + ", status=" + status + ", createAt=" + createAt + '}';
    }
    
    
}
