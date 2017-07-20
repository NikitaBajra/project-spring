package com.outlines.project.dao;

import java.util.List;

import com.outlines.project.entity.ProductEntity;

public interface ProductDAO {
	public void addProduct(ProductEntity p);
	public void updateProduct(ProductEntity p);
	public List<ProductEntity> listProduct();
	public ProductEntity getProductById(int id);
	public void deleteProduct(int id);
}
