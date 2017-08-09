package com.matrix.dao;

import com.matrix.pojo.Favourite;
import org.apache.ibatis.annotations.Param;

public interface FavouriteMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Favourite record);

    int insertSelective(Favourite record);

    Favourite selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Favourite record);

    int updateByPrimaryKey(Favourite record);

    /**
     * 根据相应id查询收藏的视频
     *
     * @param favouriteId 收藏id
     * @param userId      用户id
     * @param videoId     视频id
     * @return
     */
    int checkUserIdAndVideoIdByFavouriteId(@Param(value = "favouriteId") Integer favouriteId,
                                           @Param(value = "userId") Integer userId,
                                           @Param(value = "videoId") Integer videoId);
}