package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.PersonMaintenance;
import com.example.eschool.domain.PersonRecharge;
import com.example.eschool.service.PersonMaintenanceService;
import com.example.eschool.service.PersonRechargeService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/personMaintenance")
public class PersonMaintenanceController {

    @Autowired
    private PersonMaintenanceService personMaintenanceService;

    //查询个人维修记录
    @PostMapping("/list")
    public Result<List<PersonMaintenance>> list(@RequestBody Map map){
        String sid = map.get("sid").toString();
        LambdaQueryWrapper<PersonMaintenance> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(PersonMaintenance::getSid,sid);
        queryWrapper.orderByDesc(PersonMaintenance::getTime);
        queryWrapper.last("limit 7");
        List<PersonMaintenance> result =  personMaintenanceService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }

    //新增个人维修记录
    @PostMapping("/add")
    public Result<PersonMaintenance> add (@RequestBody PersonMaintenance personMaintenance){
//        String sid = map.get("sid").toString();
//        String type = map.get("type").toString();
//        Double amount = Double.parseDouble(map.get("amount").toString());

        LocalDateTime now = LocalDateTime.now();
        personMaintenance.setTime(now);
        personMaintenanceService.save(personMaintenance);
        return Result.success(personMaintenance,"新增成功");

//        queryWrapper.eq(PersonRecharge::getSid,sid);
//        queryWrapper.eq(PersonRecharge::getType,type);
//        queryWrapper.eq(PersonRecharge::getSid,sid);
//        queryWrapper.eq(PersonRecharge::getSid,sid);

    }

}
