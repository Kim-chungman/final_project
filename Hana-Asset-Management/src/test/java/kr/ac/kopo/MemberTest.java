package kr.ac.kopo;

import javax.servlet.http.HttpServletRequest;

import org.junit.Ignore;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class MemberTest {

	@Autowired
	private MemberDAO memberDAO;
	
	@Autowired
	private MemberService memberService;
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Autowired
	private HttpServletRequest request;
	
	@Ignore
	@Test
	public void 로그인조회Test() throws Exception {
		
		MemberVO member = new MemberVO();
		member.setId("cndaks");
		member.setPassword("12345");
		
		MemberVO memberVO = sqlSessionTemplate.selectOne("member.MemberDAO.login", member);
		System.out.println(memberVO.toString());
	}
	
	@Ignore
	@Test
	public void 아이디조회Test() throws Exception {
		
		MemberVO member = new MemberVO();
		member.setId("cndaks");
		
		MemberVO memberVO = sqlSessionTemplate.selectOne("member.MemberDAO.idCheck", member);
		System.out.println(memberVO.toString());
	}
	
	@Ignore
	@Test
	public void 회원가입Test() throws Exception {
		
		MemberVO member = new MemberVO();
		member.setId("hana");
		member.setName("김하나");
		member.setPassword("12345");
		member.setRrn("940430-2750421");
		member.setPhonenumber("01015751354");
		member.setAddress("서울특별시 중구 을지로 35");
		member.setGender('W');
		member.setEmail("hanaKim@kebhana.com");
		member.setNotice('Y');
		
		int no  = sqlSessionTemplate.insert("member.MemberDAO.join", member);

		MemberVO memberVO = null;
		
		if(no==1) {
			memberVO = sqlSessionTemplate.selectOne("member.MemberDAO.login", member);
		}
		
		System.out.println(memberVO.getName());
	}
	
	@Ignore
	@Test
	public void 메일발송Test() throws Exception {
		
		MemberVO member = new MemberVO();
		member.setId("hana");
		member.setName("김하나");
		member.setPassword("12345");
		member.setRrn("940430-2750421");
		member.setPhonenumber("01015751354");
		member.setAddress("서울특별시 중구 을지로 35");
		member.setGender('W');
		member.setEmail("cndaksrla@naver.com");
		member.setNotice('Y');
		
		memberService.mailSendWithUserKey(member.getEmail(), member.getName(), request);
	}
	
}
