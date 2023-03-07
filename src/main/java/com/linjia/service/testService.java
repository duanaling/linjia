package com.linjia.service;

import com.alibaba.fastjson.JSON;
import com.linjia.mapper.testMapper;
import com.linjia.pojo.FineClass;
import com.linjia.pojo.pageBean;
import com.linjia.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;

public class testService {

    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();

    public pageBean<FineClass> findPage(int leixing,int currenpage, int pagesize){



        pageBean<FineClass> pagebean = new pageBean<>();
        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        testMapper mapper = sqlSession.getMapper(testMapper.class);

        //4.调用方法
        int count = mapper.countsize(leixing);

        pagebean.setTotalCount(count);
        int totalpage = count%pagesize==0?count/pagesize:count/pagesize+1;
        pagebean.setTotalPage(totalpage);

        //用当前页得到limit的第一个参数
        int star = (currenpage-1)*pagesize;
        pagebean.setCurrentPage(currenpage);
        List<FineClass> list = mapper.test(leixing,star,pagesize);
        pagebean.setList(list);
        //释放资源
        sqlSession.close();

        return pagebean;
    }


    public pageBean<FineClass> findBystr(String str1,int leixing,int currenPage){
        pageBean<FineClass> pagebean = new pageBean<>();
        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        testMapper mapper = sqlSession.getMapper(testMapper.class);

        //4.调用方法

        int count = mapper.countsizebystr(str1,leixing);

        pagebean.setTotalCount(count);
        int totalpage = count%9==0?count/9:count/9+1;
        pagebean.setTotalPage(totalpage);

        //用当前页得到limit的第一个参数
        int star = (currenPage-1)*9;
        pagebean.setCurrentPage(currenPage);
        List<FineClass> list = mapper.findBystr(leixing,str1,star);
        pagebean.setList(list);
        //释放资源
        sqlSession.close();

        return pagebean;
    }

    public FineClass getFineById(int id){
        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        testMapper mapper = sqlSession.getMapper(testMapper.class);

        FineClass fineClass = new FineClass();

        fineClass = mapper.getFineById(id);

        sqlSession.close();
        return fineClass;

    }

    public pageBean<FineClass> findPage2(int leixing,int currenpage, int pagesize ){

        pageBean<FineClass> pagebean = new pageBean<>();
        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        testMapper mapper = sqlSession.getMapper(testMapper.class);

        //4.调用方法
        int count = mapper.countsize2(leixing);

        pagebean.setTotalCount(count);
        int totalpage = count%pagesize==0?count/pagesize:count/pagesize+1;
        pagebean.setTotalPage(totalpage);

        //用当前页得到limit的第一个参数
        int star = (currenpage-1)*pagesize;
        pagebean.setCurrentPage(currenpage);
        List<FineClass> list = mapper.test2(leixing,star,pagesize);
        pagebean.setList(list);
        //释放资源
        sqlSession.close();

        return pagebean;
    }
}

