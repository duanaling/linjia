package com.linjia.web;

import com.alibaba.fastjson.JSON;
import com.linjia.pojo.FineClass;
import com.linjia.pojo.pageBean;
import com.linjia.service.testService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/MohuSelectServlet")
public class MohuSelectServlet extends HttpServlet {
        private testService testService= new testService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        String str = req.getParameter("str");
        String page = req.getParameter("page");
        String leixing = req.getParameter("leixing");



        int leixingId = 2;
        if(leixing != null&&!"null".equals(leixing)){
            leixingId = Integer.parseInt(leixing);
        }

        String str1 = "";
        if(str != null&&!"null".equals(str)){
            str1 = str;
        }
        System.out.println("page:"+page+","+str1);

        int currenPage =1;
        if(page != null&&!"null".equals(page)){
            currenPage = Integer.parseInt(page);
        }


        pageBean<FineClass> pagebean = new pageBean();
        pagebean = testService.findBystr(str1,leixingId,currenPage);


        String text = JSON.toJSONString(pagebean);

        out.print(text);


    }
}
