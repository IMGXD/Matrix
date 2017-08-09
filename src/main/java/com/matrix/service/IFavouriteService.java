package com.matrix.service;

import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Video;

import java.util.List;

/**
 * 收藏Service接口
 *
 * Created by yanglele on 2017/8/3.
 */
public interface IFavouriteService {

    /**
     * 收藏视频
     *
     * @param userId  用户id
     * @param videoId 视频id
     * @return
     */
    ServerResponse<String> add(Integer userId, Integer videoId);

    /**
     * 删除视频
     *
     * @param favouriteId 收藏id
     * @param userId      用户id
     * @param videoId     视频id
     * @return
     */
    ServerResponse<String> del(Integer favouriteId, Integer userId, Integer videoId);

    /**
     * 用户收藏视频列表
     *
     * @param userId 用户id
     * @return
     */
    ServerResponse<List<Video>> list(Integer userId);
}
