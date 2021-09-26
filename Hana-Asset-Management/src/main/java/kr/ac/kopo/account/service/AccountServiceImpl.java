package kr.ac.kopo.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.account.vo.AccountVO;

@Service
public class AccountServiceImpl implements AccountService{

	@Autowired(required=true)
	private AccountDAO accountDAO;

	@Override
	public AccountVO join(AccountVO account) {
		
		AccountVO newAccount = accountDAO.join(account);
		
		return newAccount;
	}

	@Override
	public List<AccountVO> getAccountList(AccountVO account) {
		
		List<AccountVO> list = accountDAO.getAccountList(account);
		
		return list;
	}
	
}
