package com.sz.dao;

import com.sz.pojo.Student;
import org.apache.ibatis.annotations.Param;

public interface StudentDao {

//    public Student findCustomerById(Integer id);

    Student findUser(@Param("num")Integer id, @Param("password")String password);
}
