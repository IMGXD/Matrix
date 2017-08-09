package com.matrix.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.matrix.constants.Constant;
import com.matrix.constants.ResponseCode;
import com.matrix.dao.VideoMapper;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Video;
import com.matrix.query.VideoQuery;
import com.matrix.service.IVideoService;
import com.matrix.utils.UUIDUtil;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpSession;
import java.io.File;
import java.util.Date;
import java.util.List;

/**
 * 视频Service实现类
 * <p/>
 * Created by yanglele on 2017/7/31.
 */
@Service
public class VideoServiceImpl implements IVideoService {

    @Autowired
    private VideoMapper videoMapper;

    @Override
    public ServerResponse<PageInfo> queryVideoByParams(VideoQuery videoQuery, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<Video> videos = videoMapper.queryVideosByParams(videoQuery);
        if (null == videos || videos.size() == 0) {
            return ServerResponse.createByErrorMessage("此视频暂不存在");
        }
        return ServerResponse.createBySuccess(new PageInfo(videos));
    }

    @Override
    public ServerResponse<Video> queryVideoById(Integer id) {
        if (null == id) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(), "参数错误");
        }
        Video video = videoMapper.selectByPrimaryKey(id);
        if (null == video) {
            return ServerResponse.createByErrorMessage("此视频暂不存在");
        }
        return ServerResponse.createBySuccess(video);
    }

    @Override
    public ServerResponse<String> del(Integer videoId) {
        if (null == videoId) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(), "参数错误");
        }
        int resultCount = videoMapper.deleteByPrimaryKey(videoId);
        if (resultCount < 1) {
            return ServerResponse.createByErrorMessage("视频不存在");
        }
        return ServerResponse.createByErrorMessage("删除成功");
    }

    @Override
    public ServerResponse<String> updateVideoInfo(Video video) {
        if (null == video.getId()) {
            return ServerResponse.createByErrorMessage("所要更新的视频不存在");
        }
        int updateCount = videoMapper.updateByPrimaryKeySelective(video);
        if (updateCount < 1) {
            return ServerResponse.createByErrorMessage("更新视频信息失败");
        }
        return ServerResponse.createBySuccessMessage("更新视频信息成功");
    }

    @Override
    public ServerResponse<List<Video>> recommendList(Integer remark) {
        if (null == remark) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(), "参数错误");
        }
        List<Video> videoList = videoMapper.queryByRemark(remark);
        if (null == videoList || videoList.size() == 0) {
            return ServerResponse.createByErrorMessage("暂无此标签的视频");
        }
        return ServerResponse.createBySuccess(videoList);
    }

    @Override
    public ServerResponse<String> add(Video video) {
        video.setCreateTime(new Date());
        video.setUpdateTime(new Date());
        int resuleCount = videoMapper.insertSelective(video);
        if (resuleCount < 1) {
            return ServerResponse.createByErrorMessage("上传视频失败");
        }
        return ServerResponse.createBySuccessMessage("上传视频成功");
    }

    @Override
    public ServerResponse<String> checkValid(String str, String type) {
        if (StringUtils.isNotBlank(type)) {
            //开始校验
            if (!Constant.IMAGE.equals(type) && !Constant.VIDEO.equals(type)) {
                return ServerResponse.createByErrorMessage("参数错误");
            }
        } else {
            return ServerResponse.createByErrorMessage("参数错误");
        }
        return ServerResponse.createBySuccessMessage("校验成功");
    }

    @Override
    public ServerResponse<String> uploadFile(MultipartHttpServletRequest mr, String type, HttpSession session) {
        ServerResponse<String> validResponse = checkValid(null, type);
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        MultipartFile multipartFile = mr.getFile("file");
        if (null != multipartFile && !multipartFile.isEmpty()) {
            //　确定上传路径
            String basePath = ("upload" + File.separator + type);
            String updatePath = session.getServletContext().getRealPath(basePath);
            File file = new File(updatePath);
            if (!file.exists()) {
                file.mkdirs();
            }

            String fileName = multipartFile.getOriginalFilename();
            // 新文件名
            String newfileName = UUIDUtil.getUUID() + fileName.substring(fileName.indexOf("."));
            try {
                // 上传操作
                multipartFile.transferTo(new File(updatePath, newfileName));
                return ServerResponse.createBySuccess("上传成功", basePath + File.separator + newfileName);
            } catch (Exception e) {
                e.printStackTrace();
                return ServerResponse.createByErrorMessage("上传失败");
            }
        }
        return ServerResponse.createByErrorMessage("上传失败");
    }

    @Override
    public ServerResponse<String> onSale(Integer videoId) {
        if (null == videoId) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(), "参数错误");
        }

        // 查询有无此视频
        Integer statusCode = videoMapper.selectStatusByVideoId(videoId);
        if (null == statusCode) {
            return ServerResponse.createByErrorMessage("视频不存在");
        }

        // 有的话status是否是1
        if (statusCode == 1) {
            // 如果是1 已上架
            return ServerResponse.createByErrorMessage("视频已上架");
        }

        // 否则改 1
        int updateCount = videoMapper.updateVideoStatusByVideoId(videoId,
                Constant.VideoStatusEnum.ON_SALE.getCode());
        if (updateCount < 1) {
            return ServerResponse.createByErrorMessage("上架失败");
        }
        return ServerResponse.createByErrorMessage("上架成功");
    }

    @Override
    public ServerResponse<String> soldOut(Integer videoId) {
        if (null == videoId) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(), "参数错误");
        }

        // 查询有无此视频
        Integer statusCode = videoMapper.selectStatusByVideoId(videoId);
        if (null == statusCode) {
            return ServerResponse.createByErrorMessage("视频不存在");
        }

        // 有的话status是否是2
        if (statusCode == 2) {
            // 如果是2 已下架
            return ServerResponse.createByErrorMessage("视频已下架");
        }

        // 否则改 2
        int updateCount = videoMapper.updateVideoStatusByVideoId(videoId,
                Constant.VideoStatusEnum.SOLD_OUT.getCode());
        if (updateCount < 1) {
            return ServerResponse.createByErrorMessage("下架失败");
        }
        return ServerResponse.createByErrorMessage("下架成功");
    }

}
