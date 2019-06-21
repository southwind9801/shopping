package com.southwind.repository;

import com.southwind.entity.Cart;

import java.util.List;

public interface CartRepository {
    public void save(Cart cart);
    public List<Cart> findAllByUserId(int id);
    public void deleteById(int id);
    public void update(Cart cart);
    public void clearCartByUserId(int userId);
}
