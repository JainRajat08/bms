package com.cts.BNK.model;


public class Registration extends Model {
	private String fname, lname, username, pass, guardianname, address,
			countryid, email, contactno, ida, ifsc1, citizenstatus, pan, idno,
			refname, refaccno, refacadd, regdate, dob;
	private String guardiantype, citizenship, country, state, gender, marital,
			actype, branch, idtype, interest,altaddress,altcontactno;

	public String getAltaddress() {
		return altaddress;
	}

	public void setAltaddress(String altaddress) {
		this.altaddress = altaddress;
	}

	public String getAltcontactno() {
		return altcontactno;
	}

	public void setAltcontactno(String altcontactno) {
		this.altcontactno = altcontactno;
	}

	public String getInterest() {
		return interest;
	}

	public void setInterest(String interest) {
		this.interest = interest;
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

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPass() {
		return pass;
	}

	public void setPass(String pass) {
		this.pass = pass;
	}

	public String getGuardianname() {
		return guardianname;
	}

	public void setGuardianname(String guardianname) {
		this.guardianname = guardianname;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getCountryid() {
		return countryid;
	}

	public void setCountryid(String countryid) {
		this.countryid = countryid;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContactno() {
		return contactno;
	}

	public void setContactno(String contactno) {
		this.contactno = contactno;
	}

	public String getIda() {
		return ida;
	}

	public void setIda(String ida) {
		this.ida = ida;
	}

	public String getIfsc1() {
		return ifsc1;
	}

	public void setIfsc1(String ifsc1) {
		this.ifsc1 = ifsc1;
	}

	public String getCitizenstatus() {
		return citizenstatus;
	}

	public void setCitizenstatus(String citizenstatus) {
		this.citizenstatus = citizenstatus;
	}

	public String getPan() {
		return pan;
	}

	public void setPan(String pan) {
		this.pan = pan;
	}

	public String getIdno() {
		return idno;
	}

	public void setIdno(String idno) {
		this.idno = idno;
	}

	public String getRefname() {
		return refname;
	}

	public void setRefname(String refname) {
		this.refname = refname;
	}

	public String getRefaccno() {
		return refaccno;
	}

	public void setRefaccno(String refaccno) {
		this.refaccno = refaccno;
	}

	public String getRefacadd() {
		return refacadd;
	}

	public void setRefacadd(String refacadd) {
		this.refacadd = refacadd;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getGuardiantype() {
		return guardiantype;
	}

	public void setGuardiantype(String guardiantype) {
		this.guardiantype = guardiantype;
	}

	public String getCitizenship() {
		return citizenship;
	}

	public void setCitizenship(String citizenship) {
		this.citizenship = citizenship;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getMarital() {
		return marital;
	}

	public void setMarital(String marital) {
		this.marital = marital;
	}

	public String getActype() {
		return actype;
	}

	public void setActype(String actype) {
		this.actype = actype;
	}

	public String getBranch() {
		return branch;
	}

	public void setBranch(String branch) {
		this.branch = branch;
	}

	public String getIdtype() {
		return idtype;
	}

	public void setIdtype(String idtype) {
		this.idtype = idtype;
	}

	@Override
	public String toString() {
		// TODO Auto-generated method stub
		return ("Name:" + this.getFname());
	}

}
