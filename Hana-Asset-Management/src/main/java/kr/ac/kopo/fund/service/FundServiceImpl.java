package kr.ac.kopo.fund.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.fund.dao.FundDAO;
import kr.ac.kopo.fund.vo.FundVO;

@Service
public class FundServiceImpl implements FundService{

	@Autowired
	private FundDAO fundDAO;
	
	@Override
	public List<FundVO> fundList() {
		
		List<FundVO> fundList = fundDAO.fundList();
		
		return fundList;
	}

	
}
