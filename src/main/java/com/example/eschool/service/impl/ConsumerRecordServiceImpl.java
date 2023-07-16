package com.example.eschool.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.eschool.domain.ConsumerRecord;
import com.example.eschool.mapper.ConsumerRecordMapper;
import com.example.eschool.service.ConsumerRecordService;
import org.springframework.stereotype.Service;

@Service
public class ConsumerRecordServiceImpl extends ServiceImpl<ConsumerRecordMapper, ConsumerRecord> implements ConsumerRecordService {
}
