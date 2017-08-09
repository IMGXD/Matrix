package com.matrix.controller.backend;

import com.github.pagehelper.PageInfo;
import com.matrix.constants.Constant;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.User;
import com.matrix.query.UserQuery;
import com.matrix.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

/**
 * 后台用户的Controller
 * <p/>
 * Created by yanglele on 2017/8/1.
 */
@Controller
@RequestMapping("/manage/user")
public class UserManageController {

    @Autowired
    private IUserService iUserService;

    /**
     * 用户登录
     *
     * @param username 用户名
     * @param password 密码
     * @param session
     * @return
     */
    @RequestMapping(value = "login.do", method = RequestMethod.POST)
    public String login(String username, String password, HttpSession session) {
        ServerResponse<User> response = iUserService.login(username, password);
        if (response.isSuccess()) {
            User user = response.getData();
            if (user.getAuthority() == Constant.Role.ROLE_ADMIN) {
                // 说明登陆的是管理员
                session.setAttribute(Constant.CURRENT_USER, user);
                return "redirect:/backstage/index.jsp";
            } else {
                return "redirect:/backstage/login.jsp";
            }
        }
        return "redirect:/backstage/login.jsp";
    }

    /**
     * 用户列表
     *
     * @param userQuery 用户查询集
     * @param pageNum   页码
     * @param pageSize  每页显示数量
     * @param session
     * @return json
     */
    @RequestMapping(value = "listjson.do")
    @ResponseBody
    public ServerResponse<PageInfo> listjson(UserQuery userQuery,
                                             @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                             @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize,
                                             HttpSession session) {
        return iUserService.list(userQuery, pageNum, pageSize);
    }

    /**
     * 用户列表
     *
     * @param userQuery 用户查询集
     * @param pageNum   页码
     * @param pageSize  每页显示数量
     * @param session
     * @return mv
     */
    @RequestMapping(value = "list.do")
    public String list(UserQuery userQuery,
                       @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                       @RequestParam(value = "pageSize", defaultValue = "10") Integer pageSize,
                       HttpSession session) {
        ServerResponse<PageInfo> response = iUserService.list(userQuery, pageNum, pageSize);
        session.setAttribute("userList", response.getData().getList());
        return "redirect:/backstage/userQuery.jsp";
    }

    /**
     * 删除用户
     *
     * @param userId  用户id
     * @param session
     * @return
     */
    @RequestMapping(value = "del.do")
    @ResponseBody
    public ServerResponse<User> del(@RequestParam(value = "id") Integer userId,
                                    HttpSession session) {
        return iUserService.del(userId);
    }

}
