package com.cts.BNK.util;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.implementation.AdminLoginImpl;
import com.cts.BNK.implementation.AdminNewCustomerIMPL;
import com.cts.BNK.implementation.ApproveCustomerImpl;
import com.cts.BNK.implementation.BankStatementIMPL;
import com.cts.BNK.implementation.CustomerLoginImpl;
import com.cts.BNK.implementation.LoanImpl;
import com.cts.BNK.implementation.NewCustomerViewIMPL;
import com.cts.BNK.implementation.RegistrationIMPL;
import com.cts.BNK.implementation.RejectCustomerImpl;
import com.cts.BNK.implementation.TransactionImpl;

public class BankFactory {
	public static InterfaceBank getClass(String key) {
		InterfaceBank ibank = null;

		if (key.equalsIgnoreCase("REGISTRATION")) {
			ibank = new RegistrationIMPL();
		}else if (key.equalsIgnoreCase("LoanModel")) {
				ibank = new LoanImpl();
		}else if (key.equalsIgnoreCase("Transaction")) {
			ibank = new TransactionImpl();
		}else if (key.equalsIgnoreCase("CustomerLogin")) {
			ibank = new CustomerLoginImpl();
		}else if (key.equalsIgnoreCase("adminLogin")) {
			ibank = new AdminLoginImpl();
		}else if (key.equalsIgnoreCase("Adminnewcustomer")) {
			ibank = new AdminNewCustomerIMPL();
		}else if (key.equalsIgnoreCase("ViewNewCustomerRecord")) {
			ibank = new NewCustomerViewIMPL();
		}else if (key.equals("ApproveCustomer")) {
			ibank = new ApproveCustomerImpl();
		}else if (key.equals("Reject Customer")) {
			ibank = new RejectCustomerImpl();
		}else if (key.equalsIgnoreCase("Bank Statement")) {
			ibank = new BankStatementIMPL();
		}
		return ibank;
	}

}
