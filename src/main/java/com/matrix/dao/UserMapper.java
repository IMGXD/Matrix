package com.matrix.dao;

import com.matrix.pojo.User;
import com.matrix.query.UserQuery;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface UserMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(User record);

    int insertSelective(User record);

    User selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(User record);

    int updateByPrimaryKey(User record);

    /**
     * 根据用户名查询记录是否存在
     *
     * @param username 用户名
     * @return 记录数 1 为存在， 0 为不存在
     */
    int checkUsername(String username);

    /**
     * 根据邮件地址查询记录是否存在
     *
     * @param email 邮件地址
     * @return 记录数 1 为存在， 0 为不存在
     */
    int checkEmail(String email);

    /**
     * 根据昵称名查询用户记录是否存在
     *
     * @param nickname 昵称名
     * @return 记录数 1 为存在， 0 为不存在
     */
    int checkNickname(String nickname);

    /**
     * 根据用户名和密码查询用户
     *
     * @param username 用户名
     * @param password 密码
     * @return 用户User
     */
    User selectLogin(@Param("username") String username, @Param("password") String password);

    /**
     * 根据邮件地址和用户id查询用户记录是否存在
     *
     * @param email  邮件地址
     * @param userId 用户id
     * @return 记录数 1 为存在， 0 为不存在
     */
    int checkEmailByUserId(@Param("email") String email, @Param("userId") Integer userId);

    /**
     * 查询所有用户列表
     * @return
     */
    List<User> queryAll(UserQuery userQuery);

    /**
     * 根据用户id查询用户记录
     *
     * @param userId 用户id
     * @return
     */
    int checkUserId(Integer userId);
}