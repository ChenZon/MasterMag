package com.sz.service.impl;

import com.sz.dao.StudentDao;
import com.sz.pojo.Student;
import com.sz.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDao studentDao;

    @Override
    public Student findUser(Integer num, String password) {
        Student student = studentDao.findUser(num, password);
        return student;
    }

    @Override
    public Student createUser(Integer num, String password) {
        Student student = studentDao.createUser(num, password);
        System.out.println("student is: "+ student);
        return student;
    }

    @Override
    public void update(String username, Integer age, String phone, String email, String date, String idNum, String sex, String introduce, Integer id) {

        studentDao.update(username, age, phone, email, date, idNum, sex, introduce, id);
//       studentDao.update(username,  age,  phone,  email, date, idNum,  sex, introduce, id);
//        return row;
    }


}
