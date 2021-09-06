package kr.ac.kopo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.assetmanage.vo.InvestmentTypeVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class InvestmentTest {
	
	@Autowired(required = true)
	private InvestmentTypeVO type;
	
	@Autowired
	private Double db;
	
	@Test
	public void investmentTest() {
		
		type.setQ1("1.5");
		
		double sum = db.parseDouble(type.getQ1());
		
		System.out.println(sum);
		
	}
	

}
