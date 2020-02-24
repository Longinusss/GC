package com.withstars.controller;

import com.withstars.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

@Controller
public class TestC{
    @Autowired
    public UserService userService;
    @RequestMapping(value = "/getU",method = RequestMethod.GET)
    @ResponseBody
    public String getU(@RequestParam Integer id ){

        return userService.getUU(id);
    }
}
