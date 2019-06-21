package com.southwind.entity;

import lombok.Data;

import java.util.List;

@Data
public class User {
	private Integer id;
	private String loginName;
	private String userName;
	private String password;
	private Integer sex;
	private String identityCode;
	private String email;
	private String mobile;
	private Integer type;
	private String fileName;
	private List<Order> order;
	private List<UserAddress> userAddresses;
	private List<Cart> carts;
}
