package com.matrix.dao;

import com.matrix.pojo.Label;

import java.util.List;

public interface LabelMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Label record);

    int insertSelective(Label record);

    Label selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Label record);

    int updateByPrimaryKey(Label record);

    /**
     * 查询所有标签
     *
     * @return
     */
    List<Label> queryAllLabels();
}