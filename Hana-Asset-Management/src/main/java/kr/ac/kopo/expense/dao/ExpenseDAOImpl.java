package kr.ac.kopo.expense.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.expense.vo.ExpenseVO;

@Repository
public class ExpenseDAOImpl implements ExpenseDAO{

   @Autowired
   private SqlSessionTemplate sqlSessionTemplate;
   
   @Override
   public List<ExpenseVO> customerList(ExpenseVO expense) {
      
      List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.selectList", expense);
      
      return customerList;
   }

	@Override
	public List<ExpenseVO> customerList2(ExpenseVO expense) {

		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.selectList2", expense);
	      
	    return customerList;
		
	}

	@Override
	public List<ExpenseVO> customerList3(ExpenseVO expense) {

		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.selectList3", expense);
	      
	    return customerList;
		
	}

	@Override
	public List<ExpenseVO> pieChartData(ExpenseVO expense) {

		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.pieChartData", expense);
	      
	    return customerList;
	    
	}

	@Override
	public List<ExpenseVO> pieChartData2(ExpenseVO expense) {

		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.pieChartData2", expense);
	      
	    return customerList;
		
	}

	@Override
	public List<ExpenseVO> pieChartData3(ExpenseVO expense) {

		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.pieChartData3", expense);
	      
	    return customerList;
		
	}

	@Override
	public List<ExpenseVO> pieChartData4(ExpenseVO expense) {

		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.pieChartData4", expense);
	      
	    return customerList;
		
	}
}
