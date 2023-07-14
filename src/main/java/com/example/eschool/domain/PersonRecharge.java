package com.example.eschool.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;
import java.time.LocalDateTime;

@Data
public class PersonRecharge implements Serializable {
    @TableId
    private Integer sid;
    private String type;
    private Double amount;
    private LocalDateTime time;
}
