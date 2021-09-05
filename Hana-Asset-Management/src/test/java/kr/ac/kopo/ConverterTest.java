package kr.ac.kopo;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.ui.Model;

import kr.ac.kopo.portfolio.ExcelController;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class ConverterTest {

	@Autowired
	private ExcelController converter;
	
	@Test
	public void excelConverter() {
		
		System.out.println(converter);
	}
}
