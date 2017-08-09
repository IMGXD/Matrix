package com.matrix.controller.portal;

import com.github.pagehelper.PageInfo;
import com.matrix.constants.Constant;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.User;
import com.matrix.pojo.Video;
import com.matrix.query.VideoQuery;
import com.matrix.service.IVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 门户视频的Controller
 * <p/>
 * Created by yanglele on 2017/7/31.
 */
@Controller
@RequestMapping("/video")
public class VideoController {

    @Autowired
    private IVideoService iVideoService;

    /**
     * 多条件分页查询视频，返回json
     *
     * @param videoQuery 查询集
     * @param pageNum    页码
     * @param pageSize   每页显示数量
     * @return json
     */
    @RequestMapping("queryVideoByParams.do")
    @ResponseBody
    public ServerResponse<PageInfo> queryVideoByParams(VideoQuery videoQuery,
                                                       @RequestParam(defaultValue = "1") Integer pageNum,
                                                       @RequestParam(defaultValue = "10") Integer pageSize) {
        return iVideoService.queryVideoByParams(videoQuery, pageNum, pageSize);
    }

    /**
     * 根据参数分页模糊查询视频，返回页面跳转
     *
     * @param videoQuery 查询集
     * @param pageNum    页码
     * @param pageSize   每页显示数量
     * @param model
     * @return
     */
    @RequestMapping("searchVideoByParams.do")
    public String queryVideoByParamsNoJson(VideoQuery videoQuery,
                                           @RequestParam(defaultValue = "1") Integer pageNum,
                                           @RequestParam(defaultValue = "10") Integer pageSize,
                                           Model model) {
        ServerResponse<PageInfo> response = iVideoService.queryVideoByParams(videoQuery, pageNum, pageSize);
        model.addAttribute("pageInfo", response);
        model.addAttribute("params", videoQuery);
        return "searchresult";
    }

    /**
     * 根据标题分页模糊查询视频
     *
     * @param videoQuery 查询集
     * @param pageNum    页码
     * @param pageSize   每页显示数量
     * @return json
     */
    @RequestMapping("queryVideoByTitle.do")
    @ResponseBody
    public ServerResponse<PageInfo> queryVideoByTitle(VideoQuery videoQuery,
                                                      @RequestParam(defaultValue = "1") Integer pageNum,
                                                      @RequestParam(defaultValue = "10") Integer pageSize) {
        return iVideoService.queryVideoByParams(videoQuery, pageNum, pageSize);
    }



    /**
     * 跳转到播放页面
     *
     * @param id    视频id
     * @param model
     * @return
     */
    @RequestMapping("videoPlayer.do")
    public String queryVideoByIdNoJson(@RequestParam(value = "id") Integer id,
                                       Model model) {
        ServerResponse<Video> response = iVideoService.queryVideoById(id);
        model.addAttribute("videoInfo", response);
        return "videoplayer";
    }

    /**
     * 根据视频id查询视频详情
     *
     * @param id 视频id
     * @return json
     */
    @RequestMapping("queryVideoById.do")
    @ResponseBody
    public ServerResponse<Video> queryVideoById(@RequestParam(value = "id") Integer id) {
        return iVideoService.queryVideoById(id);
    }

    /**
     * 推荐视频列表
     *
     * @param remark 标签id
     * @return
     */
    @RequestMapping("recommendList.do")
    @ResponseBody
    public ServerResponse<List<Video>> recommendList(Integer remark) {
        return iVideoService.recommendList(remark);
    }

    /**
     * 视频或图片上传
     *
     * @param request
     * @param type    上传类型(video OR image)
     * @return
     */
    @RequestMapping("uploadFile.do")
    @ResponseBody
    public ServerResponse<String> uploadFile(HttpServletRequest request, String type) {
        MultipartHttpServletRequest mr = (MultipartHttpServletRequest) request;
        return iVideoService.uploadFile(mr, type, request.getSession());
    }

    /**
     * 上传视频
     *
     * @param video   视频封装类
     * @param session
     * @return
     */
    @RequestMapping("add.do")
    @ResponseBody
    public ServerResponse<String> add(Video video, HttpSession session) {
        User user = (User) session.getAttribute(Constant.CURRENT_USER);
        video.setUserId(user.getId());
        return iVideoService.add(video);
    }
}
