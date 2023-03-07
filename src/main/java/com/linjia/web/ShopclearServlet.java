package com.linjia.web;


import com.linjia.pojo.FineClass;
import com.linjia.pojo.Store;
import com.linjia.service.FineClassService;
import com.linjia.service.StoreService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/shopclearServlet")
public class ShopclearServlet extends HttpServlet {
   private FineClassService serviceDP=new FineClassService();
   private StoreService serviceStop=new StoreService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.接收id
        String id = request.getParameter("id");

        //2.调用service查询
        List<FineClass> fineDPClasses = serviceDP.selectByIdDianPu(Integer.parseInt(id));
        Store store = serviceStop.selectByIdStore(Integer.parseInt(id));
        //3.存储到request中
        request.setAttribute("fineDPClasses",fineDPClasses);
        request.setAttribute("store",store);

        //4.转发到update.jsp
        request.getRequestDispatcher("/shop_clear.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
