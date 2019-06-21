package com.southwind.service.impl;

import com.southwind.entity.User;
import com.southwind.entity.UserAddress;
import com.southwind.repository.UserRepository;
import com.southwind.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {
    @Autowired
    private UserRepository userRepository;

    public User login(String loginName, String passWord) {
        return userRepository.login(loginName, passWord);
    }

    public List<UserAddress> findAllAddressByUserId(int id) {
        return userRepository.findAllAddressByUserId(id);
    }

    public void register(User user) {
        userRepository.register(user);
    }
}
