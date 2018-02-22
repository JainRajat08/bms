package com.cts.BNK.test;

import java.util.List;

import org.junit.Test;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.model.AdminNewCustomerModel;
import com.cts.BNK.model.Model;
import com.cts.BNK.util.BankFactory;


public class AdminNewCustomerTest {
@Test 
public void AdminNewCustomertest() throws Exception{
	AdminNewCustomerModel m=new AdminNewCustomerModel();
	InterfaceBank ibank = BankFactory.getClass("Adminnewcustomer");
	List<Model> newcust = ibank.display(null);
	for(Model e:newcust)
	{
		m=(AdminNewCustomerModel)e;
		System.out.println(m.getCustomer_id()+" "+m.getFirstName()+" "+m.getLastName()+" "+m.getRegistrationDate()+" "+m.getApprovestatus()+"\n");
	}
	assert(1==1);
}
}
