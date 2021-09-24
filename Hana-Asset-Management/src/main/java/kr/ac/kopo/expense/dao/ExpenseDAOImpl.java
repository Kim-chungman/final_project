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

	@Override
	public String ageData(ExpenseVO expense) {
		
		String age = sqlSessionTemplate.selectOne("expense.ExpenseDAO.ageSelect", expense);
		
		return age;
	}

	@Override
	public List<ExpenseVO> ageChartData(ExpenseVO expense) {
		
		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.ageChartData", expense);
	      
	    return customerList;
	}

	@Override
	public List<ExpenseVO> ageChartData2(ExpenseVO expense) {

		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.ageChartData2", expense);
	      
	    return customerList;
		
	}

	@Override
	public List<ExpenseVO> ageChartData3(ExpenseVO expense) {
		
		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.ageChartData3", expense);
	      
	    return customerList;
	}

	@Override
	public List<ExpenseVO> ageChartData4(ExpenseVO expense) {

		List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.ageChartData4", expense);
	      
	    return customerList;
		
	}

	@Override
	public List<ExpenseVO> getMyData(ExpenseVO expense) {
		
		List<ExpenseVO> myData = sqlSessionTemplate.selectList("expense.ExpenseDAO.getMyData", expense);
	      
	    return myData;
	    
	}

	@Override
	public List<ExpenseVO> getYourData(ExpenseVO expense) {
		
		List<ExpenseVO> yourData = sqlSessionTemplate.selectList("expense.ExpenseDAO.getYourData", expense);
	      
	    return yourData;
		
	}

	@Override
	public List<ExpenseVO> janList(ExpenseVO expense) {
		
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> febList(ExpenseVO expense) {
		
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> marList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> aprList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> mayList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> junList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> julList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> augList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> sepList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> octList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> novList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> decList(ExpenseVO expense) {
		List<ExpenseVO> items = sqlSessionTemplate.selectList("expense.ExpenseDAO.getJanData", expense);
	      
	    return items;
	}

	@Override
	public List<ExpenseVO> getExpenseSelect(ExpenseVO expense) {

		List<ExpenseVO> list = sqlSessionTemplate.selectList("expense.ExpenseDAO.getExpenseSelect", expense);
		
		return list;
	}
		
	
}
