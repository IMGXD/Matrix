package com.matrix.service;

import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Category;

import java.util.List;

/**
 * 分类Service接口
 *
 * Created by yanglele on 2017/8/2.
 */
public interface ICategoryService {

    /**
     * 分类列表
     *
     * @return
     */
    ServerResponse<List<Category>> list();

}
