package com.linjia.web;


import com.linjia.pojo.Comment;
import com.linjia.service.CommentService;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import javax.xml.crypto.Data;
import java.io.IOException;
import java.sql.Timestamp;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@WebServlet("/commentServlet")
public class CommentServlet extends HttpServlet {
    private CommentService service=new CommentService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        //1.获取用户输入
        //处理post请求乱码问题
        request.setCharacterEncoding("utf-8");
        String comment = request.getParameter("comment");
        System.out.println(comment);
        String userId = request.getParameter("userId");
        System.out.println(userId);
        String fineClassId = request.getParameter("fineClassId");
        System.out.println(fineClassId);

        //获取时间
        DateTimeFormatter df = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss");
        LocalDateTime time = LocalDateTime.now();
        String localTime = df.format(time);


        //封装为一个comment对象
        Comment com = new Comment();
        com.setComment(comment);
        com.setUserId(Integer.parseInt(userId));
        com.setFine_classId(Integer.parseInt(fineClassId));
        com.setTime(localTime);
        System.out.println(com);
        //2.调用service完成添加
        int com1=0;
        com1=service.add(com);
         String id = null ;
         id ="/selectByIdDetailServlet?id="+fineClassId;

        //3.转发到查询所有service
//        request.setAttribute("id",id);
        request.getRequestDispatcher(id).forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }
}
