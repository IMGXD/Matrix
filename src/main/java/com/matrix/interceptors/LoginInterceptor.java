package com.matrix.interceptors;

import com.fasterxml.jackson.databind.ObjectMapper;
import com.matrix.constants.Constant;
import com.matrix.dto.ServerResponse;
import com.matrix.pojo.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.PrintWriter;

/**
 * 登录拦截器
 * <p/>
 * Created by yanglele on 2017/8/1.
 */
public class LoginInterceptor implements HandlerInterceptor {
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String uri = request.getRequestURI();
        String ContextPath = request.getContextPath();
        User user = (User) request.getSession().getAttribute(Constant.CURRENT_USER);

        if (uri.contains("page")) {
            return true;
        }

        // 后台拦截
        if (uri.contains("manage")) {
            // 登录操作
            if (uri.contains("login")) {
                return true;
            }

            // 其他操作
            if (null != user && user.getAuthority() == Constant.Role.ROLE_ADMIN) {
                return true;
            }

            response.sendRedirect(ContextPath + Constant.BACKEND_LOGIN);
            return false;
        } else { // 门户拦截
            if (uri.contains("user")) { // 用户操作相关拦截
                // 登录、注册、注销操作放行
                if (uri.contains("login") || uri.contains("register") || uri.contains("logout")) {
                    return true;
                }
            } else if (uri.contains("video")) { // 视频操作相关拦截
                // 除了上传视频、视频或图片上传操作放行
                if (!(uri.contains("uploadFile") || uri.contains("add"))) {
                    return true;
                }
            } else if (uri.contains("label")) { // 标签操作相关拦截
                // 查询标签列表操作放行
                if ((uri.contains("queryAllLabels"))) {
                    return true;
                }
            } else if (uri.contains("category")) { // 分类操作相关拦截
                // 查询分类列表操作放行
                if ((uri.contains("list"))) {
                    return true;
                }
            } else if (uri.contains("comment")) { // 评论操作相关拦截
                // 查询评论列表操作放行
                if (uri.contains("list")) {
                    return true;
                }
            }

            // 其他操作
            if (null != user && user.getAuthority() == Constant.Role.ROLE_CUSTOMER) {
                return true;
            }

            PrintWriter writer = response.getWriter();
            ObjectMapper mapper = new ObjectMapper();
            String json = mapper.writeValueAsString(ServerResponse.createByErrorMessage("请先登录"));
//            String json = ServerResponse.createByErrorMessage("请先登录").toString();
            //System.out.println(ContextPath + "/page/toLoginPage.do");
            //response.sendRedirect(ContextPath + "/page/toLoginPage.do");
            writer.write(json);
            return false;
        }
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
