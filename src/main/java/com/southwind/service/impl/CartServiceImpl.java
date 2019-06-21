package com.southwind.service.impl;

import com.southwind.entity.Cart;
import com.southwind.repository.CartRepository;
import com.southwind.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CartServiceImpl implements CartService {
    @Autowired
    private CartRepository cartRepository;

    public void save(Cart cart) {
        cartRepository.save(cart);
    }

    public List<Cart> findAllByUserId(int id) {
        return cartRepository.findAllByUserId(id);
    }

    public void deleteById(int id) {
        cartRepository.deleteById(id);
    }

    public void update(int id, int quantity, int cost) {
        Cart cart = new Cart();
        cart.setId(id);
        cart.setQuantity(quantity);
        cart.setCost(cost);
        cartRepository.update(cart);
    }
}
