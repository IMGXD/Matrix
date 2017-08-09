package com.matrix.dao;

import com.matrix.pojo.Tip;

public interface TipMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Tip record);

    int insertSelective(Tip record);

    Tip selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Tip record);

    int updateByPrimaryKey(Tip record);
}