package com.matrix.pojo;

import java.util.Date;

public class Favourite {
    private Integer id;

    private Integer userId;

    private Integer videoId;

    private Date createTime;

    private Date updateTime;

    public Favourite(Integer id, Integer userId, Integer videoId, Date createTime, Date updateTime) {
        this.id = id;
        this.userId = userId;
        this.videoId = videoId;
        this.createTime = createTime;
        this.updateTime = updateTime;
    }

    public Favourite() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
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
}