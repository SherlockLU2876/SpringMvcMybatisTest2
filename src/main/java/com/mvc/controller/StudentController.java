package com.mvc.controller;

import com.mvc.pojo.Student;
import com.mvc.service.StudentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Controller
@RequestMapping("/student")
public class StudentController {

    @Autowired
    @Qualifier("StudentServiceImpl")
    private StudentService studentService;

    //查询全部学生，并返回一个书籍展示页
    @RequestMapping("/allstudent")
    public String list(Model model){
        List<Student> studentList= studentService.queryAllStudent();
        model.addAttribute("studentList",studentList);
        return "allstudent";
    }
    //跳转到新增页面
    @RequestMapping("/toaddstudent")
    public String toAddpaper(){
        return "addstudent";
    }

    //添加书籍
    @RequestMapping("/addstudent")
    public String addstudent(Student student){
        System.out.println(student);
        studentService.addStudent(student);
        return "redirect:/student/allstudent";
    }
}
