package com.matrix.pojo;

import java.util.Date;

public class Video {
    private Integer id;

    private Integer categoryId;

    private String title;

    private String detail;

    private String url;

    private Integer remark;

    private String image;

    private Integer status;

    private Date createTime;

    private Date updateTime;

    private Integer userId;

    public Video(Integer id, Integer categoryId, String title, String detail, String url, Integer remark, String image, Integer status, Date createTime, Date updateTime, Integer userId) {
        this.id = id;
        this.categoryId = categoryId;
        this.title = title;
        this.detail = detail;
        this.url = url;
        this.remark = remark;
        this.image = image;
        this.status = status;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.userId = userId;
    }

    public Video() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(Integer categoryId) {
        this.categoryId = categoryId;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail == null ? null : detail.trim();
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    public Integer getRemark() {
        return remark;
    }

    public void setRemark(Integer remark) {
        this.remark = remark;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image == null ? null : image.trim();
    }

    public Integer getStatus() {
        return status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

}