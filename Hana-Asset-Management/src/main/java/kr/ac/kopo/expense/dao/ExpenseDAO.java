package kr.ac.kopo.expense.dao;

import java.util.List;

import kr.ac.kopo.expense.vo.ExpenseVO;

public interface ExpenseDAO {

	public List<ExpenseVO> customerList(ExpenseVO expense);

	public List<ExpenseVO> customerList2(ExpenseVO expense);

	public List<ExpenseVO> customerList3(ExpenseVO expense);

	public List<ExpenseVO> pieChartData(ExpenseVO expense);

	public List<ExpenseVO> pieChartData2(ExpenseVO expense);

	public List<ExpenseVO> pieChartData3(ExpenseVO expense);

	public List<ExpenseVO> pieChartData4(ExpenseVO expense);

	public String ageData(ExpenseVO expense);

	public List<ExpenseVO> ageChartData(ExpenseVO expense);

	public List<ExpenseVO> ageChartData2(ExpenseVO expense);

	public List<ExpenseVO> ageChartData3(ExpenseVO expense);

	public List<ExpenseVO> ageChartData4(ExpenseVO expense);

	public List<ExpenseVO> getMyData(ExpenseVO expense);

	public List<ExpenseVO> getYourData(ExpenseVO expense);

	public List<ExpenseVO> janList(ExpenseVO expense);

	public List<ExpenseVO> febList(ExpenseVO expense);

	public List<ExpenseVO> marList(ExpenseVO expense);

	public List<ExpenseVO> aprList(ExpenseVO expense);

	public List<ExpenseVO> mayList(ExpenseVO expense);

	public List<ExpenseVO> junList(ExpenseVO expense);

	public List<ExpenseVO> julList(ExpenseVO expense);

	public List<ExpenseVO> augList(ExpenseVO expense);

	public List<ExpenseVO> sepList(ExpenseVO expense);

	public List<ExpenseVO> octList(ExpenseVO expense);

	public List<ExpenseVO> novList(ExpenseVO expense);

	public List<ExpenseVO> decList(ExpenseVO expense);

}
