package kr.ac.kopo.account.service;

import java.util.List;

import kr.ac.kopo.account.vo.AccountVO;

public interface AccountService {

	public AccountVO join(AccountVO account);

	public List<AccountVO> getAccountList(AccountVO account);

}
