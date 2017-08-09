package com.matrix.dao;

import com.matrix.pojo.Video;
import com.matrix.query.VideoQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface VideoMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Video record);

    int insertSelective(Video record);

    Video selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Video record);

    int updateByPrimaryKey(Video record);

    /**
     * 多条件查询视频
     *
     * @param videoQuery 查询集
     * @return 视频集合
     */
    List<Video> queryVideosByParams(VideoQuery videoQuery);

    /**
     * 根据标签id查询视频
     *
     * @param remark 标签id
     * @return
     */
    List<Video> queryByRemark(Integer remark);

    /**
     * 根据视频id查询视频记录
     *
     * @param videoId 视频id
     * @return
     */
    int checkVideoId(Integer videoId);

    /**
     * 更改视频状态
     *
     * @param id     视频id
     * @param status 状态码 (视频状态.1-可看 2-下架 3-删除)
     * @return
     */
    int updateVideoStatusByVideoId(@Param(value = "id") Integer id,
                                   @Param(value = "status") Integer status);

    /**
     * 查询用户收藏的视频
     *
     * @param userId 用户id
     * @return
     */
    List<Video> selectFavouriteVideosByUserId(@Param(value = "userId") Integer userId,
                                              @Param(value = "status") Integer status);

    /**
     * 根据视频id查询视频状态
     *
     * @param videoId 视频id
     * @return
     */
    Integer selectStatusByVideoId(Integer videoId);
}