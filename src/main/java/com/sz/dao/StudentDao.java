package com.sz.dao;

import com.sz.pojo.Student;
import com.sz.pojo.Teacher;
import org.apache.ibatis.annotations.Param;


public interface StudentDao {


    Student findUser(@Param("num")Integer num, @Param("password")String password);

    Student createUser(@Param("num")Integer num, @Param("password")String password);

    void update(@Param("username")String username, @Param("age")String age, @Param("phone")String phone, @Param("email")String email, @Param("date")String date, @Param("idNum")String idNum, @Param("sex")String sex, @Param("introduce")String introduce, @Param("id")Integer id);

    Teacher findTeacher(@Param("id")Integer id);

    Student checkUser(@Param("num")Integer num);
}
