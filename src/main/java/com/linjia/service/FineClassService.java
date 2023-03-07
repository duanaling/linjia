package com.linjia.service;

import com.linjia.mapper.FineClassMapper;
import com.linjia.mapper.ImagesMapper;
import com.linjia.pojo.FineClass;
import com.linjia.pojo.Images;
import com.linjia.util.SqlSessionFactoryUtils;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

import java.util.List;


/**
 * 查询蔬菜
 */
public class FineClassService {


    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    public List<FineClass> selectFinevClass(){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
       FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        List<FineClass> finvs = mapper.selectFinevClass();

        //释放资源
        sqlSession.close();

        return finvs;
    }

    /**
     * 查询水果
     */
    public List<FineClass> selectFinefClass(){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        List<FineClass> finfs = mapper.selectFinefClass();

        //释放资源
        sqlSession.close();

        return finfs;
    }
    /**
     * 查询禽类
     */
    public List<FineClass> selectFineqClass(){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        List<FineClass> finqs = mapper.selectFineqClass();

        //释放资源
        sqlSession.close();

        return finqs;
    }

    /**
     * 查询畜
     */
    public List<FineClass> selectFinecClass(){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        List<FineClass> fincs = mapper.selectFinecClass();

        //释放资源
        sqlSession.close();

        return fincs;
    }

    /**
     * 查询美食
     */
    public List<FineClass> selectFinemsClass(){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        List<FineClass> finmss = mapper.selectFinemsClass();

        //释放资源
        sqlSession.close();

        return finmss;
    }

    /**
     * 查询住宿
     */
    public List<FineClass> selectFinezsClass(){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        List<FineClass> finzss = mapper.selectFinezsClass();

        //释放资源
        sqlSession.close();

        return finzss;
    }
    /**
     * 查询户外
     */
    public List<FineClass> selectFinehwClass(){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        List<FineClass> finhws = mapper.selectFinehwClass();

        //释放资源
        sqlSession.close();

        return finhws;
    }

    public FineClass selectByIdDescribe(int id){
        //调用BrandMapper.selectAll()

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        FineClass fineClass = mapper.selectByIdDescribe(id);

        //释放资源
        sqlSession.close();

        return fineClass;
    }

   public List<FineClass> selectByIdTuiJian(int id){
        //调用BrandMapper.selectAll()

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
       List<FineClass> fineTJClass = mapper.selectByIdTuiJian(id);

       //释放资源
        sqlSession.close();

        return fineTJClass;
    }


    public List<FineClass> selectByIdDianPu(int id){
        //调用BrandMapper.selectAll()

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取BrandMapper
        FineClassMapper mapper = sqlSession.getMapper(FineClassMapper.class);

        //4.调用方法
        List<FineClass> fineDPClass = mapper.selectByIdDianPu(id);

        //释放资源
        sqlSession.close();

        return fineDPClass;
    }
}
