package com.linjia.service;


import com.linjia.mapper.ImagesMapper;

import com.linjia.pojo.Images;
import com.linjia.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.awt.*;

public class ImagesService {
    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    /**
     * 根据id查询
     * @param id
     * @return
     */
    public Images selectImgById(int id){
        //调用BrandMapper.selectAll()

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        ImagesMapper mapper = sqlSession.getMapper(ImagesMapper.class);

        //4.调用方法
        Images images = mapper.selectImgById(id);

        //释放资源
        sqlSession.close();

        return images;
    }
}
