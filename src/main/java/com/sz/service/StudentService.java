package com.sz.service;

import com.sz.pojo.Student;


public interface StudentService {

    Student findUser(Integer num, String password);

    Student createUser(Integer num, String password);


    void update(String username, Integer age, String phone, String email, String date, String idNum, String sex, String introduce, Integer id);
}
