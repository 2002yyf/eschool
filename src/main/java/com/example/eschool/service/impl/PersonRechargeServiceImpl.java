package com.example.eschool.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.eschool.domain.PersonRecharge;
import com.example.eschool.mapper.PersonRechargeMapper;
import com.example.eschool.service.PersonRechargeService;
import org.springframework.stereotype.Service;

@Service
public class PersonRechargeServiceImpl extends ServiceImpl<PersonRechargeMapper, PersonRecharge> implements PersonRechargeService {
}
