package com.example.eschool.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.example.eschool.domain.Student;
import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface StudentMapper  extends BaseMapper<Student> {
}
