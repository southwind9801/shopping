package com.southwind.entity;

import lombok.Data;

import java.util.Date;

@Data
public class UserAddress {
	private Integer id;
	private Integer userId;
	private String address;
	private Date createTime;
	private Integer isDefault;
	private String remark;
}
