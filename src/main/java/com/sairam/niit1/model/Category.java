package com.sairam.niit1.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="category")
public class Category {
	@Id
	@Column(name="categoryid")
private int catId;
	@Column(name="categoryName")
private String CatName;
	@Column(name="categorydecp")
private String catDescription;
public int getCatId() {
	return catId;
}
public void setCatId(int catId) {
	this.catId = catId;
}
public String getCatName() {
	return CatName;
}
public void setCatName(String catName) {
	CatName = catName;
}
public String getCatDescription() {
	return catDescription;
}
public void setCatDescription(String catDescription) {
	this.catDescription = catDescription;
}

}