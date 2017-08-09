package com.matrix.controller.portal;

import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Category;
import com.matrix.service.ICategoryService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 门户分类的Controller
 *
 * Created by yanglele on 2017/8/2.
 */
@Controller
@RequestMapping("/category")
public class CategoryController {

    @Autowired
    private ICategoryService iCategoryService;

    /**
     * 分类列表
     *
     * @return
     */
    @RequestMapping(value = "list.do")
    @ResponseBody
    public ServerResponse<List<Category>> list() {
        return iCategoryService.list();
    }

}
