package com.matrix.constants;

import java.io.File;

/**
 * @author lp
 *         应用常量类定义
 */
public class Constant {

    public static final String CURRENT_USER = "currentUser";                    // session 当前用户
    public static final String CREATE_TIME = "create_time";                     // 创建时间
    public static final String UPDATE_TIME = "update_time";                     // 更新时间
    public static final String EMAIL = "email";                                 // 邮件
    public static final String USERNAME = "username";                           // 用户名
    public static final String NICKNAME = "nickname";                           // 昵称
    public static final String VIDEO = "video";                                 // 上传用
    public static final String IMAGE = "image";                                 // 上传用
    public static final String PORTAL_LOGIN = File.separator + "login.html";    // 门户登录界面
    public static final String BACKEND_LOGIN = File.separator + "backstage" + File.separator + "login.jsp";  // 后台登录界面
    public static final String DESC = " desc";                                  // 降序
    public static final String ASC = " asc";                                    // 升序

    public interface Role {
        int ROLE_VISITOR = 0;  // 游客
        int ROLE_CUSTOMER = 1; // 普通用户
        int ROLE_ADMIN = 9;    // 管理员
    }

    // 排序用（改进版）
    /*public interface VideoListOrderBy {
    }*/

    public enum VideoStatusEnum {
        ON_SALE(1, "上架"),
        SOLD_OUT(2, "下架"),
        DEL(3, "删除");

        private int code;
        private String value;

        VideoStatusEnum(int code, String value) {
            this.code = code;
            this.value = value;
        }

        public String getValue() {
            return value;
        }

        public int getCode() {
            return code;
        }
    }
}
