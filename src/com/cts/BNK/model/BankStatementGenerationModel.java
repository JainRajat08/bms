package com.cts.BNK.model;

public class BankStatementGenerationModel extends Model {
	private String TransactionDate;
	private String Amount;
	private String Transactiontype;
	private String TransactionId;
	private String AccountBalance;
	private String Customer_id, Accno, fname, lname;

	public String getCustomer_id() {
		return Customer_id;
	}

	public void setCustomer_id(String customer_id) {
		Customer_id = customer_id;
	}

	public String getAccno() {
		return Accno;
	}

	public void setAccno(String accno) {
		Accno = accno;
	}

	public String getFname() {
		return fname;
	}

	public void setFname(String fname) {
		this.fname = fname;
	}

	public String getLname() {
		return lname;
	}

	public void setLname(String lname) {
		this.lname = lname;
	}

	public String getTransactionDate() {
		return TransactionDate;
	}

	public void setTransactionDate(String transactionDate) {
		TransactionDate = transactionDate;
	}

	public String getAmount() {
		return Amount;
	}

	public void setAmount(String amount) {
		Amount = amount;
	}

	public String getTransactiontype() {
		return Transactiontype;
	}

	public void setTransactiontype(String transactiontype) {
		Transactiontype = transactiontype;
	}

	public String getTransactionId() {
		return TransactionId;
	}

	public void setTransactionId(String transactionId) {
		TransactionId = transactionId;
	}

	public String getAccountBalance() {
		return AccountBalance;
	}

	public void setAccountBalance(String accountBalance) {
		AccountBalance = accountBalance;
	}
}
