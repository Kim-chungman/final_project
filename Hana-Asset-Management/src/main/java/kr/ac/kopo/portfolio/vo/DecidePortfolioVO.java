package kr.ac.kopo.portfolio.vo;

public class DecidePortfolioVO {

	// 펀드코드 및 이름
	private String fund_code;
	private String fund_company;
	private String fund_name;
	
	// 펀드 타입 및 자산액
	private String type;
	private int total_asset;
	
	// 현재가
	private double present_price;
	
	// 펀드수익률
	private double one_month_rate;
	private double three_month_rate;
	private double six_month_rate;
	private double one_year_rate;
	
	// 기대수익률, 변동성, 구성비
	private double rate;
	private double total_deviation;
	private int ratio;
	
	private String member_id;
	
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
	public double getRate() {
		return rate;
	}
	public void setRate(double rate) {
		this.rate = rate;
	}
	public double getTotal_deviation() {
		return total_deviation;
	}
	public void setTotal_deviation(double total_deviation) {
		this.total_deviation = total_deviation;
	}
	public int getRatio() {
		return ratio;
	}
	public void setRatio(int ratio) {
		this.ratio = ratio;
	}
	public String getMember_id() {
		return member_id;
	}
	public void setMember_id(String member_id) {
		this.member_id = member_id;
	}
	@Override
	public String toString() {
		return "DecidePortfolioVO [fund_code=" + fund_code + ", fund_company=" + fund_company + ", fund_name="
				+ fund_name + ", type=" + type + ", total_asset=" + total_asset + ", present_price=" + present_price
				+ ", one_month_rate=" + one_month_rate + ", three_month_rate=" + three_month_rate + ", six_month_rate="
				+ six_month_rate + ", one_year_rate=" + one_year_rate + ", rate=" + rate + ", total_deviation="
				+ total_deviation + ", ratio=" + ratio + ", member_id=" + member_id + "]";
	}
	
	
}
