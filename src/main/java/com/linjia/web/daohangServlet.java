package com.linjia.web;

import com.alibaba.fastjson.JSON;
import com.linjia.pojo.FineClass;
import com.linjia.pojo.pageBean;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import com.linjia.service.testService;
@WebServlet("/daohangServlet")
public class daohangServlet extends HttpServlet {

    testService testservice = new testService();

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doGet(req,resp);
    }


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        String leixing = req.getParameter("leixing");
        String page = req.getParameter("page");
        String size = req.getParameter("size");
//
//        System.out.println(page);
//        System.out.println(size);
//        System.out.println(storeid);

        int leixingId = 1;
        if(leixing != null&&!"null".equals(leixing)){
            leixingId = Integer.parseInt(leixing);
        }
        int currenPage =1;
        if(page != null&&!"null".equals(page)){
            currenPage = Integer.parseInt(page);
        }
        int pageSize = 9;
        if(size != null&&!"null".equals(size)){
            pageSize = Integer.parseInt(size);
        }

        pageBean<FineClass> pagebean = new pageBean();

        pagebean = testservice.findPage2(leixingId,currenPage,pageSize);


        String text = JSON.toJSONString(pagebean);

        out.print(text);




    }
}
