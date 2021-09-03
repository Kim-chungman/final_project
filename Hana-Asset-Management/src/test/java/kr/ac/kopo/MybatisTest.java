package kr.ac.kopo;

import javax.sql.DataSource;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class MybatisTest {

	@Autowired
	private DataSource dataSource;
	
	@Autowired
	private SqlSessionTemplate sessionTemplate;
	
	@Ignore
	@Test
	public void DataSource생성테스트() throws Exception {
		System.out.println("dataSource : " + dataSource);
	}
	
	@Test
	public void mybatis연동테스트() throws Exception {
		System.out.println("sessionTemplate : " + sessionTemplate);
	}
	
	
}
