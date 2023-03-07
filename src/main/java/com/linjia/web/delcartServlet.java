package com.linjia.web;

import com.linjia.service.ShoppingCartService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/delcartServlet")
public class delcartServlet extends HttpServlet {
ShoppingCartService shoppingCartService = new ShoppingCartService();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req,resp);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        String id = req.getParameter("id");

        int Id = 1;
        if(id != null&&!"null".equals(id)){
            Id = Integer.parseInt(id);
        }



        int flag;
        flag = shoppingCartService.deleteById(Id);
    }




}
