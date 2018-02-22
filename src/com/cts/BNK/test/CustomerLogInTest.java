package com.cts.BNK.test;

import org.junit.Test;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.model.CustomerLoginModel;
import com.cts.BNK.util.BankFactory;


public class CustomerLogInTest {
@Test
	public void CustomerLoginTest() throws Exception
{
	InterfaceBank impBank = BankFactory.getClass("CustomerLogin");
	String UserName = "swatijha", password = "swati";
	CustomerLoginModel baseModel = new com.cts.BNK.model.CustomerLoginModel(
			UserName, password);
	impBank.login(baseModel);
    System.out.println(baseModel.getStatus()+" "+baseModel.getUsername());
    assert(1==1);
}
}
