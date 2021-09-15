package kr.ac.kopo.fund.vo;

public class FundVO {

	private String fund_code;
	private String fund_company;
	private String fund_name;
	private String type;
	private int total_asset;
	private int stock_rate;
	private int bond_rate;
	private int money_rate;
	private int etc_rate;
	private double present_price;
	private double one_month_rate;
	private double three_month_rate;
	private double six_month_rate;
	private double one_year_rate;
	private double commision;
	private String reg_date;
	
	
	public String getFund_code() {
		return fund_code;
	}
	public void setFund_code(String fund_code) {
		this.fund_code = fund_code;
	}
	public String getFund_company() {
		return fund_company;
	}
	public void setFund_company(String fund_company) {
		this.fund_company = fund_company;
	}
	public String getFund_name() {
		return fund_name;
	}
	public void setFund_name(String fund_name) {
		this.fund_name = fund_name;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	public int getTotal_asset() {
		return total_asset;
	}
	public void setTotal_asset(int total_asset) {
		this.total_asset = total_asset;
	}
	public int getStock_rate() {
		return stock_rate;
	}
	public void setStock_rate(int stock_rate) {
		this.stock_rate = stock_rate;
	}
	public int getBond_rate() {
		return bond_rate;
	}
	public void setBond_rate(int bond_rate) {
		this.bond_rate = bond_rate;
	}
	public int getMoney_rate() {
		return money_rate;
	}
	public void setMoney_rate(int money_rate) {
		this.money_rate = money_rate;
	}
	public int getEtc_rate() {
		return etc_rate;
	}
	public void setEtc_rate(int etc_rate) {
		this.etc_rate = etc_rate;
	}
	public double getPresent_price() {
		return present_price;
	}
	public void setPresent_price(double present_price) {
		this.present_price = present_price;
	}
	public double getOne_month_rate() {
		return one_month_rate;
	}
	public void setOne_month_rate(double one_month_rate) {
		this.one_month_rate = one_month_rate;
	}
	public double getThree_month_rate() {
		return three_month_rate;
	}
	public void setThree_month_rate(double three_month_rate) {
		this.three_month_rate = three_month_rate;
	}
	public double getSix_month_rate() {
		return six_month_rate;
	}
	public void setSix_month_rate(double six_month_rate) {
		this.six_month_rate = six_month_rate;
	}
	public double getOne_year_rate() {
		return one_year_rate;
	}
	public void setOne_year_rate(double one_year_rate) {
		this.one_year_rate = one_year_rate;
	}
	public double getCommision() {
		return commision;
	}
	public void setCommision(double commision) {
		this.commision = commision;
	}
	public String getReg_date() {
		return reg_date;
	}
	public void setReg_date(String reg_date) {
		this.reg_date = reg_date;
	}
	@Override
	public String toString() {
		return "FundVO [fund_code=" + fund_code + ", fund_company=" + fund_company + ", fund_name=" + fund_name
				+ ", type=" + type + ", total_asset=" + total_asset + ", stock_rate=" + stock_rate + ", bond_rate="
				+ bond_rate + ", money_rate=" + money_rate + ", etc_rate=" + etc_rate + ", present_price="
				+ present_price + ", one_month_rate=" + one_month_rate + ", three_month_rate=" + three_month_rate
				+ ", six_month_rate=" + six_month_rate + ", one_year_rate=" + one_year_rate + ", commision=" + commision
				+ ", reg_date=" + reg_date + "]";
	}
	
}
