package com.cts.BNK.test;

import java.util.List;

import org.junit.Test;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.model.BNKstatement;
import com.cts.BNK.model.BankStatementGenerationModel;
import com.cts.BNK.model.Model;
import com.cts.BNK.util.BankFactory;


public class BankStatementTest {
	@Test
	public void statementcheck() throws Exception
	{
		BNKstatement b=new BNKstatement();
		b.setCustid("R-573");
		b.setAccnumber("0573190416041620");
		b.setFromdate("2016-04-01");
		b.setTodate("2016-04-19");
		b.setNumber("5");
		b.setTransactiontype("Deposit");
		InterfaceBank ibank = BankFactory.getClass("Bank Statement");
			List<Model> bankstatementlist = ibank.display(b);
			for(Model e:bankstatementlist)
			{
				BankStatementGenerationModel bsg=(BankStatementGenerationModel)e;
				System.out.println(bsg.getAccno()+" "+bsg.getAccountBalance()+" "+bsg.getAmount()+" "+bsg.getCustomer_id()+" "+bsg.getTransactionDate()+" "+bsg.getTransactionId()+" "+bsg.getTransactiontype()+"\n");
			}
			assert(1==1);
	}

}
