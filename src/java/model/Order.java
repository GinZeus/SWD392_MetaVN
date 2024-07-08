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
public class Order {
    private Long orderId;
    private Long userId;
    private String fullname;
    private String phone;
    private String email;
    private String address;
    private String note;
    private Float total;
    private Integer status;
    private Date dateTime;

    public Order() {
    }

    public Order(Long orderId, Long userId, String fullname, String phone, String email, String address, String note, Float total, Integer status, Date dateTime) {
        this.orderId = orderId;
        this.userId = userId;
        this.fullname = fullname;
        this.phone = phone;
        this.email = email;
        this.address = address;
        this.note = note;
        this.total = total;
        this.status = status;
        this.dateTime = dateTime;
    }

    public Long getOrderId() {
        return orderId;
    }

    public void setOrderId(Long orderId) {
        this.orderId = orderId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public Float getTotal() {
        return total;
    }

    public void setTotal(Float total) {
        this.total = total;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getDateTime() {
        return dateTime;
    }

    public void setDateTime(Date dateTime) {
        this.dateTime = dateTime;
    }

    @Override
    public String toString() {
        return "Order{" + "orderId=" + orderId + ", userId=" + userId + ", fullname=" + fullname + ", phone=" + phone + ", email=" + email + ", address=" + address + ", note=" + note + ", total=" + total + ", status=" + status + ", dateTime=" + dateTime + '}';
    }
    
    
    
}
