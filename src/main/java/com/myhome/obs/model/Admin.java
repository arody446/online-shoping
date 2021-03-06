package com.myhome.obs.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="admin")
public class Admin {
		@Id
		@GeneratedValue
		private Long id;

		@Column(name = "username")
		private String username;

		@Column(name = "password")
		private String password;

		@Override
		public String toString() {
			return "User: " + id + " " + username + " " + password + " ";
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

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}
		
		


}
