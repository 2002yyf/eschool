package com.example.eschool.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class OrderWaterRecord implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer rid;
    private String buyer;
    private String phone;
    private String building;
    private String room;
    private String type;
    private Integer number;
    private LocalDateTime time;
}
