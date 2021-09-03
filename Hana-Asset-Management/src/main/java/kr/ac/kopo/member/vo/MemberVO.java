package kr.ac.kopo.member.vo;

public class MemberVO {

	private String id;
	private String name;
	private String password;
	private String rrn;
	private String address;
	private String phonenumber;
	private char gender;
	private String email;
	private int investmentType;
	private char notice;
	private String regDate;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRrn() {
		return rrn;
	}
	public void setRrn(String rrn) {
		this.rrn = rrn;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhonenumber() {
		return phonenumber;
	}
	public void setPhonenumber(String phonenumber) {
		this.phonenumber = phonenumber;
	}
	public char getGender() {
		return gender;
	}
	public void setGender(char gender) {
		this.gender = gender;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getInvestmentType() {
		return investmentType;
	}
	public void setInvestmentType(int investmentType) {
		this.investmentType = investmentType;
	}
	public char getNotice() {
		return notice;
	}
	public void setNotice(char notice) {
		this.notice = notice;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "MemberVO [id=" + id + ", name=" + name + ", password=" + password + ", rrn=" + rrn + ", address="
				+ address + ", phonenumber=" + phonenumber + ", gender=" + gender + ", email=" + email
				+ ", investmentType=" + investmentType + ", notice=" + notice + ", regDate=" + regDate + "]";
	}

}
