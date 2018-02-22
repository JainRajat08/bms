package com.cts.BNK.model;

public class AdminNewCustomerModel extends Model {
	private String Customer_id, FirstName, LastName, RegistrationDate,
			Approvestatus;

	public String getCustomer_id() {
		return Customer_id;
	}

	public void setCustomer_id(String customer_id) {
		Customer_id = customer_id;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getRegistrationDate() {
		return RegistrationDate;
	}

	public void setRegistrationDate(String registrationDate) {
		RegistrationDate = registrationDate;
	}

	public String getApprovestatus() {
		return Approvestatus;
	}

	public void setApprovestatus(String approvestatus) {
		Approvestatus = approvestatus;
	}

}
