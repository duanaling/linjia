package com.linjia.service;


import com.linjia.mapper.CommentMapper;

import com.linjia.pojo.Comment;
import com.linjia.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;


/**
 * 查询所有
 */
public class CommentService {


    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();




    /**
     * 添加
     * @param comment
     */
    public int add(Comment comment){
        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        CommentMapper mapper=sqlSession.getMapper(CommentMapper.class);

        //4.调用方法
        int com=0 ;
        com=mapper.add(comment);

        //5.提交事务
        sqlSession.commit();

        //释放资源
        sqlSession.close();
        return com;
    }


    /**
     * 根据id查讯评论
     * @param id
     * @return
     */
    public List<Comment> selectPL(int id){


        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        CommentMapper mapper = sqlSession.getMapper(CommentMapper.class);

        //4.调用方法
        List<Comment> comments = mapper.selectPL(id);

        //释放资源
        sqlSession.close();

        return comments;
    }




}
