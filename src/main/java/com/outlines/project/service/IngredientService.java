package com.outlines.project.service;

import java.util.List;

import com.outlines.project.entity.IngredientEntity;

public interface IngredientService {
	public void addIngredient(IngredientEntity i);
	public void updateIngredient(IngredientEntity i);
	public List<IngredientEntity> listIngredient();
	public IngredientEntity getIngredientById(int id);
	public void deleteIngredient(int id);
}
