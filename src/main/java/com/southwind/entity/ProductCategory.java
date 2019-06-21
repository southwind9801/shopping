package com.southwind.entity;

import lombok.Data;

import java.util.List;

@Data
public class ProductCategory {
	private Integer id;
	private String name;
	private Integer type;
	private Integer parentId;
	private List<ProductCategory> productCategories;
	private List<Product> levelOneProducts;

	public ProductCategory(Integer type, Integer parentId) {
		this.type = type;
		this.parentId = parentId;
	}

	public ProductCategory() {
	}
}
