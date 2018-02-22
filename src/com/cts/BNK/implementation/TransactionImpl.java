package com.cts.BNK.implementation;

import java.util.List;

import com.cts.BNK.buss.InterfaceBank;
import com.cts.BNK.dao.TransDao;
//import com.cts.BNK.dao.TransactionDao;
import com.cts.BNK.model.Model;

public class TransactionImpl implements InterfaceBank {

	public String save(Model model) throws Exception {
		// TODO Auto-generated method stub
		TransDao ob=new TransDao();
		String k=ob.save(model);
		return k;
	}

	public Model update(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public Model delete(Model model) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	public List<Model> display(Model model) throws Exception {
		// TODO Auto-generated method stub
		//TransactionDao td=new TransactionDao();
		//List<Model> tList=td.display(model);
		//return tList;
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

}
