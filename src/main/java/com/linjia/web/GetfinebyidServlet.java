package com.linjia.web;

import com.alibaba.fastjson.JSON;
import com.linjia.pojo.FineClass;
import com.linjia.service.testService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
@WebServlet("/GetfinebyidServlet")
public class GetfinebyidServlet extends HttpServlet {
    testService testService = new testService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        String id = req.getParameter("Fineid");

        int Id = 1;
        if(id != null&&!"null".equals(id)){
            Id = Integer.parseInt(id);
        }

        FineClass fineClass = testService.getFineById(Id);
        String text = JSON.toJSONString(fineClass);
        out.print(text);
    }
}
