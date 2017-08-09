package com.matrix.controller.backend;

import com.github.pagehelper.PageInfo;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Video;
import com.matrix.query.VideoQuery;
import com.matrix.service.IVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * 后台视频的Controller
 * <p/>
 * Created by yanglele on 2017/8/1.
 */
@Controller
@RequestMapping("/manage/video")
public class VideoManageController {

    @Autowired
    private IVideoService iVideoService;

    /**
     * 多条件分页查询视频
     *
     * @param videoQuery 查询集
     * @param pageNum    页码
     * @param pageSize   每页显示数量
     * @return json
     */
    @RequestMapping("queryVideoByParams.do")
    @ResponseBody
    public ServerResponse<PageInfo> queryVideoByParams(VideoQuery videoQuery,
                                                       @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                                       @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize) {
        return iVideoService.queryVideoByParams(videoQuery, pageNum, pageSize);
    }

    /**
     * 多条件分页查询视频
     *
     * @param videoQuery 查询集
     * @param pageNum    页码
     * @param pageSize   每页显示数量
     * @param session
     * @return mv
     */
    @RequestMapping("list.do")
    public String list(VideoQuery videoQuery,
                       @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                       @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize,
                       HttpSession session) {
        ServerResponse<PageInfo> response = iVideoService.queryVideoByParams(videoQuery, pageNum, pageSize);
        session.setAttribute("videoList", response.getData().getList());
        return "redirect:/backstage/queryVideo.jsp";
    }

    /**
     * 根据视频id查询视频详情
     *
     * @param id 视频id
     * @return
     */
    @RequestMapping("queryVideoById.do")
    @ResponseBody
    public ServerResponse<Video> queryVideoById(Integer id) {
        return iVideoService.queryVideoById(id);
    }

    /**
     * 更新视频信息
     *
     * @param video 接收更新的数据
     * @return
     */
    @RequestMapping("updateVideoInfo.do")
    @ResponseBody
    public ServerResponse<String> updateVideoInfo(Video video) {
        return iVideoService.updateVideoInfo(video);
    }

    /**
     * 上架视频
     *
     * @param videoId 视频id
     * @return
     */
    @RequestMapping("onSale.do")
    @ResponseBody
    public ServerResponse<String> onSale(@RequestParam(value = "id") Integer videoId) {
        return iVideoService.onSale(videoId);
    }

    /**
     * 下架视频
     *
     * @param videoId 视频id
     * @return
     */
    @RequestMapping("soldOut.do")
    @ResponseBody
    public ServerResponse<String> soldOut(@RequestParam(value = "id") Integer videoId) {
        return iVideoService.soldOut(videoId);
    }

    /**
     * 删除视频
     *
     * @param videoId
     * @return
     */
    @RequestMapping("del.do")
    @ResponseBody
    public ServerResponse<String> del(@RequestParam(value = "id") Integer videoId) {
        return iVideoService.del(videoId);
    }
}
