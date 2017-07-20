package com.outlines.project.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.outlines.project.dao.ProductDAOImpl;
import com.outlines.project.entity.ProductEntity;

@Repository("productDao")
public class ProductDAOImpl implements ProductDAO{
	private static final Logger logger = LoggerFactory.getLogger(ProductDAOImpl.class);
	
	private ProductDAO productDao;
	
	@Autowired
	public SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}

	@Override
	public void addProduct(ProductEntity p) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(p);
	}

	@Transactional
	@Override
	public void updateProduct(ProductEntity pro) {
		// TODO Auto-generated method stub

		Session session = this.sessionFactory.getCurrentSession();
		session.saveOrUpdate(pro);
		
		logger.info("Product saved successfully, Product Details(updateProduct) = "+pro);
	}
	
	@SuppressWarnings("unchecked")
	@Override
	public List<ProductEntity> listProduct() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<ProductEntity> productList = session.createQuery("from ProductEntity").list();
		for(ProductEntity p : productList){
			logger.info("Product List(listProduct):"+p);
		}
		return productList;
	}

	@Override
	public ProductEntity getProductById(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		ProductEntity p = (ProductEntity) session.load(ProductEntity.class, new Integer(id));
		logger.info("Product loaded sucessfully , Product Details (getProductById)= " + p);
		return p;
	}

	@Override
	public void deleteProduct(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		ProductEntity p = (ProductEntity) session.load(ProductEntity.class, new Integer(id));
		if(null != p){
			session.delete(p);
		}
		logger.info("Product deleted, product detail(deleteProduct) = " + p);
	}

}
