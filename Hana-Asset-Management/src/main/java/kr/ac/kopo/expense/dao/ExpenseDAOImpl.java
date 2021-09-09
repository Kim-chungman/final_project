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
   public List<ExpenseVO> customerList() {
      
      List<ExpenseVO> customerList = sqlSessionTemplate.selectList("expense.ExpenseDAO.selectList");
      
      return customerList;
   }
}
