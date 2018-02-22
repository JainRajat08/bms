package com.cts.BNK.test;

import org.junit.Test;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.model.Registration;
import com.cts.BNK.util.BankFactory;


public class RegistrationTest {
@Test
public void registerUser()throws Exception
{
	Registration reg=new Registration();
	reg.setFname("Rajat");
	reg.setLname("Jain");
	reg.setUsername("rajat");
	reg.setPass("rajat");
	reg.setGuardiantype("Father");
	reg.setGuardianname("Mr.B.K.Jain");
	reg.setAddress("Baraut");
	reg.setCitizenship("Indian");
	reg.setCountry("India");
	reg.setState("Karnataka");
	reg.setCountryid("C03");
	reg.setEmail("rajat@gmail.com");
	reg.setGender("Male");
	reg.setMarital("Married");
	reg.setContactno("1334567890");
	reg.setRegdate("2016-04-20");
	reg.setDob("1992-12-08");
	reg.setCitizenstatus("Normal");
	reg.setActype("Salary");
	reg.setIda("0");
	reg.setInterest("10");
	reg.setBranch("Bengaluru");
	reg.setIfsc1("BENG0211");
	reg.setPan("1234567899");
	reg.setIdtype("DL");
	reg.setIdno("0987654331");
	reg.setRefname("Shreya");
	reg.setRefaccno("09876543211234");
	reg.setRefacadd("CDC Pune");
	InterfaceBank ibank = BankFactory.getClass("REGISTRATION");
	String k = ibank.save(reg);
	System.out.println(k);
	assert(1==1);
}
}
