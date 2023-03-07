package com.linjia.service;

import com.linjia.mapper.OredersMapper;
import com.linjia.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;

import com.linjia.pojo.Orders;

public class OredersService {



public List<Orders> findetail(int id){
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();



    SqlSession sqlSession = factory.openSession();
    //        changeinfoMapper mapper= sqlSession.getMapper(changeinfoMapper.class);
    OredersMapper mapper = sqlSession.getMapper(OredersMapper.class);
    List<Orders> list = new ArrayList<>();
    list = mapper.findetail(id);
    sqlSession.close();
    return list;

}



    public List<Orders> findOrders(int id) {
        SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();



        SqlSession sqlSession = factory.openSession();
        //        changeinfoMapper mapper= sqlSession.getMapper(changeinfoMapper.class);



        OredersMapper mapper = sqlSession.getMapper(OredersMapper.class);

        List<Orders> list = mapper.findOreders(id);
        sqlSession.close();


        return list;

    }

    //添加订单
    public int add(Orders orders){
        SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();



        SqlSession sqlSession = factory.openSession();
        //        changeinfoMapper mapper= sqlSession.getMapper(changeinfoMapper.class);
        OredersMapper mapper = sqlSession.getMapper(OredersMapper.class);
    int flag = 0;
    flag = mapper.add(orders);

       //提交事务
        sqlSession.commit();
        sqlSession.close();

    return flag;
    }
}
