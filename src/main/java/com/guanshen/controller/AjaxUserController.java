package com.guanshen.controller;

import com.alibaba.fastjson.JSONObject;
import com.guanshen.entity.User;
import com.guanshen.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
@RequestMapping("/user")
public class AjaxUserController {
    @Autowired
    private UserService userService;

    @RequestMapping("/ajaxFindAll")
    @ResponseBody
    public List<User>  findAll(HttpServletResponse response) throws IOException {
        List<User> users = userService.findAll();
//        String jsonString = JSONObject.toJSONString(users);
//        response.setContentType("application/json;charset=utf-8");
//        response.getWriter().print(jsonString);
        return users;
    }
}
