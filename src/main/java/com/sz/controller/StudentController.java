package com.sz.controller;

import com.sz.pojo.Student;
import com.sz.pojo.Teacher;
import com.sz.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Date;

@Controller
@RequestMapping("/stu")
public class StudentController {

    @Autowired
    private StudentService studentService;

    @RequestMapping("/login")
    public String login(Integer num, String password, Model model, HttpSession session, HttpServletRequest request ){

        Student student = studentService.findUser(num, password);
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

    @RequestMapping("/logout")
    public String logout(HttpSession session, Model model){

        session.invalidate();
        System.out.println("成功退出");
        return "redirect:/";
    }

    @RequestMapping("/register")
    public String register(Integer num, String password){
        Student student = studentService.createUser(num, password);
        System.out.println(student);
        System.out.println("注册成功");
        return "login";
    }

    @RequestMapping("/check")
    public String check(){

        return "check";
    }

    @RequestMapping("/stuMessage")
    public String stuMessage(){
        System.out.println("查看个人信息");
        return "stuMessage";
    }

    @RequestMapping("/teaMessage")
    public String teaMessage(HttpSession session){
        Student student = (Student) session.getAttribute("USER_SESSION");       //获取当前用户id
        Integer id = student.getId();
        Teacher teacher = studentService.findTeacher(id);
        System.out.println(teacher);
        System.out.println("查看导师信息");
        return "teaMessage";
    }

    @RequestMapping("/update")
    public String update(HttpSession session, String username, Integer age, String phone, String email,String date, String idNum, String sex, String introduce){
        Student student = (Student) session.getAttribute("USER_SESSION");       //获取当前用户id
        Integer id = student.getId();
        System.out.println("introduce: " + introduce);
        studentService.update(username, age, phone, email, date, idNum,  sex, introduce, id);
        System.out.println("更新信息");
        return "index";
    }


}
