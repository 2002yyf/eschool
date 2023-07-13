package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.Dorm;
import com.example.eschool.service.DormService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/dorm")
public class DormController {

    @Autowired
    private DormService dormService;

    //充值水电费
    @PostMapping("/recharge")
    public Result<Dorm> addWater(@RequestBody Map map){
        String building = map.get("building").toString();
        String room = map.get("room").toString();
        Double amount = Double.parseDouble(map.get("amount").toString());
        String type = map.get("type").toString();
        LambdaQueryWrapper<Dorm> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Dorm::getBuilding,building);
        queryWrapper.eq(Dorm::getRoom,room);
        Dorm dorm = dormService.getOne(queryWrapper);
        if(dorm == null){
            return Result.error("0","宿舍不存在");
        }
        if(type.equals("水")) {
            dorm.setWater(dorm.getWater() + amount);
        }if(type.equals("电")){
            dorm.setElectricity(dorm.getElectricity() + amount);
        }
        dormService.updateById(dorm);
        return Result.success(dorm,"充值成功");
    }

    //查询水电费
    @GetMapping("/inquire")
    public Result<Dorm> inquire(@RequestBody Map map){
        String building = map.get("building").toString();
        String room = map.get("room").toString();
        LambdaQueryWrapper<Dorm> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Dorm::getBuilding,building);
        queryWrapper.eq(Dorm::getRoom,room);
        Dorm dorm =dormService.getOne(queryWrapper);
        if(dorm == null){
            return Result.error("0","宿舍不存在");
        }
        return Result.success(dorm,"查询成功");
    }


}
