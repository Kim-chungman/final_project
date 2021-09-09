package kr.ac.kopo.account.vo;

public class AccountVO {

	private String accNo;
	private String memberId;
	private String password;
	private String corporationCode;
	private int balance;
	private String accType;
	private String accName;
	private String mgr;
	private int autodebitCode;
	private String regDate;
	private char holder;
	
	public String getAccNo() {
		return accNo;
	}
	public void setAccNo(String accNo) {
		this.accNo = accNo;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCorporationCode() {
		return corporationCode;
	}
	public void setCorporationCode(String corporationCode) {
		this.corporationCode = corporationCode;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getAccType() {
		return accType;
	}
	public void setAccType(String accType) {
		this.accType = accType;
	}
	public String getAccName() {
		return accName;
	}
	public void setAccName(String accName) {
		this.accName = accName;
	}
	public String getMgr() {
		return mgr;
	}
	public void setMgr(String mgr) {
		this.mgr = mgr;
	}
	public int getAutodebitCode() {
		return autodebitCode;
	}
	public void setAutodebitCode(int autodebitCode) {
		this.autodebitCode = autodebitCode;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	public char getHolder() {
		return holder;
	}
	public void setHolder(char holder) {
		this.holder = holder;
	}
	
	@Override
	public String toString() {
		return "AccountVO [accNo=" + accNo + ", memberId=" + memberId + ", password=" + password + ", corporationCode="
				+ corporationCode + ", balance=" + balance + ", accType=" + accType + ", accName=" + accName + ", mgr="
				+ mgr + ", autodebitCode=" + autodebitCode + ", regDate=" + regDate + ", holder=" + holder + "]";
	}
	
}
