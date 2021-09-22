package kr.ac.kopo.retire.vo;

public class RetireVO {

	// 기본정보
	private int myYear;
	private int myMonth;
	private int myAge;
	private int spouseYear;
	private int spouseMonth;
	private int spouseAge;
	
	// 은퇴시기
	private int expectMyAge;
	private int expectSpouseAge;
	private int expectMyRetire;
	private int expectSpouseRetire;
	
	// 필요생활비
	private int expectLiving;
	private int expectRate1;
	private int expectRate2;
	
	// 연금정보
	private String myPensionType;
	private String myTypeStatus;
	private String spousePensionType;
	private String spouseTypeStatus;
	private int myExpectIncome;
	private int spouseExpectIncome;
	
	// 준비상황
	private int privatePension;
	private int monthSaving;
	private int retireAccumulated;
	private int monthSaving2;
	private double rate;
	
	// 계산
	private int pv;
	private int fv;
	private int needMoney;
	private int prepareMoney;
	
	public int getMyYear() {
		return myYear;
	}
	public void setMyYear(int myYear) {
		this.myYear = myYear;
	}
	public int getMyMonth() {
		return myMonth;
	}
	public void setMyMonth(int myMonth) {
		this.myMonth = myMonth;
	}
	public int getMyAge() {
		return myAge;
	}
	public void setMyAge(int myAge) {
		this.myAge = myAge;
	}
	public int getSpouseYear() {
		return spouseYear;
	}
	public void setSpouseYear(int spouseYear) {
		this.spouseYear = spouseYear;
	}
	public int getSpouseMonth() {
		return spouseMonth;
	}
	public void setSpouseMonth(int spouseMonth) {
		this.spouseMonth = spouseMonth;
	}
	public int getSpouseAge() {
		return spouseAge;
	}
	public void setSpouseAge(int spouseAge) {
		this.spouseAge = spouseAge;
	}
	public int getExpectMyAge() {
		return expectMyAge;
	}
	public void setExpectMyAge(int expectMyAge) {
		this.expectMyAge = expectMyAge;
	}
	public int getExpectSpouseAge() {
		return expectSpouseAge;
	}
	public void setExpectSpouseAge(int expectSpouseAge) {
		this.expectSpouseAge = expectSpouseAge;
	}
	public int getExpectMyRetire() {
		return expectMyRetire;
	}
	public void setExpectMyRetire(int expectMyRetire) {
		this.expectMyRetire = expectMyRetire;
	}
	public int getExpectSpouseRetire() {
		return expectSpouseRetire;
	}
	public void setExpectSpouseRetire(int expectSpouseRetire) {
		this.expectSpouseRetire = expectSpouseRetire;
	}
	public int getExpectLiving() {
		return expectLiving;
	}
	public void setExpectLiving(int expectLiving) {
		this.expectLiving = expectLiving;
	}
	public int getExpectRate1() {
		return expectRate1;
	}
	public void setExpectRate1(int expectRate1) {
		this.expectRate1 = expectRate1;
	}
	public int getExpectRate2() {
		return expectRate2;
	}
	public void setExpectRate2(int expectRate2) {
		this.expectRate2 = expectRate2;
	}
	public String getMyPensionType() {
		return myPensionType;
	}
	public void setMyPensionType(String myPensionType) {
		this.myPensionType = myPensionType;
	}
	public String getMyTypeStatus() {
		return myTypeStatus;
	}
	public void setMyTypeStatus(String myTypeStatus) {
		this.myTypeStatus = myTypeStatus;
	}
	public String getSpousePensionType() {
		return spousePensionType;
	}
	public void setSpousePensionType(String spousePensionType) {
		this.spousePensionType = spousePensionType;
	}
	public String getSpouseTypeStatus() {
		return spouseTypeStatus;
	}
	public void setSpouseTypeStatus(String spouseTypeStatus) {
		this.spouseTypeStatus = spouseTypeStatus;
	}
	public int getPrivatePension() {
		return privatePension;
	}
	public void setPrivatePension(int privatePension) {
		this.privatePension = privatePension;
	}
	public int getMonthSaving() {
		return monthSaving;
	}
	public void setMonthSaving(int monthSaving) {
		this.monthSaving = monthSaving;
	}
	public int getRetireAccumulated() {
		return retireAccumulated;
	}
	public void setRetireAccumulated(int retireAccumulated) {
		this.retireAccumulated = retireAccumulated;
	}
	public int getMonthSaving2() {
		return monthSaving2;
	}
	public void setMonthSaving2(int monthSaving2) {
		this.monthSaving2 = monthSaving2;
	}
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public int getMyExpectIncome() {
		return myExpectIncome;
	}
	public void setMyExpectIncome(int myExpectIncome) {
		this.myExpectIncome = myExpectIncome;
	}
	public int getSpouseExpectIncome() {
		return spouseExpectIncome;
	}
	public void setSpouseExpectIncome(int spouseExpectIncome) {
		this.spouseExpectIncome = spouseExpectIncome;
	}
	public int getPv() {
		return pv;
	}
	public void setPv(int pv) {
		this.pv = pv;
	}
	public int getFv() {
		return fv;
	}
	public void setFv(int fv) {
		this.fv = fv;
	}
	public int getNeedMoney() {
		return needMoney;
	}
	public void setNeedMoney(int needMoney) {
		this.needMoney = needMoney;
	}
	public int getPrepareMoney() {
		return prepareMoney;
	}
	public void setPrepareMoney(int prepareMoney) {
		this.prepareMoney = prepareMoney;
	}
	
	@Override
	public String toString() {
		return "RetireVO [myYear=" + myYear + ", myMonth=" + myMonth + ", myAge=" + myAge + ", spouseYear=" + spouseYear
				+ ", spouseMonth=" + spouseMonth + ", spouseAge=" + spouseAge + ", expectMyAge=" + expectMyAge
				+ ", expectSpouseAge=" + expectSpouseAge + ", expectMyRetire=" + expectMyRetire
				+ ", expectSpouseRetire=" + expectSpouseRetire + ", expectLiving=" + expectLiving + ", expectRate1="
				+ expectRate1 + ", expectRate2=" + expectRate2 + ", myPensionType=" + myPensionType + ", myTypeStatus="
				+ myTypeStatus + ", spousePensionType=" + spousePensionType + ", spouseTypeStatus=" + spouseTypeStatus
				+ ", myExpectIncome=" + myExpectIncome + ", spouseExpectIncome=" + spouseExpectIncome
				+ ", privatePension=" + privatePension + ", monthSaving=" + monthSaving + ", retireAccumulated="
				+ retireAccumulated + ", monthSaving2=" + monthSaving2 + ", rate=" + rate + ", pv=" + pv + ", fv=" + fv
				+ ", needMoney=" + needMoney + ", prepareMoney=" + prepareMoney + "]";
	}
	
}
