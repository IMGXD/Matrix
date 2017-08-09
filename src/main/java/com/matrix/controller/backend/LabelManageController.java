package com.matrix.controller.backend;

import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Label;
import com.matrix.service.ILabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 后台标签的Controller
 *
 * Created by yanglele on 2017/8/1.
 */
@Controller
@RequestMapping("/manage/label")
public class LabelManageController {

    @Autowired
    private ILabelService iLabelService;

    @RequestMapping(value = "list.do")
    @ResponseBody
    public ServerResponse<List<Label>> list() {
        return iLabelService.list();
    }

}
