package com.linjia.pojo;

import com.linjia.pojo.Uuser;

public class User {

    private Integer id;
    private String username;
    private String password;
    private Uuser uuser;

    public User(Integer id, String username, String password, Uuser uuser) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.uuser = uuser;
    }
 public User(){};

    public Uuser getUuser() {
        return uuser;
    }

    public void setUuser(Uuser uuser) {
        this.uuser = uuser;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", password='" + password + '\'' +
                ", uuser=" + uuser +
                '}';
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
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

}
