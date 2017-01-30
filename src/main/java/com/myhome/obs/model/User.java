	package com.myhome.obs.model;
	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.GeneratedValue;
	import javax.persistence.Id;
	import javax.persistence.Table;

	@Entity
	@Table(name = "user")
	public class User {
		@Id
		@GeneratedValue
		private Long id;

		@Column(name = "username")
		private String username;

		@Column(name = "email")
		private String email;

		@Column(name = "password")
		private String password;

		@Column(name = "phoneno")
		private String phoneno;

		@Override
		public String toString() {
			return "User: " + id + " " + username + " " + email + " " + password + " " + phoneno;
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

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getPhoneno() {
			return phoneno;
		}

		public void setPhoneno(String phoneno) {
			this.phoneno = phoneno;
		}

	}

