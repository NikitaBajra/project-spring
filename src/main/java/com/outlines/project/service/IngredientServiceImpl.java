package com.outlines.project.service;

import java.util.List;

import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.outlines.project.dao.IngredientDAO;
import com.outlines.project.entity.IngredientEntity;

@Service
public class IngredientServiceImpl implements IngredientService{
	public IngredientDAO ingredientDao;
	
	public void setIngredientDao(IngredientDAO ingredientDao) {
		this.ingredientDao = ingredientDao;
	}

	@Override
	public void addIngredient(IngredientEntity i) {
		// TODO Auto-generated method stub
		this.ingredientDao.addIngredient(i);
	}

	
	@Override
	public void updateIngredient(IngredientEntity i) {
		// TODO Auto-generated method stub
		this.ingredientDao.updateIngredient(i);
	}

	
	@Override
	public List<IngredientEntity> listIngredient() {
		// TODO Auto-generated method stub
		return this.ingredientDao.listIngredient();
	}

	
	@Override
	public IngredientEntity getIngredientById(int id) {
		// TODO Auto-generated method stub
		return this.ingredientDao.getIngredientById(id);
	}

	
	@Override
	public void deleteIngredient(int id) {
		// TODO Auto-generated method stub
		this.ingredientDao.deleteIngredient(id);
	}
	
}
