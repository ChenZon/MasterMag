package com.sz.service;

import com.sz.pojo.Student;
import com.sz.pojo.Teacher;
import org.apache.ibatis.annotations.Param;


public interface StudentService {

    Student findUser(Integer num, String password);

    Student createUser(Integer num, String password);


    void update(String username, String age, String phone, String email, String date, String idNum, String password, String sex, String introduce, Integer id);

    Teacher findTeacher(@Param("id")Integer id);

    Student checkUser(Integer num);
}
