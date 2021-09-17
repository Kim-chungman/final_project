package kr.ac.kopo.portfolio.vo;

public class PortfolioVO {

	private String member_id;
	private String investmentPeriod;
	private int investmentMoney;
	private int investmentRate;
	private String investmentType;
	private String sd;
	private String bm;
	private String sr;
	private String te;
	private String ja;
	private String jr;
	private double fund;
	private double deposit;
	private double saving;
	private double pension;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getInvestmentPeriod() {
		return investmentPeriod;
	}
	public void setInvestmentPeriod(String investmentPeriod) {
		this.investmentPeriod = investmentPeriod;
	}
	public int getInvestmentMoney() {
		return investmentMoney;
	}
	public void setInvestmentMoney(int investmentMoney) {
		this.investmentMoney = investmentMoney;
	}
	public int getInvestmentRate() {
		return investmentRate;
	}
	public void setInvestmentRate(int investmentRate) {
		this.investmentRate = investmentRate;
	}
	public String getInvestmentType() {
		return investmentType;
	}
	public void setInvestmentType(String investmentType) {
		this.investmentType = investmentType;
	}
	public String getSd() {
		return sd;
	}
	public void setSd(String sd) {
		this.sd = sd;
	}
	public String getBm() {
		return bm;
	}
	public void setBm(String bm) {
		this.bm = bm;
	}
	public String getSr() {
		return sr;
	}
	public void setSr(String sr) {
		this.sr = sr;
	}
	public String getTe() {
		return te;
	}
	public void setTe(String te) {
		this.te = te;
	}
	public String getJa() {
		return ja;
	}
	public void setJa(String ja) {
		this.ja = ja;
	}
	public String getJr() {
		return jr;
	}
	public void setJr(String jr) {
		this.jr = jr;
	}
	public double getFund() {
		return fund;
	}
	public void setFund(double fund) {
		this.fund = fund;
	}
	public double getDeposit() {
		return deposit;
	}
	public void setDeposit(double deposit) {
		this.deposit = deposit;
	}
	public double getSaving() {
		return saving;
	}
	public void setSaving(double saving) {
		this.saving = saving;
	}
	public double getPension() {
		return pension;
	}
	public void setPension(double pension) {
		this.pension = pension;
	}
	
	@Override
	public String toString() {
		return "PortfolioVO [member_id=" + member_id + ", investmentPeriod=" + investmentPeriod + ", investmentMoney="
				+ investmentMoney + ", investmentRate=" + investmentRate + ", investmentType=" + investmentType
				+ ", sd=" + sd + ", bm=" + bm + ", sr=" + sr + ", te=" + te + ", ja=" + ja + ", jr=" + jr + ", fund="
				+ fund + ", deposit=" + deposit + ", saving=" + saving + ", pension=" + pension + "]";
	}
	
}
