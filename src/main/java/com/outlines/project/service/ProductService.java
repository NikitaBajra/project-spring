package com.outlines.project.service;

import java.util.List;

import com.outlines.project.entity.ProductEntity;

public interface ProductService {
	public void addProduct(ProductEntity p);
	public void updateProduct(ProductEntity p);
	public List<ProductEntity> listProduct();
	public ProductEntity getProductById(int id);
	public void deleteProduct(int id);
}
