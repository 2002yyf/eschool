package com.example.eschool.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.eschool.domain.Dorm;
import com.example.eschool.mapper.DormMapper;
import com.example.eschool.service.DormService;
import org.springframework.stereotype.Service;

@Service
public class DormServiceImpl extends ServiceImpl<DormMapper, Dorm> implements DormService {
}
