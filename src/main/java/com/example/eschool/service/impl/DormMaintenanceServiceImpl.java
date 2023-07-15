package com.example.eschool.service.impl;

import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.example.eschool.domain.DormMaintenance;
import com.example.eschool.domain.PersonMaintenance;
import com.example.eschool.mapper.DormMaintenanceMapper;
import com.example.eschool.mapper.PersonMaintenanceMapper;
import com.example.eschool.service.DormMaintenanceService;
import com.example.eschool.service.PersonMaintenanceService;
import org.springframework.stereotype.Service;

@Service
public class DormMaintenanceServiceImpl extends ServiceImpl<DormMaintenanceMapper, DormMaintenance> implements DormMaintenanceService {
}




