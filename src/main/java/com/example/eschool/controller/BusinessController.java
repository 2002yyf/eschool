package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.Business;
import com.example.eschool.service.BusinessService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/business")
public class BusinessController {

    @Autowired
    private BusinessService businessService;


    //用户登录
    @PostMapping("/login")
    public Result<Business> login(@RequestBody Map map){

        String bid = map.get("bid").toString();
        String password = map.get("password").toString();
        LambdaQueryWrapper<Business> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Business::getBid,bid);
        Business business = businessService.getOne(queryWrapper);

        if (business == null){
            return Result.error("0","无此用户");
        }if (!business.getPassword().equals(password)){
            return Result.error("0","密码错误");
        }
        return Result.success(business,"登陆成功");

    }

    //注册商家
    @PostMapping("/register")
    public Result<Business> register(@RequestBody Business business){

        String bid = business.getBid().toString();
        LambdaQueryWrapper<Business> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Business::getBid,bid);
        Business old = businessService.getOne(queryWrapper);
        if (old != null){
            return Result.error("0","用户已存在");
        }

        businessService.save(business);
        return Result.success(business,"注册成功");
    }


}
