package com.example.eschool.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.eschool.domain.Business;
import com.example.eschool.mapper.BusinessMapper;
import com.example.eschool.service.BusinessService;
import org.springframework.stereotype.Service;

@Service
public class BusinessServiceImpl extends ServiceImpl<BusinessMapper, Business> implements BusinessService {
}
