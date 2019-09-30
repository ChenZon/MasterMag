package com.sz.controller;

import com.sz.pojo.Student;
import com.sz.pojo.Teacher;
import com.sz.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

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
            request.setAttribute("success", "欢迎您！ "+ student.getUsername());
            return "index";
        }
        request.setAttribute("error", "账号或密码错误");
        return "login";
    }

    @RequestMapping("/toStudent")
    public String toStudent(){
        System.out.println("Test here.");
        return "test";
    }

    @RequestMapping("/logout")
    public String logout(HttpSession session, HttpServletRequest request){

        request.setAttribute("success", "你已成功退出");
        session.invalidate();
        System.out.println("成功退出");
        return "redirect:/";
    }

    @RequestMapping("/register")
    public String register(Integer num, String password){
        Student student = studentService.createUser(num, password);
        System.out.println("注册成功");
        return "login";
    }


    @RequestMapping("/check")
    public String check(HttpServletRequest servletRequest){

//        servletRequest.setAttribute("check", "查看信息");
        return "check";
    }

    @RequestMapping("/stuMessage")
    public String stuMessage(HttpSession session) {
        Student student = (Student) session.getAttribute("USER_SESSION");
        student = studentService.findUser(student.getNum(), student.getPassword());
        if (student != null) {
            session.setAttribute("USER_SESSION", student);
        }
        System.out.println("查看个人信息");
        return "stuMessage";
    }

    @RequestMapping("/teaMessage")
    public String teaMessage(HttpSession session, Model model){
        Student student = (Student) session.getAttribute("USER_SESSION");       //获取当前用户id
        Integer id = student.getId();
        Teacher teacher = studentService.findTeacher(id);

        model.addAttribute("teaDetail", teacher);

        System.out.println("查看导师信息");
        return "teaMessage";
    }

    @RequestMapping("/update")
    public String update(HttpSession session, HttpServletRequest request, String username, String age, String phone, String email, String date, String idNum, String password, String sex, String introduce){
        Student student = (Student) session.getAttribute("USER_SESSION");       //获取当前用户id
        Integer id = student.getId();
        studentService.update(username, age, phone, email, date, idNum, password, sex, introduce, id);
        request.setAttribute("success", "信息已更新");
        System.out.println("更新信息");
        return "index";
    }

    @RequestMapping("/create")
    public @ResponseBody String create(HttpSession session, String num, String password) {
        int n = Integer.valueOf(num);
        studentService.createUser(n, password);
        return "1";
    }

    @RequestMapping("/apply")
    public String apply(){
        System.out.println("申请导师");
        return "apply";
    }


    @RequestMapping("/isRegistered")
    public @ResponseBody String isRegistered(Integer num) {
        System.out.println("num is: "+ num);
        Student student = studentService.checkUser(num);            // 查看数据库是否存在该账号
        if (student != null){
            return "0";
        }else {
            return "1";
        }
    }
}
