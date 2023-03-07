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

@WebServlet("/selectXServlet")
public class SelectXServlet extends HttpServlet {
    private FineClassService service= new FineClassService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
      //调用imagesService完成查询
        List<FineClass> finmss = service.selectFinemsClass();
        List<FineClass> finzss = service.selectFinezsClass();
        List<FineClass> finhws = service.selectFinehwClass();

        //2.存入request域中
        request.setAttribute("finmss",finmss);
        request.setAttribute("finzss",finzss);
        request.setAttribute("finhws",finhws);


        //3.转发到brand.jsp
        request.getRequestDispatcher("/offonline.jsp").forward(request,response);


    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
