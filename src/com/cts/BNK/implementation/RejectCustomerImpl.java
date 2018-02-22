package com.cts.BNK.implementation;

import java.util.List;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.dao.RejectCustomerDao;
import com.cts.BNK.model.Model;

public class RejectCustomerImpl implements InterfaceBank {

	@Override
	public String save(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Model update(Model model) throws Exception {
		RejectCustomerDao rcd = new RejectCustomerDao();
		Model mod = rcd.update(model);
		return mod;
	}

	@Override
	public Model delete(Model model) throws Exception {
		// TODO Auto-generated method stub
		RejectCustomerDao rejectCustomerDao = new RejectCustomerDao();
		rejectCustomerDao.delete(model);
		return model;
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

	@Override
	public List<Model> display(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
