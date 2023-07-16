package com.example.eschool.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class Legwork implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer hid;
    private String type;
    private LocalDateTime time;
    private String status;
    private String description;
    private String destination;
    private Double amount;
    private Integer publisherid;
    private Integer selectorid;

}
