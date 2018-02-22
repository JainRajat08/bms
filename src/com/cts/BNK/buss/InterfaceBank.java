package com.cts.BNK.buss;

import java.util.List;

import com.cts.BNK.model.Model;

public interface InterfaceBank {
	public String save(Model model) throws Exception;

	public Model update(Model model) throws Exception;

	public Model delete(Model model) throws Exception;

	public List<Model> display(Model model) throws Exception;

	public Model login(Model baseModel);

	public Model displayrecords(Model model) throws Exception;
}
