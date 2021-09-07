package kr.ac.kopo.crawling.service;

import java.util.List;

import kr.ac.kopo.crawling.vo.DepositCrawlingVO;

public interface CrawlingService {

	public List<DepositCrawlingVO> depositCraw(String url);

	public List<DepositCrawlingVO> savingCraw(String url2);

	public List<DepositCrawlingVO> accountCraw(String url3);

}
