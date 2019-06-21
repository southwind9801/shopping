package com.southwind.service.impl;

import com.southwind.entity.UserAddress;
import com.southwind.repository.AddressRepository;
import com.southwind.service.AddressService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AddressServiceImpl implements AddressService {
    @Autowired
    private AddressRepository addressRepository;

    public void save(UserAddress userAddress) {
        addressRepository.save(userAddress);
    }

    public List<UserAddress> findAllByUserId(int id) {
        return addressRepository.findAllByUserId(id);
    }
}
