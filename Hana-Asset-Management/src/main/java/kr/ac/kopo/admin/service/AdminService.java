package kr.ac.kopo.admin.service;

import org.json.simple.JSONObject;

import kr.ac.kopo.expense.vo.ExpenseVO;

public interface AdminService {

	public JSONObject getCustomerData();

	public JSONObject customerAge();

	public JSONObject customerAvg(ExpenseVO expense);

}
