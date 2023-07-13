package com.example.eschool.domain;

import lombok.Data;
import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;

import java.io.Serializable;

@Data
public class Student implements Serializable {
    private Integer sid;
    private String sname;
    private String password;
    private String grade;
    private String building;
    private String room;
    private Double cardAmount;
    private Double hotWater;
    private String phone;
}
