package com.matrix.service;

import com.matrix.dto.ServerResponse;
import com.matrix.pojo.Label;

import java.util.List;

/**
 * 标签Service接口
 * <p/>
 * Created by yanglele on 2017/8/1.
 */
public interface ILabelService {

    /**
     * 标签列表
     *
     * @return
     */
    ServerResponse<List<Label>> list();

}
