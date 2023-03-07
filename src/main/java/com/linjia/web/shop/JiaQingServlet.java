package com.linjia.web.shop;

import com.linjia.pojo.FineClass;
import com.linjia.service.FineClassService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet("/jiaQingServlet")
public class JiaQingServlet extends HttpServlet {
    private FineClassService service= new FineClassService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //调用imagesService完成查询

        List<FineClass> finqs = service.selectFineqClass();

        //2.存入request域中

        request.setAttribute("finqs",finqs);


        //3.转发到shopJiaQing.jsp
        request.getRequestDispatcher("/shopJiaQing.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
