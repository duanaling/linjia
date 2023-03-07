package com.linjia.web.shop;

import com.linjia.pojo.FineClass;
import com.linjia.service.FineClassService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectRServlet")
public class SelectRServlet extends HttpServlet {
    private FineClassService service= new FineClassService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //调用imagesService完成查询
        List<FineClass> finvs = service.selectFinevClass();
        List<FineClass> finfs = service.selectFinefClass();
        List<FineClass> finqs = service.selectFineqClass();
        List<FineClass> fincs = service.selectFinecClass();
        //2.存入request域中
        request.setAttribute("finfs",finfs);
        request.setAttribute("finvs",finvs);
        request.setAttribute("finqs",finqs);
        request.setAttribute("fincs",fincs);

        //3.转发到brand.jsp
        request.getRequestDispatcher("/shop.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
