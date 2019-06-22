package com.southwind.service.impl;

import com.southwind.entity.Cart;
import com.southwind.entity.Order;
import com.southwind.entity.OrderDetail;
import com.southwind.repository.CartRepository;
import com.southwind.repository.OrderRepository;
import com.southwind.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;
import java.util.Random;

@Service
public class OrderServiceImpl implements OrderService {
    @Autowired
    private OrderRepository orderRepository;
    @Autowired
    private CartRepository cartRepository;

    @Override
    public Order addOrder(int userId,String userAddress,int cost) {
        String seriaNumber = null;
        try {
            StringBuffer result = new StringBuffer();
            for(int i=0;i<32;i++) {
                result.append(Integer.toHexString(new Random().nextInt(16)));
            }
            seriaNumber =  result.toString().toUpperCase();
        } catch (Exception e) {
            e.printStackTrace();
        }
        Date date = new Date();
        Order order = new Order();
        order.setUserId(userId);
        order.setUserAddress(userAddress);
        order.setCost(cost);
        order.setCreateTime(date);
        order.setSerialNumber(seriaNumber);
        orderRepository.addOrder(order);
        //添加orderDetail
        List<Cart> carts = cartRepository.findAllByUserId(userId);
        for(Cart cart:carts){
            OrderDetail orderDetail = new OrderDetail();
            orderDetail.setOrder(order);
            orderDetail.setProduct(cart.getProduct());
            orderDetail.setQuantity(cart.getQuantity());
            orderDetail.setCost(cart.getCost());
            orderRepository.addOrderDetail(orderDetail);
        }
        cartRepository.clearCartByUserId(userId);
        return order;
    }

    @Override
    public List<OrderDetail> findByOrderId(int orderId) {
        return orderRepository.findByOrderId(orderId);
    }

    @Override
    public List<Order> findByUserId(int userId) {
        List<Order> list = orderRepository.findByUserId(userId);
        for(Order order:list){
            List<OrderDetail> details = orderRepository.findOrderDetailByOrderId(order.getId());
            order.setOrderDetails(details);
        }
        return list;
    }
}
