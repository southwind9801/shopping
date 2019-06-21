package com.southwind.repository;

import com.southwind.entity.Product;
import com.southwind.entity.ProductCategory;

import java.util.List;

public interface ProductCategoryRepository {
    public List<ProductCategory> findProductCategoryByLevel(ProductCategory productCategory);
    public List<Product> findAllProductByLevel(ProductCategory productCategory);
}
