package com.example.eschool.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;

@Data
public class Dorm implements Serializable {
    @TableId
    private Integer dormid;
    private Integer building;
    private Integer room;
    private Double water;
    private Double electricity;
}
