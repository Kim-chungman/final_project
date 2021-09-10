package kr.ac.kopo.expense.vo;

public class ExpenseVO {

	private String memberId;
	private String startDay;
	private String startYear;
	private String startMonth;
	private String startDate;
	private String startMonthLast;
	private String lastDay;
	private String lastYear;
	private String lastMonth;
	private String lastDate;
	private String LastMonthLast;
	private int jan;
	private int feb;
	private int mar;
	private int apr;
	private int may;
	private int jun;
	private int jul;
	private int aug;
	private int sep;
	private int oct;
	private int nov;
	private int dec;
	
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public String getStartMonthLast() {
		return startMonthLast;
	}
	public void setStartMonthLast(String startMonthLast) {
		this.startMonthLast = startMonthLast;
	}
	public String getLastMonthLast() {
		return LastMonthLast;
	}
	public void setLastMonthLast(String lastMonthLast) {
		LastMonthLast = lastMonthLast;
	}
	public int getJan() {
		return jan;
	}
	public void setJan(int jan) {
		this.jan = jan;
	}
	public int getFeb() {
		return feb;
	}
	public void setFeb(int feb) {
		this.feb = feb;
	}
	public int getMar() {
		return mar;
	}
	public void setMar(int mar) {
		this.mar = mar;
	}
	public int getApr() {
		return apr;
	}
	public void setApr(int apr) {
		this.apr = apr;
	}
	public int getMay() {
		return may;
	}
	public void setMay(int may) {
		this.may = may;
	}
	public int getJun() {
		return jun;
	}
	public void setJun(int jun) {
		this.jun = jun;
	}
	public int getJul() {
		return jul;
	}
	public void setJul(int jul) {
		this.jul = jul;
	}
	public int getAug() {
		return aug;
	}
	public void setAug(int aug) {
		this.aug = aug;
	}
	public int getSep() {
		return sep;
	}
	public void setSep(int sep) {
		this.sep = sep;
	}
	public int getOct() {
		return oct;
	}
	public void setOct(int oct) {
		this.oct = oct;
	}
	public int getNov() {
		return nov;
	}
	public void setNov(int nov) {
		this.nov = nov;
	}
	public int getDec() {
		return dec;
	}
	public void setDec(int dec) {
		this.dec = dec;
	}
	public String getStartDay() {
		return startDay;
	}
	public void setStartDay(String startDay) {
		this.startDay = startDay;
	}
	public String getStartYear() {
		return startYear;
	}
	public void setStartYear(String startYear) {
		this.startYear = startYear;
	}
	public String getStartMonth() {
		return startMonth;
	}
	public void setStartMonth(String startMonth) {
		this.startMonth = startMonth;
	}
	public String getStartDate() {
		return startDate;
	}
	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}
	public String getLastDay() {
		return lastDay;
	}
	public void setLastDay(String lastDay) {
		this.lastDay = lastDay;
	}
	public String getLastYear() {
		return lastYear;
	}
	public void setLastYear(String lastYear) {
		this.lastYear = lastYear;
	}
	public String getLastMonth() {
		return lastMonth;
	}
	public void setLastMonth(String lastMonth) {
		this.lastMonth = lastMonth;
	}
	public String getLastDate() {
		return lastDate;
	}
	public void setLastDate(String lastDate) {
		this.lastDate = lastDate;
	}
	@Override
	public String toString() {
		return "ExpenseVO [memberId=" + memberId + ", startDay=" + startDay + ", startYear=" + startYear
				+ ", startMonth=" + startMonth + ", startDate=" + startDate + ", startMonthLast=" + startMonthLast
				+ ", lastDay=" + lastDay + ", lastYear=" + lastYear + ", lastMonth=" + lastMonth + ", lastDate="
				+ lastDate + ", LastMonthLast=" + LastMonthLast + ", jan=" + jan + ", feb=" + feb + ", mar=" + mar
				+ ", apr=" + apr + ", may=" + may + ", jun=" + jun + ", jul=" + jul + ", aug=" + aug + ", sep=" + sep
				+ ", oct=" + oct + ", nov=" + nov + ", dec=" + dec + "]";
	}
	
}
