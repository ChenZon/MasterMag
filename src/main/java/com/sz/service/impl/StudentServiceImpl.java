package com.sz.service.impl;

import com.sz.dao.StudentDao;
import com.sz.pojo.Student;
import com.sz.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class StudentServiceImpl implements StudentService {

    @Autowired
    private StudentDao studentDao;

    @Override
    public Student findUser(Integer num, String password) {
        Student student = studentDao.findUser(num, password);
        return student;
    }


}
