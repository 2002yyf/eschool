package com.example.eschool.controller;


import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.example.eschool.domain.Legwork;
import com.example.eschool.domain.PersonRecharge;
import com.example.eschool.service.LegworkService;
import com.example.eschool.service.PersonRechargeService;
import com.example.eschool.utils.Result;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.time.LocalDateTime;
import java.util.List;
import java.util.Map;

@CrossOrigin
@RestController
@RequestMapping("/legwork")
public class LegworkController {

    @Autowired
    private LegworkService legworkService;



    //查询全部订单
    @PostMapping("/listAll")
    public Result<List<Legwork>> listAll(){
        LambdaQueryWrapper<Legwork> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.orderByDesc(Legwork::getTime);
//        queryWrapper.last("limit 7");
        List<Legwork> result =  legworkService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }


    //查询全部待帮助订单
    @PostMapping("/listAllNeedHelp")
    public Result<List<Legwork>> listAllNeedHelp(){
        LambdaQueryWrapper<Legwork> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Legwork::getStatus,"待帮助");
        queryWrapper.orderByDesc(Legwork::getTime);
//        queryWrapper.last("limit 7");
        List<Legwork> result =  legworkService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }

    //按发布者查询
    @PostMapping("/listByPublisher")
    public Result<List<Legwork>> listByPublisher(@RequestBody Map map){
        String publisherId = map.get("publisherid").toString();
        LambdaQueryWrapper<Legwork> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Legwork::getPublisherid,publisherId);
        queryWrapper.orderByDesc(Legwork::getTime);
//        queryWrapper.last("limit 7");
        List<Legwork> result =  legworkService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }

    //按接受者查询
    @PostMapping("/listBySelector")
    public Result<List<Legwork>> listBySelector(@RequestBody Map map){
        String selectorid = map.get("selectorid").toString();
        LambdaQueryWrapper<Legwork> queryWrapper = new LambdaQueryWrapper<>();
        queryWrapper.eq(Legwork::getSelectorid,selectorid);
        queryWrapper.orderByDesc(Legwork::getTime);
//        queryWrapper.last("limit 7");
        List<Legwork> result =  legworkService.list(queryWrapper);
        return Result.success(result,"查询成功");
    }

}
