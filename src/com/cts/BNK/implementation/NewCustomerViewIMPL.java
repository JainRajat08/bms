package com.cts.BNK.implementation;

import java.util.List;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.dao.NewCustomerViewDao;
import com.cts.BNK.model.Model;

public class NewCustomerViewIMPL implements InterfaceBank {

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
	public Model login(Model baseModel) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Model displayrecords(Model model) throws Exception {
		NewCustomerViewDao ncvd = new NewCustomerViewDao();
		Model mod = ncvd.displayrecords(model);
		return mod;
	}

	@Override
	public List<Model> display(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
