package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.PersonRecharge;
import com.example.eschool.service.PersonRechargeService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/personRecharge")
public class PersonRechargeController {

    @Autowired
    private PersonRechargeService personRechargeService;

//    @GetMapping("/list")
//    public Result<List<PersonRecharge>> list(@RequestBody Map map){
//
//
//    }


}
