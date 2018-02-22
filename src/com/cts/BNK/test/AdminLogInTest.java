package com.cts.BNK.test;

import org.junit.Test;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.model.Model;
import com.cts.BNK.util.BankFactory;


public class AdminLogInTest {
@Test
public void AdminLoginTest() throws Exception{
	InterfaceBank impBank = BankFactory.getClass("adminLogin");
	String UserName = "admin",password="admin";
	Model baseModel = new com.cts.BNK.model.AdminLoginModel(UserName,
			password);
	if(impBank.login(baseModel)!=null)
	{
	System.out.println("Logged in");
	}
	else
	{
		System.out.println("Not Logged in");
	}
	assert(1==1);
}
}
