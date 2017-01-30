package com.myhome.obs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="shop")
public class Shop {
	@Id
	@GeneratedValue
	private Long id;
	@Column(name = "username")
	private String username;
	@Column(name = "itemname")
	private String itemname;
	@Column(name = "price")
	private int price;

	@Override
	public String toString() {
		return "Shop: " + id + " " + username + " " + itemname + " " + price;
	}

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getItemname() {
		return itemname;
	}

	public void setItemname(String itemname) {
		this.itemname = itemname;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}
}
