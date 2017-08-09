package com.matrix.controller.portal;

import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Label;
import com.matrix.service.ILabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.List;

/**
 * 门户标签的Controller
 * <p/>
 * Created by yanglele on 2017/8/1.
 */
@Controller
@RequestMapping("/label")
public class LabelController {

    @Autowired
    private ILabelService iLabelService;

    /**
     * 标签列表
     *
     * @return
     */
    @RequestMapping(value = "queryAllLabels.do")
    @ResponseBody
    public ServerResponse<List<Label>> list() {
        return iLabelService.list();
    }
}
