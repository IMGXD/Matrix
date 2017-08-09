package com.matrix.service.impl;

import com.matrix.dao.LabelMapper;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Label;
import com.matrix.service.ILabelService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * 标签Service实现类
 * <p/>
 * Created by yanglele on 2017/8/1.
 */
@Service
public class LabelServiceImpl implements ILabelService {

    @Autowired
    private LabelMapper labelMapper;

    @Override
    public ServerResponse<List<Label>> list() {
        List<Label> labels = labelMapper.queryAllLabels();

        // 查询结果为空时
        if (null == labels || labels.size() == 0) {
            return ServerResponse.createByErrorMessage("当前没有标签数据");
        }

        // 成功
        return ServerResponse.createBySuccess(labels);
    }
}
