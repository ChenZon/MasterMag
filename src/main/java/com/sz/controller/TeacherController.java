package com.sz.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/tea")
public class TeacherController {

    @RequestMapping("/teacher")
    public String teacher(){
        return "teacher";
    }

}
