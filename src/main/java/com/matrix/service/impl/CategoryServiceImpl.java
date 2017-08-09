package com.matrix.service.impl;

import com.matrix.dao.CategoryMapper;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Category;
import com.matrix.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 分类Service实现类
 * <p/>
 * Created by yanglele on 2017/8/2.
 */
@Service
public class CategoryServiceImpl implements ICategoryService {

    @Autowired
    private CategoryMapper categoryMapper;

    @Override
    public ServerResponse<List<Category>> list() {
        List<Category> categoryList = categoryMapper.selectAllCategory();

        // 分类列表为空时
        if (null == categoryList || categoryList.size() == 0) {
            return ServerResponse.createByErrorMessage("分类数据为空");
        }

        // 成功
        return ServerResponse.createBySuccess(categoryList);
    }
}
