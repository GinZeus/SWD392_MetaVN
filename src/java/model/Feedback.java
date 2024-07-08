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
    private Long feedbackId;
    private Long userId;
    private Long productId;
    private String content;
    private Integer status;
    private Date updateAt;

    public Feedback() {
    }

    public Feedback(Long feedbackId, Long userId, Long productId, String content, Integer status, Date updateAt) {
        this.feedbackId = feedbackId;
        this.userId = userId;
        this.productId = productId;
        this.content = content;
        this.status = status;
        this.updateAt = updateAt;
    }

    public Long getFeedbackId() {
        return feedbackId;
    }

    public void setFeedbackId(Long feedbackId) {
        this.feedbackId = feedbackId;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public Long getProductId() {
        return productId;
    }

    public void setProductId(Long productId) {
        this.productId = productId;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
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
