package com.sz.dao;

import com.sz.pojo.Student;
import org.apache.ibatis.annotations.Param;

public interface StudentDao {


    Student findUser(@Param("num")Integer num, @Param("password")String password);

    Student createUser(@Param("num")Integer num, @Param("password")String password);

    Student check(@Param("id")Integer id);
}
