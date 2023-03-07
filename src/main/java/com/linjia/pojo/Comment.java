package com.linjia.pojo;

import java.sql.Timestamp;

public class Comment {

    private Integer id;
    private String comment;
    private Integer userId;
    private String time;
    private Integer Fine_classId;

    @Override
    public String toString() {
        return "Comment{" +
                "id=" + id +
                ", comment='" + comment + '\'' +
                ", userId=" + userId +
                ", time='" + time + '\'' +
                ", Fine_classId=" + Fine_classId +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public Integer getFine_classId() {
        return Fine_classId;
    }

    public void setFine_classId(Integer fine_classId) {
        Fine_classId = fine_classId;
    }
}
