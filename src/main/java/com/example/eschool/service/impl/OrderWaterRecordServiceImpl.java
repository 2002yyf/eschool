package com.example.eschool.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.eschool.domain.OrderWaterRecord;
import com.example.eschool.mapper.OrderWaterRecordMapper;
import com.example.eschool.service.OrderWaterRecordService;
import org.springframework.stereotype.Service;

@Service
public class OrderWaterRecordServiceImpl extends ServiceImpl<OrderWaterRecordMapper, OrderWaterRecord> implements OrderWaterRecordService {
}
