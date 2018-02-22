package com.cts.BNK.implementation;

import java.util.List;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.dao.RegisterDAO;
import com.cts.BNK.model.Model;

public class RegistrationIMPL implements InterfaceBank {

	@Override
	public String save(Model model) {
		RegisterDAO reg = new RegisterDAO();
		String k = reg.save(model);
		return k;
		// TODO Auto-generated method stub

	}

	@Override
	public Model update(Model model) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Model delete(Model model) {
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
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public List<Model> display(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
