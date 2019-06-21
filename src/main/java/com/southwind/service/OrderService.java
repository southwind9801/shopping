package com.southwind.service;

import com.southwind.entity.Order;
import com.southwind.entity.OrderDetail;

import java.util.List;

public interface OrderService {
    public Order addOrder(int userId, String userAddress, int cost);
    public List<OrderDetail> findByOrderId(int orderId);
    public List<Order> findByUserId(int userId);
}
