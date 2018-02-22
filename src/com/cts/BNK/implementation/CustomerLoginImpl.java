package com.cts.BNK.implementation;

import java.util.List;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.dao.CustomerLoginDao;
import com.cts.BNK.model.CustomerLoginModel;
import com.cts.BNK.model.Model;

public class CustomerLoginImpl implements InterfaceBank {

	@Override
	public Model login(Model baseModel) {
		// TODO Auto-generated method stub
		CustomerLoginModel customerLoginModel = (CustomerLoginModel) baseModel;
		CustomerLoginDao customerLoginDao = new CustomerLoginDao();

		if (customerLoginDao.login(customerLoginModel) != null) {
			return baseModel;
		}
		return null;
	}

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
	public Model displayrecords(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Model> display(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
