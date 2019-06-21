package com.southwind.entity;

import lombok.Data;

@Data
public class OrderDetail {
	private Integer id;
	private Order order;
	private Product product;
	private Integer quantity;
	private Integer cost;
}
