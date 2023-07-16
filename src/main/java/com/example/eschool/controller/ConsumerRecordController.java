package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.ConsumerRecord;
import com.example.eschool.service.ConsumerRecordService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/consumerRecord")
public class ConsumerRecordController {

    @Autowired
    private ConsumerRecordService consumerRecordService;

    //消费交易记录查询
    @PostMapping("/list")
    public Result<List<ConsumerRecord>> list(@RequestBody Map map){
        String sid = map.get("sid").toString();
        LambdaQueryWrapper<ConsumerRecord> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(ConsumerRecord::getSid,sid);
        queryWrapper.orderByDesc(ConsumerRecord::getTime);
        queryWrapper.last("limit 7");
        List<ConsumerRecord> result =  consumerRecordService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }


}
