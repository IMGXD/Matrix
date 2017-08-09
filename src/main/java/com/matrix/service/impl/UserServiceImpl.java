package com.matrix.service.impl;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.matrix.constants.Constant;
import com.matrix.constants.ResponseCode;
import com.matrix.dao.UserMapper;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.User;
import com.matrix.query.UserQuery;
import com.matrix.service.IUserService;
import com.matrix.utils.MD5Util;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * 用户Service实现类
 * <p/>
 * Created by yanglele on 2017/7/29.
 */
@Service
public class UserServiceImpl implements IUserService {

    @Autowired
    private UserMapper userMapper;

    @Override
    public ServerResponse<String> register(User user) {
        // 判断用户名的唯一性
        ServerResponse<String> validResponse = this.checkValid(user.getUsername(), Constant.USERNAME);
        // 已存在
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        validResponse = this.checkValid(user.getEmail(), Constant.EMAIL);
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        validResponse = this.checkValid(user.getNickname(), Constant.NICKNAME);
        if (!validResponse.isSuccess()) {
            return validResponse;
        }

        //MD5加密
        user.setPassword(MD5Util.MD5EncodeUtf8(user.getPassword()));

        user.setCreateTime(new Date());
        user.setUpdateTime(new Date());
        int resuleCount = userMapper.insert(user);

        // 插入结果为0时（失败）
        if (resuleCount == 0) {
            return ServerResponse.createByErrorMessage("注册失败");
        }

        // 成功
        return ServerResponse.createBySuccessMessage("注册成功");
    }

    @Override
    public ServerResponse<User> login(String username, String password) {
        if (StringUtils.isBlank(username) || StringUtils.isBlank(password)) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),
                    "参数错误");
        }
        // 判断是否有此用户名的用户存在
        int resuleCount = userMapper.checkUsername(username);
        // 不存在
        if (resuleCount == 0) {
            return ServerResponse.createByErrorMessage("用户名不存在");
        }

        //密码登陆MD5
        String md5Password = MD5Util.MD5EncodeUtf8(password);
        User user = userMapper.selectLogin(username, md5Password);
        if (user == null) {
            return ServerResponse.createByErrorMessage("密码错误");
        }

        // 密码置空
        user.setPassword(StringUtils.EMPTY);

        return ServerResponse.createBySuccess("登陆成功", user);
    }

    @Override
    public ServerResponse<User> updateInformation(User user) {
        //username是不能被更新的
        //email也要进行一个校验，校验新的email是不是已经存在，并且存在的email如果相同的话，不能是我们当前的这个用户的。
        int resultCount = userMapper.checkEmailByUserId(user.getEmail(), user.getId());
        if (resultCount > 0) {
            return ServerResponse.createByErrorMessage("email已经存在，请更换email再尝试更新");
        }
        User updateUser = new User();
        updateUser.setId(user.getId());
        updateUser.setNickname(user.getNickname());
        updateUser.setTel(user.getTel());
        updateUser.setEmail(user.getEmail());
        updateUser.setSex(user.getSex());
        updateUser.setBirthday(user.getBirthday());
        updateUser.setUpdateTime(new Date());

        int updateCount = userMapper.updateByPrimaryKeySelective(updateUser);
        if (updateCount > 0) {
            return ServerResponse.createBySuccess("更新个人信息成功", updateUser);
        }
        return ServerResponse.createByErrorMessage("更新个人信息失败");
    }

    @Override
    public ServerResponse checkAdminRole(User user) {
        if (user != null && user.getAuthority() == Constant.Role.ROLE_ADMIN) {
            return ServerResponse.createBySuccess();
        }
        return ServerResponse.createByError();
    }

    public ServerResponse<String> checkValid(String str, String type) {
        if (StringUtils.isNotBlank(type)) {
            //开始校验
            if (Constant.USERNAME.equals(type)) {
                int resuleCount = userMapper.checkUsername(str);
                if (resuleCount > 0) {
                    return ServerResponse.createByErrorMessage("用户名已存在");
                }
            }
            if (Constant.EMAIL.equals(type)) {
                int resuleCount = userMapper.checkEmail(str);
                if (resuleCount > 0) {
                    return ServerResponse.createByErrorMessage("email已存在");
                }
            }
            if (Constant.NICKNAME.equals(type)) {
                int resuleCount = userMapper.checkNickname(str);
                if (resuleCount > 0) {
                    return ServerResponse.createByErrorMessage("nickname已存在");
                }
            }
        } else {
            return ServerResponse.createByErrorMessage("参数错误");
        }
        return ServerResponse.createBySuccessMessage("校验成功");
    }

    @Override
    public ServerResponse<PageInfo> list(UserQuery userQuery, Integer pageNum, Integer pageSize) {
        PageHelper.startPage(pageNum, pageSize);
        List<User> userList = userMapper.queryAll(userQuery);
        if (null == userList || userList.size() == 0) {
            return ServerResponse.createByErrorMessage("用户列表为空");
        }
        PageInfo pageInfo = new PageInfo(userList);
        return ServerResponse.createBySuccess(pageInfo);
    }

    @Override
    public ServerResponse<User> del(Integer userId) {
        if (null == userId) {
            return ServerResponse.createByErrorCodeMessage(ResponseCode.ILLEGAL_ARGUMENT.getCode(),
                    ResponseCode.ILLEGAL_ARGUMENT.getDesc());
        }

        int deleteCount = userMapper.deleteByPrimaryKey(userId);
        if (deleteCount < 1) {
            return ServerResponse.createByErrorMessage("删除用户失败");
        }
        return ServerResponse.createBySuccessMessage("删除用户成功");
    }

}
