package kr.ac.kopo.account.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.account.vo.AccountVO;

@Repository
public class AccountDAOImpl implements AccountDAO{

	@Autowired(required=true)
	private SqlSessionTemplate sqlSessionTemplate;

	@Override
	public AccountVO join(AccountVO account) {
		
		int num = sqlSessionTemplate.insert("account.AccountDAO.join", account);
		
		AccountVO accountVO = null;
		
		if(num==1) {
			accountVO = sqlSessionTemplate.selectOne("account.AccountDAO.accountSelect", account);
		}
		
		return accountVO;
	}

	@Override
	public List<AccountVO> getAccountList(AccountVO account) {
		
		List<AccountVO> list = sqlSessionTemplate.selectList("account.AccountDAO.getAccountList", account);
		
		return list;
	}
	
}
