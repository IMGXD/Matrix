package com.matrix.controller.portal;

import com.github.pagehelper.PageInfo;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Comment;
import com.matrix.service.ICommentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * 门户评论的Controller
 * <p/>
 * Created by yanglele on 2017/8/4.
 */
@Controller
@RequestMapping("/comment")
public class CommentController {

    @Autowired
    private ICommentService iCommentService;

    /**
     * 当前视频评论列表
     *
     * @param videoId 视频id
     * @return
     */
    @RequestMapping(value = "list.do")
    @ResponseBody
    public ServerResponse<PageInfo> list(Integer videoId,
                                         @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                         @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        return iCommentService.list(videoId, pageNum, pageSize);
    }

    /**
     * 发表评论
     *
     * @param comment 评论封装类
     * @return
     */
    @RequestMapping(value = "add.do")
    @ResponseBody
    public ServerResponse<Comment> add(Comment comment) {
        return iCommentService.add(comment);
    }

}
