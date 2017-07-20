package com.outlines.project.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.outlines.project.entity.IngredientEntity;

@Repository("serviceDao")
public class IngredientDAOImpl implements IngredientDAO{
	private static final Logger logger = LoggerFactory.getLogger(IngredientDAOImpl.class);
	
	@Autowired
	public SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;
	}	
	
	@Override
	public void addIngredient(IngredientEntity i) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.save(i);
	}
	

	@Override
	public void updateIngredient(IngredientEntity i) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		session.persist(i);
		logger.info("Ingredient saved successfully, Ingredient Details = " + i);
	}
	@SuppressWarnings("unchecked")
	@Override
	public List<IngredientEntity> listIngredient() {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		List<IngredientEntity> ingredientlist = session.createQuery("from IngredientEntity").list();
		for(IngredientEntity in : ingredientlist)
		{
			logger.info("Ingredient List : " + in);
		}
		return ingredientlist;
	}

	@Override
	public IngredientEntity getIngredientById(int id) {
		// TODO Auto-generated method stub
		Session session = sessionFactory.openSession();
		IngredientEntity ingredientEnity = (IngredientEntity) session.get(IngredientEntity.class, id);
		session.close();
		return ingredientEnity;
		
		/*Session session = this.sessionFactory.getCurrentSession();
		IngredientEntity in = (IngredientEntity) session.load(IngredientEntity.class, new Integer(id));
		return in;*/
	}

	@Override
	public void deleteIngredient(int id) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.getCurrentSession();
		IngredientEntity in = (IngredientEntity) session.load(IngredientEntity.class, new Integer(id));
		if(null != in){
			session.delete(in);
		}
		logger.info("Ingredient deleted, Ingredient detail = " + in);
	}
	
}
