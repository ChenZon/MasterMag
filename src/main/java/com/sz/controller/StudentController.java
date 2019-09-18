package com.sz.controller;

import com.sz.pojo.Student;
import com.sz.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/stu")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/login")
    public String login(Integer id, String password, Model model, HttpSession session){

        Student student = studentService.findUser(id, password);
        if (student != null){

            session.setAttribute("USER_SESSION", student);
            return "index";
        }
        model.addAttribute("errMsg", "账号或密码错误");
        return "login";
    }

    @RequestMapping("/toStudent")
    public String toStudent(){
        System.out.println("Test here.");
        return "test";
    }

}
