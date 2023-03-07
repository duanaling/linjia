package com.linjia.mapper;

import com.linjia.pojo.FineClass;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface FineClassMapper {

    @Select("select * from Fine_class where ClassifyId=1 ")
    List<FineClass> selectFinevClass();


    @Select("select * from Fine_class where ClassifyId=2 ")
    List<FineClass> selectFinefClass();

    @Select("select * from Fine_class where ClassifyId=3 ")
    List<FineClass> selectFineqClass();

    @Select("select * from Fine_class where ClassifyId=4 ")
    List<FineClass> selectFinecClass();
    //查询3条

    @Select("select * from Fine_class where ClassifyId=1 limit 3 ")
    List<FineClass> selectFinevvClass();


    @Select("select * from Fine_class where ClassifyId=2 limit 3 ")
    List<FineClass> selectFineffClass();

    @Select("select * from Fine_class where ClassifyId=3 limit 3 ")
    List<FineClass> selectFineqqClass();

    @Select("select * from Fine_class where ClassifyId=4 limit 3 ")
    List<FineClass> selectFineccClass();

    @Select("select * from Fine_class where ClassifyId=5 limit 3")
    List<FineClass> selectFinemsClass();

    @Select("select * from Fine_class where ClassifyId=6 limit 3")
    List<FineClass> selectFinezsClass();

    @Select("select * from Fine_class where ClassifyId=7 limit 3")
    List<FineClass> selectFinehwClass();
//购买
    @Select("select * from Fine_class where id=#{id}")
    FineClass selectByIdDescribe(int id);
//推荐更多
    @Select("SELECT * FROM Fine_class AS t1 JOIN (SELECT ROUND(RAND()*(SELECT MAX(id) \n" +
            "FROM Fine_class)) AS id) AS t2 WHERE t1.id>=t2.id ORDER BY t1.id LIMIT 7;")
    List<FineClass> selectByIdTuiJian(int id);
//店铺产品
    @Select("select * from Fine_class where storeid=#{id}")
    List<FineClass> selectByIdDianPu(int id);
}
