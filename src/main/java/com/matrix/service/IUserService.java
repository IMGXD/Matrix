package com.matrix.service;

import com.github.pagehelper.PageInfo;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.User;
import com.matrix.query.UserQuery;

/**
 * 用户Service接口
 *
 * Created by yanglele on 2017/7/29.
 */
public interface IUserService {

    /**
     * 用户注册
     *
     * @param user 用户User
     * @return
     */
    ServerResponse<String> register(User user);

    /**
     * 用户登录
     *
     * @param username 用户名
     * @param password 密码
     * @return
     */
    ServerResponse<User> login(String username, String password);

    /**
     * 更新当前用户信息
     *
     * @param user 用户User
     * @return
     */
    ServerResponse<User> updateInformation(User user);

    /**
     * 校验是否是管理员
     *
     * @param user
     * @return
     */
    ServerResponse checkAdminRole(User user);

    /**
     * 检查用户相关属性是否有效
     * 如：str可以是用户名也可以是email。对应的type是username和email
     *
     * @param str  被检查的数据
     * @param type 被检查的数据的类型
     * @return
     */
    ServerResponse<String> checkValid(String str, String type);

    /**
     * 所有用户列表
     *
     * @param userQuery 用户查询集
     * @param pageNum   页码
     * @param pageSize  每页显示数量
     * @return
     */
    ServerResponse<PageInfo> list(UserQuery userQuery, Integer pageNum, Integer pageSize);

    /**
     * 删除用户
     *
     * @param userId  用户id
     * @return
     */
    ServerResponse<User> del(Integer userId);

}
