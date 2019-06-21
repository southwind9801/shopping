package com.southwind.repository;

import com.southwind.entity.UserAddress;

import java.util.List;

public interface AddressRepository {
    public void save(UserAddress userAddress);
    public List<UserAddress> findAllByUserId(int id);
}
