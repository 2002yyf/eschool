package com.example.eschool.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class ConsumerRecord implements Serializable {
    @TableId(type = IdType.AUTO)
    private Integer cid;
    private Integer sid;
    private String type;
    private String address;
    private Double amount;
    private LocalDateTime time;
}
