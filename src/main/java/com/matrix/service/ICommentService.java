package com.matrix.service;

import com.github.pagehelper.PageInfo;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Comment;

/**
 * 评论Service接口
 * <p/>
 * Created by yanglele on 2017/8/4.
 */
public interface ICommentService {

    /**
     * 当前视频评论列表
     *
     * @param videoId 视频id
     * @return
     */
    ServerResponse<PageInfo> list(Integer videoId, Integer pageNum, Integer pageSize);

    /**
     * 发表评论
     *
     * @param comment 评论封装类
     * @return
     */
    ServerResponse<Comment> add(Comment comment);
}
