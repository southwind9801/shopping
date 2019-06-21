package com.southwind.entity;

import lombok.Data;

@Data
public class Cart {
    private Integer id;
    private Product product;
    private Integer quantity;
    private Integer cost;
    private User user;
}
