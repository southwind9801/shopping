package com.southwind.service;

import com.southwind.entity.User;
import com.southwind.entity.UserAddress;

import java.util.List;

public interface UserService {
    public User login(String loginName, String passWord);
    public List<UserAddress> findAllAddressByUserId(int id);
    public void register(User user);
}
