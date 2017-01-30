package com.myhome.obs.dao;

import java.util.List;

import com.myhome.obs.model.Cart;
import com.myhome.obs.model.Deliver;
import com.myhome.obs.model.User;

public interface UserDao {
	public User getUser(Long id);

	public boolean validateUser(User user);

	public Long insertOrUpdate(User user);

	public List<User> getAll();

	public Long insertCart(Cart cart);

	public List<Cart> getAllCart();

	public Cart get(Long id);

	public void delete(Long cartid);

	public void edit(Long id);

	String encrypt(String password);

	public Long insertOrUpdateDelivery(Deliver deliver);

	public Cart getCartId(Long id);

	public List<Cart> getCartRow();



}
