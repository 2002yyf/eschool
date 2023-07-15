package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.DormMaintenance;
import com.example.eschool.service.DormMaintenanceService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/dormMaintenance")
public class DormMaintenanceController {

    @Autowired
    private DormMaintenanceService DormMaintenanceService;

    //查询宿舍维修记录
    @PostMapping("/list")
    public Result<List<DormMaintenance>> list(@RequestBody Map map){
        String building = map.get("building").toString();
        String room = map.get("room").toString();
        LambdaQueryWrapper<DormMaintenance> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(DormMaintenance::getBuilding,building);
        queryWrapper.eq(DormMaintenance::getRoom,room);
        queryWrapper.orderByDesc(DormMaintenance::getTime);
        queryWrapper.last("limit 7");
        List<DormMaintenance> result =  DormMaintenanceService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }

    //新增宿舍维修记录
    @PostMapping("/add")
    public Result<DormMaintenance> add (@RequestBody DormMaintenance DormMaintenance){
//        String sid = map.get("sid").toString();
//        String type = map.get("type").toString();
//        Double amount = Double.parseDouble(map.get("amount").toString());

        LocalDateTime now = LocalDateTime.now();
        DormMaintenance.setTime(now);
        DormMaintenanceService.save(DormMaintenance);
        return Result.success(DormMaintenance,"新增成功");

//        queryWrapper.eq(DormRecharge::getSid,sid);
//        queryWrapper.eq(DormRecharge::getType,type);
//        queryWrapper.eq(DormRecharge::getSid,sid);
//        queryWrapper.eq(DormRecharge::getSid,sid);

    }

}
