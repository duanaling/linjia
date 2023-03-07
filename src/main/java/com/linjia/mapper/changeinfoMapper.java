package com.linjia.mapper;

import com.linjia.pojo.Uuser;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Update;

public interface changeinfoMapper {



    int changeinfo(Uuser uuser);


}
