package kr.ac.kopo.account.dao;

import java.util.List;

import kr.ac.kopo.account.vo.AccountVO;

public interface AccountDAO {

	public AccountVO join(AccountVO account);

	public List<AccountVO> getAccountList(AccountVO account);

}
