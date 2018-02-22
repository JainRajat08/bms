package com.cts.BNK.test;

import org.junit.Test;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.model.CustomerModel;
import com.cts.BNK.model.Model;
import com.cts.BNK.model.Registration;
import com.cts.BNK.util.BankFactory;


public class ViewNewCustomerTest {
@Test
public void ViewCustomerTest() throws Exception{
	InterfaceBank ibank = BankFactory.getClass("ViewNewCustomerRecord");
		Model model = new CustomerModel("rajat");
		Model list = ibank.displayrecords(model);
		Registration r = (Registration) list;
		System.out.println(r.getFname()+" "+r.getLname());
		assert(1==1);
}
}
