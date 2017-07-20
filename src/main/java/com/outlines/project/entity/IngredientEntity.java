package com.outlines.project.entity;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.hibernate.annotations.ForeignKey;
import org.springframework.beans.factory.annotation.Autowired;

@Entity
@Table(name = "list_ingredient")
public class IngredientEntity implements Serializable{
	@Id
	@GeneratedValue(strategy= GenerationType.AUTO)
	@Column(name = "ingredient_id")
	private int ing_id;
	
	@Column(name = "ingredient_name")
	private String ing_name;
	
	@Column(name = "common_name")
	private String ing_common;
	
	@Column(name = "scientific_name")
	private String ing_scientific;
	
	private  ProductEntity product_id;
		
	public int getIng_id() {
		return ing_id;
	}
	public void setIng_id(int ing_id) {
		this.ing_id = ing_id;
	}
	public String getIng_name() {
		return ing_name;
	}
	public void setIng_name(String ing_name) {
		this.ing_name = ing_name;
	}
	public String getIng_common() {
		return ing_common;
	}
	public void setIng_common(String ing_common) {
		this.ing_common = ing_common;
	}
	public String getIng_scientific() {
		return ing_scientific;
	}
	public void setIng_scientific(String ing_scientific) {
		this.ing_scientific = ing_scientific;
	}
	
	
	@Override
	public String toString() {
		return "IngredientEntity [ing_id=" + ing_id + ", ing_name=" + ing_name + ", ing_common=" + ing_common
				+ ", ing_scientific=" + ing_scientific + ", product_id=" + product_id + "]";
	}
	@ManyToOne
	@JoinColumn(name = "product_id")
	public ProductEntity getProduct_id() {
		return product_id;
	}
	public void setProduct_id(ProductEntity product_id) {
		this.product_id = product_id;
	}
	
	
	
	
}
