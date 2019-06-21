package com.southwind.entity;

import lombok.Data;
import java.util.Date;
import java.util.List;

@Data
public class Order {
	private Integer id;
	private Integer userId;
	private String userAddress;
	private Date createTime;
	private Integer cost;
	private String serialNumber;
	private List<OrderDetail> orderDetails;
}
