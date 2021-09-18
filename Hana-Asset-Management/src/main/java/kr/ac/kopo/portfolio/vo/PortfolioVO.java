package kr.ac.kopo.portfolio.vo;

public class PortfolioVO {

	private String member_id;
	private String name;
	private String investmentPeriod;
	private int investmentMoney;
	private int investmentRate;
	private int minPer;
	private int maxPer;
	private String investmentType;
	private String sd;
	private String bm;
	private String sr;
	private String te;
	private String ja;
	private String ir;
	private double fund;
	private double deposit;
	private double saving;
	private double pension;
	private String start;
	private String last;
	
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	public int getMinPer() {
		return minPer;
	}
	public void setMinPer(int minPer) {
		this.minPer = minPer;
	}
	public int getMaxPer() {
		return maxPer;
	}
	public void setMaxPer(int maxPer) {
		this.maxPer = maxPer;
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
	public String getIr() {
		return ir;
	}
	public void setIr(String ir) {
		this.ir = ir;
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
	public String getStart() {
		return start;
	}
	public void setStart(String start) {
		this.start = start;
	}
	public String getLast() {
		return last;
	}
	public void setLast(String last) {
		this.last = last;
	}
	
	@Override
	public String toString() {
		return "PortfolioVO [member_id=" + member_id + ", name=" + name + ", investmentPeriod=" + investmentPeriod
				+ ", investmentMoney=" + investmentMoney + ", investmentRate=" + investmentRate + ", minPer=" + minPer
				+ ", maxPer=" + maxPer + ", investmentType=" + investmentType + ", sd=" + sd + ", bm=" + bm + ", sr="
				+ sr + ", te=" + te + ", ja=" + ja + ", ir=" + ir + ", fund=" + fund + ", deposit=" + deposit
				+ ", saving=" + saving + ", pension=" + pension + ", start=" + start + ", last=" + last + "]";
	}

}
