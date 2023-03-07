package com.linjia.web.detail;

import com.linjia.pojo.*;
import com.linjia.service.*;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet("/selectByIdDetailServlet")
public class SelectByIdDetailServlet extends HttpServlet {
    private ImagesService serviceima = new ImagesService();
    private FineClassService servicefin=new FineClassService();
    private StoreService servicesto = new StoreService();
    private CommentService servicecom=new CommentService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.接收id
        String id = request.getParameter("id");
        System.out.println(id+"______________________");
        //2.调用service查询
        Images images = serviceima.selectImgById(Integer.parseInt(id));
        FineClass fineClass = servicefin.selectByIdDescribe(Integer.parseInt(id));
        List<FineClass> fineTJClasses = servicefin.selectByIdTuiJian(Integer.parseInt(id));
        Store store = servicesto.selectByIdStore(images.getStoreId());
        List<Comment> comments = servicecom.selectPL(Integer.parseInt(id));
        //3.存储到request中
        request.setAttribute("images",images);
        request.setAttribute("fineClass",fineClass);
        request.setAttribute("fineTJClasses",fineTJClasses);
        request.setAttribute("store",store);
        request.setAttribute("comments",comments);

        System.out.println(fineTJClasses);
        System.out.println(images);
        System.out.println(fineClass);

        //4.转发到update.jsp
        request.getRequestDispatcher("/detail.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
