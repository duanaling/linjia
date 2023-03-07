package com.linjia.service;

import com.linjia.mapper.ImagesMapper;
import com.linjia.mapper.StoreMapper;
import com.linjia.pojo.Images;
import com.linjia.pojo.Store;
import com.linjia.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class StoreService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    /**
     * 根据id查询
     * @param id
     * @return
     */
    public Store selectByIdStore(int id){
        //调用BrandMapper.selectAll()

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        StoreMapper mapper = sqlSession.getMapper(StoreMapper.class);

        //4.调用方法
        Store store = mapper.selectByIdStore(id);

        //释放资源
        sqlSession.close();

        return store;
    }



}
