package com.example.eschool.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class DormMaintenance implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer mid;
    private String building;
    private String room;
    private String item;
    private String description;
    private String phone;
    private LocalDateTime time;
}
