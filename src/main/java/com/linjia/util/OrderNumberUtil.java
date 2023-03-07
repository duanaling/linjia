package com.linjia.util;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;


public class OrderNumberUtil {
    //订单编号前缀
    public static final String PREFIX = "lj";


    /**
     * description : 生成订单编号(XuHaHa+yyyyMMddHHmmss+digit位随机数)
     * @param digit : 生成几位随机数
     * @return : 订单编号(String)
     */
    public static synchronized String getOrderNo(int digit) {
        StringBuffer resultBuffer = new StringBuffer();
        resultBuffer.append(PREFIX)
                .append(new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()));
        Random random = new Random();
        for (int i = 0; i < digit; i++) {
            resultBuffer.append(random.nextInt(10));
        }
        return resultBuffer.toString();
    }

    }

