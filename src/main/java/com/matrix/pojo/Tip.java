package com.matrix.pojo;

import java.util.Date;

public class Tip {
    private Integer id;

    private Integer userId;

    private String content;

    private Date createTime;

    private Date updateTime;

    private Integer videoId;

    private Date postTime;

    public Tip(Integer id, Integer userId, String content, Date createTime, Date updateTime, Integer videoId, Date postTime) {
        this.id = id;
        this.userId = userId;
        this.content = content;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.videoId = videoId;
        this.postTime = postTime;
    }

    public Tip() {
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

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
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

    public Integer getVideoId() {
        return videoId;
    }

    public void setVideoId(Integer videoId) {
        this.videoId = videoId;
    }

    public Date getPostTime() {
        return postTime;
    }

    public void setPostTime(Date postTime) {
        this.postTime = postTime;
    }
}