package com.matrix.service.impl;

import com.matrix.constants.Constant;
import com.matrix.constants.ResponseCode;
import com.matrix.dao.FavouriteMapper;
import com.matrix.dao.VideoMapper;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Favourite;
import com.matrix.pojo.Video;
import com.matrix.service.IFavouriteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 收藏Service实现类
 * <p/>
 * Created by yanglele on 2017/8/3.
 */
@Service
public class FavouriteServiceImpl implements IFavouriteService {

    @Autowired
    private FavouriteMapper favouriteMapper;

    @Autowired
    private VideoMapper videoMapper;

    @Override
    public ServerResponse<String> add(Integer userId, Integer videoId) {
        if (null == userId || null == videoId) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),
                    ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }

        int resuleCount = videoMapper.checkVideoId(videoId);
        // 查询结果小于1时（失败）
        if (resuleCount < 1) {
            return ServerResponse.createByErrorMessage("收藏的视频不存在");
        }

        // 封装成新的收藏类
        Favourite newFavourite = new Favourite();
        newFavourite.setVideoId(videoId);
        newFavourite.setUserId(userId);
        newFavourite.setCreateTime(new Date());
        newFavourite.setUpdateTime(new Date());

        // 插入新的数据
        int insertCount = favouriteMapper.insert(newFavourite);

        // 插入结果小于1时（失败）
        if (insertCount < 1) {
            return ServerResponse.createByErrorMessage("收藏视频失败");
        }

        // 成功
        return ServerResponse.createBySuccess("收藏视频成功");
    }

    @Override
    public ServerResponse<String> del(Integer favouriteId, Integer userId, Integer videoId) {
        if (null == favouriteId || null == userId || null == videoId) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),
                    ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }

        int resultCount = favouriteMapper.checkUserIdAndVideoIdByFavouriteId(favouriteId, userId, videoId);
        // 查询结果小于1时（失败）
        if (resultCount < 1) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),
                    ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }
        int deleteCount = favouriteMapper.deleteByPrimaryKey(favouriteId);
        // 删除结果小于1时（失败）
        if (deleteCount < 1) {
            return ServerResponse.createByErrorMessage("删除视频失败");
        }

        // 成功
        return ServerResponse.createBySuccess("删除视频成功");
    }

    @Override
    public ServerResponse<List<Video>> list(Integer userId) {
        if (null == userId) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),
                    ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }

        // 查询在上架的视频列表
        List<Video> videos = videoMapper.selectFavouriteVideosByUserId(userId,
                Constant.VideoStatusEnum.ON_SALE.getCode());

        // 查询结果为空时
        if (null == videos || videos.size() == 0) {
            return ServerResponse.createByErrorMessage("无收藏视频记录");
        }

        // 成功
        return ServerResponse.createBySuccess(videos);
    }

}
