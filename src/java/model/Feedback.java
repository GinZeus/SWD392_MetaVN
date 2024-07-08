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
public class Feedback {
    private int feedbackId;
    private int userId;
    private int productId;
    private String content;
    private String status;
    private Date updateAt;

    public Feedback() {
    }

    public Feedback(int feedbackId, int userId, int productId, String content, String status, Date updateAt) {
        this.feedbackId = feedbackId;
        this.userId = userId;
        this.productId = productId;
        this.content = content;
        this.status = status;
        this.updateAt = updateAt;
    }

    public int getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(int feedbackId) {
        this.feedbackId = feedbackId;
    }

    public int getUserId() {
        return userId;
    }

    public void setUserId(int userId) {
        this.userId = userId;
    }

    public int getProductId() {
        return productId;
    }

    public void setProductId(int productId) {
        this.productId = productId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public Date getUpdateAt() {
        return updateAt;
    }

    public void setUpdateAt(Date updateAt) {
        this.updateAt = updateAt;
    }

    @Override
    public String toString() {
        return "Feedback{" + "feedbackId=" + feedbackId + ", userId=" + userId + ", productId=" + productId + ", content=" + content + ", status=" + status + ", updateAt=" + updateAt + '}';
    }
    
    
}
