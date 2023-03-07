package com.linjia.mapper;

import com.linjia.pojo.FineClass;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;


import java.util.List;

public interface testMapper {
    @Select("select * from Fine_class where leixing=#{leixing} LIMIT #{star},#{pagesize}")
    List<FineClass> test(@Param("leixing")int leixing,@Param("star")int star,@Param("pagesize")int pagesize);

    @Select("SELECT COUNT(*)from fine_class where leixing=#{leixing}")
    int countsize(@Param("leixing")int leixing);

    @Select("select COUNT(*) from fine_class where`describe` LIKE '%${str1}%' AND leixing=${leixing} ")
    int countsizebystr(@Param("str1") String str1,@Param("leixing") int leixing);

    @Select("select * from fine_class where leixing=${leixing} AND `describe` LIKE '%${str}%' LIMIT #{star},9")
    List<FineClass> findBystr(@Param("leixing")int leixing,@Param("str")String str,@Param("star")int star);

    @Select("select * from fine_class where id = #{id}")
    FineClass getFineById(int id);

    @Select("select * from Fine_class where ClassifyId=#{leixing} LIMIT #{star},#{pagesize}")
    List<FineClass> test2(@Param("leixing")int leixing,@Param("star")int star,@Param("pagesize")int pagesize);

    @Select("SELECT COUNT(*)from fine_class where ClassifyId=#{leixing}")
    int countsize2(@Param("leixing")int leixing);
}
