package com.example.eschool.domain;

import com.baomidou.mybatisplus.annotation.TableId;
import lombok.Data;

import java.io.Serializable;

@Data
public class Business implements Serializable {
    @TableId
    private Integer bid;
    private String password;
    private String name;
    private String type;
    private String address;
}
