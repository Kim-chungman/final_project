package kr.ac.kopo.portfolio.vo;

public class MemberPortfolioVO {

	private String product1;
	private String product2;
	private String product3;
	private String product4;
	private String product5;
	private String product6;
	private String member_id;
	
	public String getProduct1() {
		return product1;
	}
	public void setProduct1(String product1) {
		this.product1 = product1;
	}
	public String getProduct2() {
		return product2;
	}
	public void setProduct2(String product2) {
		this.product2 = product2;
	}
	public String getProduct3() {
		return product3;
	}
	public void setProduct3(String product3) {
		this.product3 = product3;
	}
	public String getProduct4() {
		return product4;
	}
	public void setProduct4(String product4) {
		this.product4 = product4;
	}
	public String getProduct5() {
		return product5;
	}
	public void setProduct5(String product5) {
		this.product5 = product5;
	}
	public String getProduct6() {
		return product6;
	}
	public void setProduct6(String product6) {
		this.product6 = product6;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "MemberPortfolioVO [product1=" + product1 + ", product2=" + product2 + ", product3=" + product3
				+ ", product4=" + product4 + ", product5=" + product5 + ", product6=" + product6 + ", member_id="
				+ member_id + "]";
	}
	
}
