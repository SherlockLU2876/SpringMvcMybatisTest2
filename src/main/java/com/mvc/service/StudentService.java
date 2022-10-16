package com.mvc.service;

import com.mvc.pojo.Student;

import java.util.List;

public interface StudentService {
    //全部查询
    List<Student> queryAllStudent();

    //增
    int addStudent(Student student);
}
