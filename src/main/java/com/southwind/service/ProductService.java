package com.southwind.service;

import com.southwind.entity.Product;
import com.southwind.entity.ProductCategory;

import java.util.List;

public interface ProductService {
    public List<ProductCategory> findAllProductCategory();
    public List<Product> findAllProductByLevel(ProductCategory productCategory);
    public Product findById(int id);
    public List<Product> findAllByKeyWord(String keyWord);
}
