package com.sz.controller;

import com.sz.pojo.Student;
import com.sz.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
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
//            System.out.println("before returning the index");
            return "index";
        }
//        System.out.println("cut-off rule");
        model.addAttribute("errMsg", "账号或密码错误");
        return "login";
    }

    @RequestMapping("/toStudent")
    public String toStudent(){
        System.out.println("Test here.");
        return "test";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session){
        session.invalidate();
//        servletRequest.setAttribute("errMsg", "你已成功退出");
//        model.addAttribute("errMsg", "你已成功退出");
        return "redirect:/";
    }

}
