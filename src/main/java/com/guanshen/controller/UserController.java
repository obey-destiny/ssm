package com.guanshen.controller;

import com.alibaba.fastjson.JSONObject;
import com.guanshen.entity.User;
import com.guanshen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("user")
public class UserController {

    @Autowired
    private UserService userService;
    /**
     *  查询所有用户
     */
    @RequestMapping("findAll")
    public void findAll(HttpServletRequest request, HttpServletResponse response) throws IOException {
        List<User> users = userService.findAll();
        String jsonString = JSONObject.toJSONString(users);
        response.setContentType("application/json;charset=utf-8");
        response.getWriter().println(jsonString);
    }

    /**
     *  添加用户
     */
    @RequestMapping("save")
    public String save(User user) {
        try {
            userService.save(user);
            return "redirect:/user/findAll";
        } catch (Exception e) {
            e.printStackTrace();
            return "redirect:/add.jsp";
        }
    }



}
