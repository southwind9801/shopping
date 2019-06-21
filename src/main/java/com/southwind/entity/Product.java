package com.southwind.entity;

import lombok.Data;

import java.util.List;

@Data
public class Product {
	private Integer id;
	private String name;
	private Integer price;
	private Integer stock;
	private Integer categoryLevel1Id;
	private Integer categoryLevel2Id;
	private Integer categoryLevel3Id;
	private String fileName;
	private Integer isDelete;
	private List<OrderDetail> orderDetails;
	private Integer quantity;
}
