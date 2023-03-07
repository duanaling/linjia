package com.linjia.mapper;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import com.linjia.pojo.User;
import com.linjia.pojo.Uuser;

public interface userinformationMapper {

    @Select("SELECT * from user where id = #{id}")
    User getinforById(int id);

}
