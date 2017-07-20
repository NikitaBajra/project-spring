package com.outlines.project.entity;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "list_product")
public class ProductEntity implements Serializable{
	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	@Column(name = "product_id")
	private int p_id;
	
	@Column(name = "product_name")
	private String p_name;
	
	@Column(name = "product_company")
	private String p_company;
	
	@Column(name = "product_brand")
	private String p_brand;
	
	@Column(name = "manf_date")
	private Date manuf_date;
	
	@Column(name = "origin_at")
	private String origin_at;
	
	//private List<IngredientEntity> ingredientEntities;
	/*@Autowired
	@OneToMany(mappedBy="list_product")*/
	/*@JoinTable(name = "STUDENT_PHONE", joinColumns = { @JoinColumn(name = "STUDENT_ID") }, inverseJoinColumns = { @JoinColumn(name = "PHONE_ID") })*/
	/*private java.util.Set<IngredientEntity> ingredientEntities = new HashSet<IngredientEntity>();*/
	
	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	public String getP_company() {
		return p_company;
	}
	public void setP_company(String p_company) {
		this.p_company = p_company;
	}
	public String getP_brand() {
		return p_brand;
	}
	public void setP_brand(String p_brand) {
		this.p_brand = p_brand;
	}
	public Date getManuf_date() {
		return manuf_date;
	}
	public void setManuf_date(Date manuf_date) {
		this.manuf_date = manuf_date;
	}
	public String getOrigin_at() {
		return origin_at;
	}
	public void setOrigin_at(String origin_at) {
		this.origin_at = origin_at;
	}
	
	/*@OneToMany(targetEntity = IngredientEntity.class , mappedBy = "productID", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
	public List<IngredientEntity> getIngredientEntities() {
		return ingredientEntities;
	}

	public void setIngredientEntities(List<IngredientEntity> ingredientEntities) {
		this.ingredientEntities = ingredientEntities;
	}
*/
	@Override
	public String toString() {
		return "ProductEntity [p_id=" + p_id + ", p_name=" + p_name + ", p_company=" + p_company + ", p_brand="
				+ p_brand + ", manuf_date=" + manuf_date + ", origin_at=" + origin_at + "]";
	}	
}
