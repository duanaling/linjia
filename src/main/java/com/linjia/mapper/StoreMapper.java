package com.linjia.mapper;

import com.linjia.pojo.Images;
import com.linjia.pojo.Store;
import org.apache.ibatis.annotations.Select;

public interface StoreMapper {


    /**
     * 根据id查询
     * @param id
     * @return
     */
    @Select("select * from store where id = #{id}")
    Store selectByIdStore (int id);


}
