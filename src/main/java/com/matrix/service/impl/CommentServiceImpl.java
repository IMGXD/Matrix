package com.matrix.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.matrix.constants.Constant;
import com.matrix.constants.ResponseCode;
import com.matrix.dao.CommentMapper;
import com.matrix.dao.UserMapper;
import com.matrix.dao.VideoMapper;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Comment;
import com.matrix.service.ICommentService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 评论Service实现类
 * <p/>
 * Created by yanglele on 2017/8/4.
 */
@Service
public class CommentServiceImpl implements ICommentService {

    @Autowired
    private CommentMapper commentMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private VideoMapper videoMapper;

    @Override
    public ServerResponse<PageInfo> list(Integer videoId, Integer pageNum, Integer pageSize) {
        if (null == videoId) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),
                    ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }
        // 按照创建时间降序排序，后面改进。
        PageHelper.startPage(pageNum, pageSize, Constant.CREATE_TIME + Constant.DESC);
        List<Comment> commentList = commentMapper.selectByVideoId(videoId);
        if (null == commentList || commentList.size() == 0) {
            return ServerResponse.createByErrorMessage("暂无评论");
        }
        return ServerResponse.createBySuccess(new PageInfo(commentList));
    }

    @Override
    public ServerResponse<Comment> add(Comment comment) {
        // 校验是否为空
        if (null == comment.getUserId() || null == comment.getVideoId() || StringUtils.isBlank(comment.getContent())) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),
                    ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }

        // 查询有无此用户
        int checkUserCount = userMapper.checkUserId(comment.getUserId());
        if (checkUserCount < 1) {
            return ServerResponse.createByErrorMessage("发表评论的用户不存在");
        }

        // 查询有无此视频
        int checkVideoCount = videoMapper.checkVideoId(comment.getVideoId());
        if (checkVideoCount < 1) {
            return ServerResponse.createByErrorMessage("发表评论的视频不存在");
        }

        // 添加评论
        comment.setCreateTime(new Date());
        comment.setUpdateTime(new Date());
        int insertCount = commentMapper.insert(comment);
        if (insertCount < 1) {
            return ServerResponse.createByErrorMessage("发表评论失败");
        }

        return ServerResponse.createBySuccessMessage("发表评论成功");
    }
}
