package com.outlines.project.dao;

import java.util.List;

import com.outlines.project.entity.IngredientEntity;
import com.outlines.project.entity.ProductEntity;

public interface IngredientDAO {
	public void addIngredient(IngredientEntity i);
	public void updateIngredient(IngredientEntity i);
	public List<IngredientEntity> listIngredient();
	public IngredientEntity getIngredientById(int id);
	public void deleteIngredient(int id);
}
