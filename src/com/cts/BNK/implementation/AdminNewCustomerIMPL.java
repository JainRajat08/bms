package com.cts.BNK.implementation;

import java.util.List;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.dao.AdminNewCustomerDao;
import com.cts.BNK.model.Model;

public class AdminNewCustomerIMPL implements InterfaceBank {

	@Override
	public String save(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Model update(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Model delete(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Model> display(Model model) throws Exception {
		// TODO Auto-generated method stub
		AdminNewCustomerDao adm = new AdminNewCustomerDao();
		List<Model> newcust = adm.display(model);
		return newcust;
	}

	@Override
	public Model login(Model baseModel) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Model displayrecords(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
