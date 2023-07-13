package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.Student;
import com.example.eschool.service.StudentService;
import com.example.eschool.utils.Result;
import org.apache.ibatis.annotations.Lang;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/student")
public class StudentController {

    @Autowired
    private StudentService studentService;


    //用户登录
    @PostMapping("/login")
    public Result<Student> login(@RequestBody Map map){

        String sid = map.get("sid").toString();
        String password = map.get("password").toString();
        LambdaQueryWrapper<Student> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Student::getSid,sid);
        Student stu = studentService.getOne(queryWrapper);

        if (stu==null){
            return Result.error("0","无此用户");
        }if (!stu.getPassword().equals(password)){
            return Result.error("0","密码错误");
        }
        return Result.success(stu,"登陆成功");

    }

    //注册学生
    @PostMapping("/register")
    public Result<Student> register(@RequestBody Student student){
//        String sid = map.get("sid").toString();
//        String password = map.get("password").toString();
//        LambdaQueryWrapper queryWrapper = new LambdaQueryWrapper<>();
//        queryWrapper.eq(Student::
          studentService.save(student);
          return Result.success(student);
    }


}
