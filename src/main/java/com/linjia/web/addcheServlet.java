package com.linjia.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.geom.Arc2D;
import java.io.IOException;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;


import com.alibaba.fastjson.JSON;
import com.linjia.pojo.Orders;
import com.linjia.pojo.User;
import com.linjia.service.OredersService;
import com.linjia.util.OrderNumberUtil;

@WebServlet("/addcheServlet")
public class addcheServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req, resp);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        OredersService oredersService = new OredersService();

        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        String time = req.getParameter("time");

        String count = req.getParameter("count");
        String storeid = req.getParameter("storeid");
        String fineId = req.getParameter("fineId");
        String prices = req.getParameter("prices");


        System.out.println("herr");
        System.out.println("time"+time);
        System.out.println("count"+count);
        System.out.println("storeid"+storeid);
        System.out.println("fineId"+fineId);
        System.out.println("prices"+prices);

        int Count = 9;
        if(count != null&&!"null".equals(count)){
            Count = Integer.parseInt(count);
        }


        int Storeid = 1;
        if(storeid != null&&!"null".equals(storeid)){
            Storeid = Integer.parseInt(storeid);
        }
        int Fineid =1;
        if(fineId != null&&!"null".equals(fineId)){
            Fineid = Integer.parseInt(fineId);
        }

        double Prices = 9;
        if(prices != null&&!"null".equals(prices)){
            Prices = Double.parseDouble(prices);
        }


        HttpSession session = req.getSession();
        Object x = session.getAttribute("user");
        User user = (User) x;

        int Userid = 1;
        if(user.getId()!=null&&!"null".equals(user.getId())){
            Userid = user.getId();
        }

        String ordernumbers = OrderNumberUtil.getOrderNo(8);
        System.out.println(ordernumbers);




        Orders orders = new Orders();

//        orders.setName(name);
        orders.setOrederId(ordernumbers);

        orders.setCount(Count);
        orders.setFineId(Fineid);
        orders.setPrices(Prices);
        orders.setStoreid(Storeid);


        //获取时间
        DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime Time = LocalDateTime.now();
        String localTime = df.format(Time);

        orders.setTime(localTime);

        orders.setUserId(Userid);

        System.out.println(orders);
        int flag = oredersService.add(orders);
        String text = "成功："+flag;

        out.print(text);

    }

}
