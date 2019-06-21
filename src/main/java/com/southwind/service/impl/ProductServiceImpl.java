package com.southwind.service.impl;

import com.southwind.entity.Product;
import com.southwind.entity.ProductCategory;
import com.southwind.repository.ProductCategoryRepository;
import com.southwind.repository.ProductRepository;
import com.southwind.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {
    @Autowired
    private ProductCategoryRepository productCategoryRepository;
    @Autowired
    private ProductRepository productRepository;

    public List<ProductCategory> findAllProductCategory() {
        List<ProductCategory> list1 = productCategoryRepository.findProductCategoryByLevel(new ProductCategory(1,0));
        for(ProductCategory productCategory:list1){
            List<ProductCategory> list2 = productCategoryRepository.findProductCategoryByLevel(new ProductCategory(2,productCategory.getId()));
            for(ProductCategory productCategory2:list2){
                List<ProductCategory> list3 = productCategoryRepository.findProductCategoryByLevel(new ProductCategory(3,productCategory2.getId()));
                productCategory2.setProductCategories(list3);
            }
            productCategory.setProductCategories(list2);
        }
        //给一级分类添加对应的商品信息
        for (ProductCategory productCategory:list1){
            List<Product> products = productCategoryRepository.findAllProductByLevel(productCategory);
            productCategory.setLevelOneProducts(products);
        }
        return list1;
    }

    public List<Product> findAllProductByLevel(ProductCategory productCategory) {
        return productCategoryRepository.findAllProductByLevel(productCategory);
    }

    public Product findById(int id) {
        return productRepository.findById(id);
    }

    public List<Product> findAllByKeyWord(String keyWord) {
        return productRepository.findAllByKeyWord(keyWord);
    }

}
