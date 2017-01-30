package com.myhome.obs.dao;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.List;

import javax.annotation.Resource;
import javax.sql.DataSource;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.myhome.obs.model.Cart;
import com.myhome.obs.model.Deliver;
import com.myhome.obs.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Resource
	private SessionFactory sessionFactory;

	@Autowired
	private DataSource dataSource;

	@Override
	@Transactional
	public User getUser(Long id) {

		Session session = sessionFactory.openSession();
		User user = (User) session.get(User.class, id);
		session.close();
		return user;
	}
	@Override
	@Transactional
	public Cart getCartId(Long cartid) {

		Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.get(Cart.class, cartid);
		session.close();
		return cart;
	}

	@Override
	@Transactional
	public Long insertOrUpdate(User user) {
		Session session = sessionFactory.getCurrentSession();
		Long id = (Long) session.save(user);
		return id;
	}
	
	@Override
	@Transactional
	public Long insertOrUpdateDelivery(Deliver deliver) {
		Session session = sessionFactory.getCurrentSession();
		Long id = (Long) session.save(deliver);
		return id;
	}
	

	@Override
	@Transactional
	public Long insertCart(Cart cart) {
		Session session = sessionFactory.getCurrentSession();
		Long id = (Long) session.save(cart);
		return id;
	}

	@Override
	public boolean validateUser(User user) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String query = "select username from user where username = '" + user.getUsername() + "' and password = '"
				+ user.getPassword() + "'";

		try {
			String username = jdbcTemplate.queryForObject(query, String.class);
			if (username != null && username.equals(user.getUsername())) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

	@Override
	public List<User> getAll() {
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(User.class);
		List<User> userList = (List<User>) criteria.list();
		session.close();
		return userList;

	}
	@Override
	public List<Cart> getCartRow() {
		Session session = sessionFactory.openSession();
		List<Cart> getCart = (List<Cart>) session.createCriteria(Cart.class).list();
		session.close();
		return getCart;

	}

	@Override
	public List<Cart> getAllCart() {
		Session session = sessionFactory.openSession();
		Criteria criteria = session.createCriteria(Cart.class);
		List<Cart> cartList = (List<Cart>) criteria.list();
		session.close();
		return cartList;

	}
	

	@Override
	@Transactional
	public Cart get(Long id) {
		Session session = sessionFactory.openSession();
		Cart cart = (Cart) session.get(Cart.class, id);
		return cart;
	}

	@Override
	@Transactional
	public void delete(Long cartid) {
		Session session = sessionFactory.getCurrentSession();
		Cart cart = (Cart) session.get(Cart.class, cartid);
		session.delete(cart);
	}

	@Override
	@Transactional
	public void edit(Long id) {
		Session session = sessionFactory.getCurrentSession();
		Cart cart = (Cart) session.get(Cart.class, id);
		session.saveOrUpdate(cart);
	}
	
	 @Override
	  public String encrypt(String password) {
	  
	  String generatedPassword = null;
	  try {
	   MessageDigest md = MessageDigest.getInstance("MD5");
	   md.update(password.getBytes());
	   byte[] bytes = md.digest();
	   StringBuilder sb = new StringBuilder();
	   for(int i=0; i< bytes.length ;i++)
	   {
	    sb.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));
	   }
	   generatedPassword = sb.toString();
	  } 
	  catch (NoSuchAlgorithmException e) 
	  {
	   e.printStackTrace();
	  }
	  
	   return generatedPassword;
	  }
}
