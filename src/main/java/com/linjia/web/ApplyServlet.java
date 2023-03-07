package com.linjia.web;


import com.linjia.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/applyServlet")
public class ApplyServlet extends HttpServlet {

    private UserService service = new UserService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
         //处理post请求乱码问题
        request.setCharacterEncoding("utf-8");

          //1.接收表单提交的数据，封装为一个Brand对象
        String userId = request.getParameter("userId");
        System.out.println(userId+"_______");


//        //封装为一个Brand对象
//        Brand brand = new Brand();
//        brand.setBrandName(brandName);
//        brand.setCompanyName(companyName);
//        brand.setOrdered(Integer.parseInt(ordered));
//        brand.setDescription(description);
//        brand.setStatus(Integer.parseInt(status));

//        //2.调用service完成添加
          service.applystore(Integer.parseInt(userId));

        //3.转发到查询所有service
        request.getRequestDispatcher("/my-account.jsp   ").forward(request,response);

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
