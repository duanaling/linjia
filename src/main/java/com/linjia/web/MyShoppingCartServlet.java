package com.linjia.web;


import com.linjia.pojo.FineClass;
import com.linjia.pojo.ShoppingCart;
import com.linjia.service.ShoppingCartService;
import com.linjia.util.OrderNumberUtil;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLDecoder;


@WebServlet("/myShoppingCartServlet")
public class MyShoppingCartServlet extends HttpServlet {
    private ShoppingCartService service =new ShoppingCartService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");
        PrintWriter out = response.getWriter();

        System.out.println("_____");
        //1.接收商品id
        String id = request.getParameter("id");
        System.out.println(id);
        //接受用户名
        String name = URLDecoder.decode(request.getParameter("name"),"utf-8");
        System.out.println("name"+"+"+name);
        //接受用户id
        String id2 = request.getParameter("id2");
        System.out.println(id2);
        //接受购买数量
        String numbers =request.getParameter("numbers");
        System.out.println(numbers);
        //接收单价价
        String  price =request.getParameter("price");
        System.out.println(price);




        int Id = 1;
        if(id != null&&!"null".equals(id)){
            Id = Integer.parseInt(id);
        }


        int Id2 = 1;
        if(id2 != null&&!"null".equals(id2)){
            Id2 = Integer.parseInt(id2);
        }

        int Numbers = 1;
        if(numbers != null&&!"null".equals(numbers)){
            Numbers = Integer.parseInt(numbers);
        }

        double Price = 1;
        if(price != null&&!"null".equals(price)){

            Price = Double.parseDouble(price);
        }
        //计算总价
        double Prices =Price*Numbers;

         //封装为一个shoppingCart对象

                ShoppingCart shoppingCart = new ShoppingCart();
                shoppingCart.setFine_classId(Id);
                shoppingCart.setUserId(Id2);
                shoppingCart.setNumbers(Numbers);
                shoppingCart.setPrice(Price);
                shoppingCart.setPrices(Prices);
                shoppingCart.setName(name);
        System.out.println(shoppingCart);
        //生成订单号
//      String ordernumbers = OrderNumberUtil.getOrderNo(11);
//        System.out.println(ordernumbers+"o");

        //2.调用service完成添加
        int x;
        x=service.add(shoppingCart);

        //2.存入request域中
        request.setAttribute("x",x);

        //3.转发到brand.jsp
        request.getRequestDispatcher("/mycart.html").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
