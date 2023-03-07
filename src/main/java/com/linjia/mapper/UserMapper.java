package com.linjia.mapper;

import com.linjia.pojo.User;
import com.linjia.pojo.Uuser;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface UserMapper {


    /**
     * 根据用户名和密码查询用户对象
     * @param username
     * @param password
     * @return
     */
    @Select("select * from user where username = #{username} and password = #{password}")
    User select(@Param("username") String username,@Param("password")  String password);

    /**
     * 根据用户名查询用户对象
     * @param username
     * @return
     */
    @Select("select * from user where username = #{username}")
    User selectByUsername(String username);

    /**
     * 添加用户
     * @param user
     */
    @Insert("insert into user values(null,#{username},#{password},null,null)")
    void add(User user);

    @Select("SELECT * from uuser WHERE id =#{id}")
    Uuser selectUuserByid(int id);

/**
 * 申请成为商家
 */
@Update("update user set usertype=0 where id=#{id}")
 void applystore(int id);
}
