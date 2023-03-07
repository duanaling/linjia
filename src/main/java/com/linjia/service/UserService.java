package com.linjia.service;

import com.linjia.mapper.UserMapper;
import com.linjia.pojo.User;
import com.linjia.pojo.Uuser;
import com.linjia.util.SqlSessionFactoryUtils;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class UserService {


    SqlSessionFactory factory = SqlSessionFactoryUtils.getSqlSessionFactory();


    /**
     * 登录
     * @param username
     * @param password
     * @return
     */
    public User login (String username, String password){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        //4.调用方法
        User user = mapper.select(username, password);

        //5.释放资源
        sqlSession.close();
        return  user ;
    }

    /**
     * 注册方法
     * @param user
     * @return
     */
    public boolean register (User user){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);


        //4.判断用户是否存在
        User u = mapper.selectByUsername(user.getUsername());

        if (u == null){
            //用户不存在，注册
            mapper.add(user);
            //提交事务
            sqlSession.commit();
        }

        //5.释放资源
        sqlSession.close();

        return u==null;





    }


    /**
     * 查看用户信息通过session的id
     * @param id
     * @return Uuser
     */

    public Uuser getinfor(int id){



        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        //4.调用方法
        Uuser user = mapper.selectUuserByid(id);


        //5.释放资源
        sqlSession.close();




        return user;
    }

    /**
     * 申请成为商家
     * @param id
     */
    public void applystore(int id){

        //2.获取SqlSession
        SqlSession sqlSession = factory.openSession();

        //3.获取UserMapper
        UserMapper mapper = sqlSession.getMapper(UserMapper.class);

        //4.调用方法
        mapper.applystore(id);

        //.提交事务
        sqlSession.commit();
        //5.释放资源
        sqlSession.close();

    }
}
