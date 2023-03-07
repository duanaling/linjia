package com.linjia.service;


import com.linjia.mapper.ShoppingCartMapper;

import com.linjia.pojo.ShoppingCart;
import com.linjia.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;



public class ShoppingCartService {


    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    /**
     * 根据用户查询所有
     */
    public List<ShoppingCart> GetcartAll(int id){
        SqlSession sqlSession = factory.openSession();

        ShoppingCartMapper mapper = sqlSession.getMapper(ShoppingCartMapper.class);

        List<ShoppingCart> list =  mapper.getcart(id);

        sqlSession.close();

        return list;
    }



    /**
     * 添加
     * @param shoppingCart
     */
    public int add(ShoppingCart shoppingCart){
        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        ShoppingCartMapper mapper = sqlSession.getMapper(ShoppingCartMapper.class);

        //4.调用方法
        int x=0;
      x= mapper.add(shoppingCart);

        //5.提交事务
        sqlSession.commit();

        //释放资源
        sqlSession.close();
        return x;
    }


    /**
     * 根据id查询
     * @param id
     * @return
     */


    /**
     * 根据id查询
     * @param id
     * @return
     */
    public int  deleteById(int id){



        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取shopMapper
      ShoppingCartMapper mapper = sqlSession.getMapper(ShoppingCartMapper.class);

        //4.调用方法
       int flag = mapper.del(id);

            //5.提交事务
        sqlSession.commit();
        //释放资源
        sqlSession.close();

        return flag;
    }
}
