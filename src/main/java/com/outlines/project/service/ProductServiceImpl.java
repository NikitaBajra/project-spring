package com.outlines.project.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.outlines.project.dao.ProductDAO;
import com.outlines.project.entity.ProductEntity;

@Transactional
@Service
public class ProductServiceImpl implements ProductService{
	public ProductDAO productDao;
	
	@Autowired
	public void setProductDao(ProductDAO productDao) {
		this.productDao = productDao;
	}

	@Transactional
	@Override
	public void addProduct(ProductEntity p) {
		// TODO Auto-generated method stub
		//System.out.println("this is debug for p "+p.getOrigin_at()+" "+p.getP_brand()+" "+p.getP_company()+" "+p.getP_name()+" "+p.getManuf_date());
		this.productDao.addProduct(p);
	}

	@Transactional
	@Override
	public void updateProduct(ProductEntity p) {
		// TODO Auto-generated method stub
		this.productDao.updateProduct(p);
	}

	@Transactional
	@Override
	public List<ProductEntity> listProduct() {
		// TODO Auto-generated method stub
		return this.productDao.listProduct();
	}

	@Transactional
	@Override
	public ProductEntity getProductById(int id) {
		// TODO Auto-generated method stub
		return this.productDao.getProductById(id);
	}

	@Transactional
	@Override
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		this.productDao.deleteProduct(id);
	}

}
