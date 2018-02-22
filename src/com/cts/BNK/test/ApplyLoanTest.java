package com.cts.BNK.test;

import org.junit.Test;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.model.LoanModel;
import com.cts.BNK.util.BankFactory;


public class ApplyLoanTest {
@Test
public void ApplyLoan() throws Exception
{
	LoanModel loan=new LoanModel();
	loan.setLoantype("Educational");
	loan.setLoanamt("50000");
	loan.setAplydate("2016-04-19");
	loan.setIssdate("2016-05-19");
	loan.setDuration("5");
	loan.setRate("9.33");
	loan.setCoursefee("50000");
	loan.setCoursename("btech");
	loan.setFathername("Mr.A.K.Jha");
	loan.setFatheroccu("Sr AFA");
	loan.setFamilyincome("3000000");
	loan.setFathertexp("30");
	loan.setFathercexp("10");
	loan.setRation("12345");
	loan.setUname("swatijha");
	InterfaceBank ib=BankFactory.getClass("LoanModel");
		String res=ib.save(loan);
		System.out.println(res);
		assert(1==1);
}

}
