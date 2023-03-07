package com.linjia.web.detail;

import com.linjia.pojo.FineClass;
import com.linjia.pojo.Images;
import com.linjia.pojo.Store;
import com.linjia.service.FineClassService;
import com.linjia.service.ImagesService;
import com.linjia.service.StoreService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/selectTuiJianServlet")
public class SelectTuiJianServlet extends HttpServlet {
    private ImagesService serviceima = new ImagesService();
    private FineClassService servicefin=new FineClassService();
    private StoreService servicesto = new StoreService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        System.out.println("????");
        //1.接收id
        String id = request.getParameter("id");
        System.out.println(id);
        //2.调用service查询
        Images images = serviceima.selectImgById(Integer.parseInt(id));
        FineClass fineClass = servicefin.selectByIdDescribe(Integer.parseInt(id));
        Store store = servicesto.selectByIdStore(Integer.parseInt(id));
        //3.存储到request中
        request.setAttribute("images",images);
        request.setAttribute("fineClass",fineClass);
        request.setAttribute("store",store);

        //4.转发到update.jsp
        request.getRequestDispatcher("/detail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
