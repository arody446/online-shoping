package com.myhome.obs.dao;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import com.myhome.obs.model.Admin;
@Repository
public class AdminLogin {
	@Autowired
	private DataSource dataSource;
	public boolean validateUser(Admin admin) {
		JdbcTemplate jdbcTemplate = new JdbcTemplate(dataSource);
		String query = "select username from user where username = '" + admin.getUsername() + "' and password = '"
				+ admin.getPassword() + "'";

		try {
			String username = jdbcTemplate.queryForObject(query, String.class);
			if (username != null && username.equals(admin.getUsername())) {
				return true;
			} else {
				return false;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return false;
	}

}
