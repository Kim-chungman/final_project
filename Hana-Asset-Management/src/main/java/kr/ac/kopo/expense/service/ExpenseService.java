package kr.ac.kopo.expense.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

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

	public JSONObject getageChartData(ExpenseVO expense);

	public JSONObject getageChartData2(ExpenseVO expense);

	public JSONObject getageChartData3(ExpenseVO expense);

	public JSONObject getageChartData4(ExpenseVO expense);

	public List<ExpenseVO> getMyData(ExpenseVO expense);

	public String ageData(ExpenseVO expense);

	public List<ExpenseVO> getyourData(ExpenseVO expense);

	public List<ExpenseVO> getMonthExpense(ExpenseVO expense);

	public List<ExpenseVO> getExpenseRank(String maxMonth, ExpenseVO expense);

	public List<ExpenseVO> getExpenseSelect(ExpenseVO expense);

}
