package com.linjia.web;

import com.alibaba.fastjson.JSON;
import com.linjia.pojo.User;
import com.linjia.pojo.Uuser;
import com.linjia.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/GetInforUuerServlet")
public class GetInforUuerServlet extends HttpServlet {

    private UserService userService = new UserService();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
       this.doPost(req,resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.setCharacterEncoding("utf-8");
        resp.setContentType("text/html;charset=utf-8");
        PrintWriter out = resp.getWriter();
        HttpSession session = req.getSession();
        Object x = session.getAttribute("user");
        User user = (User) x;

        int id = 1;
        if(user.getId()!=null&&!"null".equals(user.getId())){
            id = user.getId();
        }

        Uuser uuser = userService.getinfor(id);

        String text = JSON.toJSONString(uuser);

        out.print(text);




    }

    private class Uuse {
    }
}
