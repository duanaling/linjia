package com.linjia.web;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import com.alibaba.fastjson.JSON;
import com.linjia.pojo.Orders;
import com.linjia.service.OredersService;
@WebServlet("/orddetailServlet")
public class orddetailServlet extends HttpServlet {


    OredersService oredersService = new OredersService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        String id = req.getParameter("id");



        int Id = 1;
        if(id!= null&&!"null".equals(id)){
            Id = Integer.parseInt(id);
        }

        List<Orders> list = oredersService.findetail(Id);
        String text = JSON.toJSONString(list);
        out.print(text);


    }
}
