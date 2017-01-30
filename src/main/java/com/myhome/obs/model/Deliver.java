package com.myhome.obs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="deliver")
public class Deliver {
	@Id
	@GeneratedValue
	private Long id;

	@Column(name = "itemid")
	private Long itemid;

	@Column(name = "username")
	private String username;

	@Column(name = "itemname")
	private String itemname;

	@Column(name = "price")
	private int price;

	@Column(name = "qty")
	private int qty;

	@Column(name = "totalprice")
	private int totalPrice;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public Long getItemid() {
		return itemid;
	}

	public void setItemid(Long itemid) {
		this.itemid = itemid;
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

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public int getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(int totalPrice) {
		this.totalPrice = totalPrice;
	}
	@Override
	public String toString() {
		return "Cart: " + id + " " + itemid + " " + itemname + " " + price + " " + qty + " " + totalPrice + " "
				+ username;
	}


}
