package com.cts.BNK.model;

public class CustomerModel extends Model {
	String username;

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public CustomerModel(String username) {
		super();
		this.username = username;
	}

}
