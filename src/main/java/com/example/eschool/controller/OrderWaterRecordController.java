package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.DormRecharge;
import com.example.eschool.domain.OrderWaterRecord;
import com.example.eschool.service.OrderWaterRecordService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/orderWaterRecord")
public class OrderWaterRecordController {

    @Autowired
    private OrderWaterRecordService orderWaterRecordService;

    //按类型和查询宿舍水、电费充值记录
    @PostMapping("/list")
    public Result<List<OrderWaterRecord>> list(@RequestBody Map map){
        String building = map.get("building").toString();
        String room = map.get("room").toString();
        LambdaQueryWrapper<OrderWaterRecord> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(OrderWaterRecord::getBuilding,building);
        queryWrapper.eq(OrderWaterRecord::getRoom,room);
        List<OrderWaterRecord> result =  orderWaterRecordService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }

    @PostMapping("/add")
    public Result<OrderWaterRecord> add (@RequestBody OrderWaterRecord orderWaterRecord){
//        String sid = map.get("sid").toString();
//        String type = map.get("type").toString();
//        Double amount = Double.parseDouble(map.get("amount").toString());

        LocalDateTime now = LocalDateTime.now();
        orderWaterRecord.setTime(now);
        orderWaterRecordService.save(orderWaterRecord);
        return Result.success(orderWaterRecord,"新增成功");



    }

}
