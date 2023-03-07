package com.linjia.mapper;

import com.linjia.pojo.Orders;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface OredersMapper {

//用用户名看订单列表
    List<Orders> findOreders(int id);
//测试


    //用订单id看某一个订单
    List<Orders> findetail(int id);


    //生成订单
    @Insert("insert into orders values (null,#{userId},#{prices},#{time},#{fineId},#{count},#{orederId},#{storeid},null)")
    int add(Orders orders);



}
