package kr.ac.kopo.expense.dao;

import java.util.List;

import kr.ac.kopo.expense.vo.ExpenseVO;

public interface ExpenseDAO {

	public List<ExpenseVO> customerList(ExpenseVO expense);

	public List<ExpenseVO> customerList2(ExpenseVO expense);

	public List<ExpenseVO> customerList3(ExpenseVO expense);

}
