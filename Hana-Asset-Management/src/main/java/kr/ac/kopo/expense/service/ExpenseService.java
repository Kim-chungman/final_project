package kr.ac.kopo.expense.service;

import org.json.simple.JSONObject;

import kr.ac.kopo.expense.vo.ExpenseVO;

public interface ExpenseService {

	public JSONObject getChartData(ExpenseVO expense);

	public JSONObject getChartData2(ExpenseVO expense);

	public JSONObject getChartData3(ExpenseVO expense);

	public JSONObject getpieChartData(ExpenseVO expense);

	public JSONObject getpieChartData2(ExpenseVO expense);

	public JSONObject getpieChartData3(ExpenseVO expense);

	public JSONObject getpieChartData4(ExpenseVO expense);

}
