package com.linjia.mapper;

import com.linjia.pojo.Comment;
import com.linjia.pojo.ShoppingCart;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface CommentMapper {
    /**
     * 添加评论
     */
    @Insert("insert into comment values (null,#{comment},#{userId},#{time },#{Fine_classId})")
    int add(Comment comment);

    /**
     * 查找评论
     */
    @Select("select * from comment where  Fine_classId= #{id} order by time desc limit 2")
    List<Comment> selectPL(int id);
}
