package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.extension.api.R;
import com.example.eschool.domain.Business;
import com.example.eschool.domain.Student;
import com.example.eschool.service.StudentService;
import com.example.eschool.utils.Result;
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

        String sid = student.getSid().toString();
        LambdaQueryWrapper<Student> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Student::getSid,sid);
        Student old = studentService.getOne(queryWrapper);
        if (old != null){
            return Result.error("0","用户已存在");
        }
          studentService.save(student);
          return Result.success(student);
    }

    //查询一卡通、热水余额
    @GetMapping("/inquire")
    public Result<Student> inquire(@RequestParam Integer sid){
        LambdaQueryWrapper<Student> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Student::getSid,sid);
        Student stu = studentService.getOne(queryWrapper);
        if(stu == null){
            return Result.error("0","学生不存在");
        }
        return Result.success(stu,"查询成功");
    }

    //充值一卡通，热水
    @PostMapping("/recharge")
    public Result<Student> recharge(@RequestBody Map map){
        String sid = map.get("sid").toString();
        Double amount = Double.parseDouble(map.get("amount").toString());
        String type = map.get("type").toString();
        LambdaQueryWrapper<Student> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Student::getSid,sid);
        Student stu = studentService.getOne(queryWrapper);
        if(stu == null){
            return Result.error("0","无此学生");
        }
        System.out.println(amount);
        System.out.println(stu.getCardAmount());
        if(type.equals("一卡通")){
            stu.setCardAmount(stu.getCardAmount()+amount);
        }
        if(type.equals("热水")){
            stu.setHotWater(stu.getHotWater()+amount);
        }
        studentService.updateById(stu);
        return Result.success(stu,"充值成功");
    }
}
