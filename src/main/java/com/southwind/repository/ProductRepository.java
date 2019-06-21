package com.southwind.repository;

import com.southwind.entity.Product;

import java.util.List;

public interface ProductRepository {
    public Product findById(int id);
    public List<Product> findAllByKeyWord(String keyWord);
}
