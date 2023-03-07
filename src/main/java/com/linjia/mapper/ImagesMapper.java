package com.linjia.mapper;


import com.linjia.pojo.Images;
import com.linjia.pojo.User;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.awt.*;

public interface ImagesMapper {


    /**
     * 根据id查询
     * @param id
     * @return
     */
    @Select("select * from images where Fine_classid = #{id}")
    Images selectImgById (int id);

}
