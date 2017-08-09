package com.matrix.pojo;

import java.util.Date;

public class User {
    private Integer id;

    private String username;

    private String nickname;

    private String password;

    private String tel;

    private String email;

    private Integer sex;

    private Date birthday;

    private Integer valid;

    private Date createTime;

    private Date updateTime;

    private Integer authority;

    private Date lastLogin;

    private Date currentLogin;

    private String lastIp;

    private String currentIp;

    public User(Integer id, String username, String nickname, String password, String tel, String email, Integer sex, Date birthday, Integer valid, Date createTime, Date updateTime, Integer authority, Date lastLogin, Date currentLogin, String lastIp, String currentIp) {
        this.id = id;
        this.username = username;
        this.nickname = nickname;
        this.password = password;
        this.tel = tel;
        this.email = email;
        this.sex = sex;
        this.birthday = birthday;
        this.valid = valid;
        this.createTime = createTime;
        this.updateTime = updateTime;
        this.authority = authority;
        this.lastLogin = lastLogin;
        this.currentLogin = currentLogin;
        this.lastIp = lastIp;
        this.currentIp = currentIp;
    }

    public User() {
        super();
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getNickname() {
        return nickname;
    }

    public void setNickname(String nickname) {
        this.nickname = nickname == null ? null : nickname.trim();
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password == null ? null : password.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getSex() {
        return sex;
    }

    public void setSex(Integer sex) {
        this.sex = sex;
    }

    public Date getBirthday() {
        return birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public Integer getValid() {
        return valid;
    }

    public void setValid(Integer valid) {
        this.valid = valid;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public Date getUpdateTime() {
        return updateTime;
    }

    public void setUpdateTime(Date updateTime) {
        this.updateTime = updateTime;
    }

    public Integer getAuthority() {
        return authority;
    }

    public void setAuthority(Integer authority) {
        this.authority = authority;
    }

    public Date getLastLogin() {
        return lastLogin;
    }

    public void setLastLogin(Date lastLogin) {
        this.lastLogin = lastLogin;
    }

    public Date getCurrentLogin() {
        return currentLogin;
    }

    public void setCurrentLogin(Date currentLogin) {
        this.currentLogin = currentLogin;
    }

    public String getLastIp() {
        return lastIp;
    }

    public void setLastIp(String lastIp) {
        this.lastIp = lastIp == null ? null : lastIp.trim();
    }

    public String getCurrentIp() {
        return currentIp;
    }

    public void setCurrentIp(String currentIp) {
        this.currentIp = currentIp == null ? null : currentIp.trim();
    }
}