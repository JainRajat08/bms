package com.cts.BNK.implementation;

import java.util.List;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.dao.LoanDao;
import com.cts.BNK.dao.RegisterDAO;
import com.cts.BNK.model.Model;

public class LoanImpl implements InterfaceBank{
	public String save(Model model) {
		LoanDao reg = new LoanDao();
		String k = reg.save(model);
		System.out.println("IN LOAN IMPL:SAVE"+ k);
		return k;
		// TODO Auto-generated method stub

	}

	public Model update(Model model) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public Model delete(Model model) {
		// TODO Auto-generated method stub
		return null;
	}

	public Model login(Model baseModel) {
		// TODO Auto-generated method stub
		return null;
	}

	
	public Model displayrecords(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Model> display(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
