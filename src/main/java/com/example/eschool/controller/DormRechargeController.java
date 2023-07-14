package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.DormRecharge;
import com.example.eschool.domain.PersonRecharge;
import com.example.eschool.service.DormRechargeService;
import com.example.eschool.service.PersonRechargeService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/dormRecharge")
public class DormRechargeController {

    @Autowired
    private DormRechargeService dormRechargeService;

    //按类型和查询宿舍水、电费充值记录
    @GetMapping("/list")
    public Result<List<DormRecharge>> list(@RequestBody Map map){
        String building = map.get("building").toString();
        String room = map.get("room").toString();
        String type = map.get("type").toString();
        LambdaQueryWrapper<DormRecharge> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(DormRecharge::getBuilding,building);
        queryWrapper.eq(DormRecharge::getRoom,room);
        queryWrapper.eq(DormRecharge::getType,type);
        List<DormRecharge> result =  dormRechargeService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }

    @PostMapping("/add")
    public Result<DormRecharge> add (@RequestBody DormRecharge dormRecharge){
//        String sid = map.get("sid").toString();
//        String type = map.get("type").toString();
//        Double amount = Double.parseDouble(map.get("amount").toString());

        LocalDateTime now = LocalDateTime.now();
        dormRecharge.setTime(now);
        dormRechargeService.save(dormRecharge);
        return Result.success(dormRecharge,"新增成功");



    }

}
