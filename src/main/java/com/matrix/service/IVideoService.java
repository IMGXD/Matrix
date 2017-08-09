package com.matrix.service;

import com.github.pagehelper.PageInfo;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Video;
import com.matrix.query.VideoQuery;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * 视频Service接口
 * <p/>
 * Created by yanglele on 2017/7/31.
 */
public interface IVideoService {
    /**
     * 多个条件分页查询视频
     *
     * @param videoQuery 查询集
     * @param pageNum    页码
     * @param pageSize   每页显示数量
     * @return Json
     */
    ServerResponse<PageInfo> queryVideoByParams(VideoQuery videoQuery, Integer pageNum, Integer pageSize);

    /**
     * 根据视频id查询视频详情
     *
     * @param id 视频id
     * @return
     */
    ServerResponse<Video> queryVideoById(Integer id);

    /**
     * 删除视频
     *
     * @param videoId 视频id
     * @return
     */
    ServerResponse<String> del(Integer videoId);

    /**
     * 修改视频信息
     *
     * @param video 视频Video
     * @return
     */
    ServerResponse<String> updateVideoInfo(Video video);

    /**
     * 根据标签查询视频列表
     *
     * @param remark
     * @return
     */
    ServerResponse<List<Video>> recommendList(Integer remark);

    /**
     * 上传视频
     *
     * @param video 视频封装类
     * @return
     */
    ServerResponse<String> add(Video video);

    /**
     * 检查视频相关属性是否有效
     * 如：str可以是image地址可以是video地址。对应的type是image和video
     *
     * @param str  被检查的数据
     * @param type 被检查的数据的类型
     * @return
     */
    ServerResponse<String> checkValid(String str, String type);

    /**
     * 视频或图片上传
     *
     * @param mr
     * @param type    上传类型(video OR image)
     * @param session
     * @return
     */
    ServerResponse<String> uploadFile(MultipartHttpServletRequest mr, String type, HttpSession session);

    /**
     * 上架视频
     *
     * @param videoId 视频id
     * @return
     */
    ServerResponse<String> onSale(Integer videoId);

    /**
     * 下架视频
     *
     * @param videoId 视频id
     * @return
     */
    ServerResponse<String> soldOut(Integer videoId);

}
