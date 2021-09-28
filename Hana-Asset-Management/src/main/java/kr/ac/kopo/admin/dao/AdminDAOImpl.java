package kr.ac.kopo.admin.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.expense.vo.ExpenseVO;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Override
	public ExpenseVO getCustomerData() {
		
		// 1년간 고객지출 금액
		ExpenseVO list = sqlSessionTemplate.selectOne("expense.ExpenseDAO.getCustomerData");
		
		return list;
	}

	@Override
	public ExpenseVO customerAge() {

		// 전체고객 연령대별 구성비
		ExpenseVO list = sqlSessionTemplate.selectOne("expense.ExpenseDAO.getCustomerAge");
		
		return list;
	}

}
