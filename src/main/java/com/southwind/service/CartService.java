package com.southwind.service;

import com.southwind.entity.Cart;

import java.util.List;

public interface CartService {
    public void save(Cart cart);
    public List<Cart> findAllByUserId(int id);
    public void deleteById(int id);
    public void update(int id, int quantity, int cost);
}
