package com.linjia.mapper;


import com.linjia.pojo.ShoppingCart;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface ShoppingCartMapper {
    /**
     * 添加购物车
     */
    @Insert("insert into shoppingcart values (null,#{Fine_classId},#{userId},#{numbers},#{price},#{prices},#{name})")
    int add(ShoppingCart shoppingcart);


@Select("SELECT * from shoppingcart WHERE userId = #{id}")
    List<ShoppingCart> getcart(int id);


@Delete("DELETE FROM shoppingcart WHERE id = #{id}")
    int del(int id);
}
