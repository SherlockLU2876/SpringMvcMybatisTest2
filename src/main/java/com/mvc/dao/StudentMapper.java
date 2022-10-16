package com.mvc.dao;

import com.mvc.pojo.Student;

import java.util.List;

public interface StudentMapper {

    //全部查询
    List<Student> queryAllStudent();

    //增
    int addStudent(Student student);

}
