package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.PersonMaintenance;
import com.example.eschool.domain.PersonRecharge;
import com.example.eschool.service.PersonRechargeService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/personRecharge")
public class PersonRechargeController {

    @Autowired
    private PersonRechargeService personRechargeService;

    //按类型和查询用户一卡通或热水充值记录
    @PostMapping("/list")
    public Result<List<PersonRecharge>> list(@RequestBody Map map){
        String sid = map.get("sid").toString();
        String type = map.get("type").toString();
        LambdaQueryWrapper<PersonRecharge> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(PersonRecharge::getSid,sid);
        queryWrapper.eq(PersonRecharge::getType,type);
        queryWrapper.orderByDesc(PersonRecharge::getTime);
        queryWrapper.last("limit 7");
        List<PersonRecharge> result =  personRechargeService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }
    //新增一卡通或热水充值记录
    @PostMapping("/add")
    public Result<PersonRecharge> add (@RequestBody PersonRecharge personRecharge){
//        String sid = map.get("sid").toString();
//        String type = map.get("type").toString();
//        Double amount = Double.parseDouble(map.get("amount").toString());

        LocalDateTime now = LocalDateTime.now();
        personRecharge.setTime(now);
        personRechargeService.save(personRecharge);
        return Result.success(personRecharge,"新增成功");

//        queryWrapper.eq(PersonRecharge::getSid,sid);
//        queryWrapper.eq(PersonRecharge::getType,type);
//        queryWrapper.eq(PersonRecharge::getSid,sid);
//        queryWrapper.eq(PersonRecharge::getSid,sid);

    }

}
