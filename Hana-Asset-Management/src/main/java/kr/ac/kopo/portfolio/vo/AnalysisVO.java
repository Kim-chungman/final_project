package kr.ac.kopo.portfolio.vo;

public class AnalysisVO {

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
	
	// 분석지표
	private String investment_index;
	
	// 분석지표 종목 기간별 평균
	private double index_three_month_rate;
	private double index_six_month_rate;
	private double index_one_year_rate;
	private double index_two_year_rate;
	private double index_three_year_rate;
	private double index_five_year_rate;
	
	// 분석지표 전체 종목 기간별 평균
	private double avg_three_month_rate;
	private double avg_six_month_rate;
	private double avg_one_year_rate;
	private double avg_two_year_rate;
	private double avg_three_year_rate;
	private double avg_five_year_rate;
	
	
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
	public String getInvestment_index() {
		return investment_index;
	}
	public void setInvestment_index(String investment_index) {
		this.investment_index = investment_index;
	}
	public double getIndex_three_month_rate() {
		return index_three_month_rate;
	}
	public void setIndex_three_month_rate(double index_three_month_rate) {
		this.index_three_month_rate = index_three_month_rate;
	}
	public double getIndex_six_month_rate() {
		return index_six_month_rate;
	}
	public void setIndex_six_month_rate(double index_six_month_rate) {
		this.index_six_month_rate = index_six_month_rate;
	}
	public double getIndex_one_year_rate() {
		return index_one_year_rate;
	}
	public void setIndex_one_year_rate(double index_one_year_rate) {
		this.index_one_year_rate = index_one_year_rate;
	}
	public double getIndex_two_year_rate() {
		return index_two_year_rate;
	}
	public void setIndex_two_year_rate(double index_two_year_rate) {
		this.index_two_year_rate = index_two_year_rate;
	}
	public double getIndex_three_year_rate() {
		return index_three_year_rate;
	}
	public void setIndex_three_year_rate(double index_three_year_rate) {
		this.index_three_year_rate = index_three_year_rate;
	}
	public double getIndex_five_year_rate() {
		return index_five_year_rate;
	}
	public void setIndex_five_year_rate(double index_five_year_rate) {
		this.index_five_year_rate = index_five_year_rate;
	}
	public double getAvg_three_month_rate() {
		return avg_three_month_rate;
	}
	public void setAvg_three_month_rate(double avg_three_month_rate) {
		this.avg_three_month_rate = avg_three_month_rate;
	}
	public double getAvg_six_month_rate() {
		return avg_six_month_rate;
	}
	public void setAvg_six_month_rate(double avg_six_month_rate) {
		this.avg_six_month_rate = avg_six_month_rate;
	}
	public double getAvg_one_year_rate() {
		return avg_one_year_rate;
	}
	public void setAvg_one_year_rate(double avg_one_year_rate) {
		this.avg_one_year_rate = avg_one_year_rate;
	}
	public double getAvg_two_year_rate() {
		return avg_two_year_rate;
	}
	public void setAvg_two_year_rate(double avg_two_year_rate) {
		this.avg_two_year_rate = avg_two_year_rate;
	}
	public double getAvg_three_year_rate() {
		return avg_three_year_rate;
	}
	public void setAvg_three_year_rate(double avg_three_year_rate) {
		this.avg_three_year_rate = avg_three_year_rate;
	}
	public double getAvg_five_year_rate() {
		return avg_five_year_rate;
	}
	public void setAvg_five_year_rate(double avg_five_year_rate) {
		this.avg_five_year_rate = avg_five_year_rate;
	}
	@Override
	public String toString() {
		return "AnalysisVO [fund_code=" + fund_code + ", fund_company=" + fund_company + ", fund_name=" + fund_name
				+ ", type=" + type + ", total_asset=" + total_asset + ", present_price=" + present_price
				+ ", one_month_rate=" + one_month_rate + ", three_month_rate=" + three_month_rate + ", six_month_rate="
				+ six_month_rate + ", one_year_rate=" + one_year_rate + ", investment_index=" + investment_index
				+ ", index_three_month_rate=" + index_three_month_rate + ", index_six_month_rate="
				+ index_six_month_rate + ", index_one_year_rate=" + index_one_year_rate + ", index_two_year_rate="
				+ index_two_year_rate + ", index_three_year_rate=" + index_three_year_rate + ", index_five_year_rate="
				+ index_five_year_rate + ", avg_three_month_rate=" + avg_three_month_rate + ", avg_six_month_rate="
				+ avg_six_month_rate + ", avg_one_year_rate=" + avg_one_year_rate + ", avg_two_year_rate="
				+ avg_two_year_rate + ", avg_three_year_rate=" + avg_three_year_rate + ", avg_five_year_rate="
				+ avg_five_year_rate + "]";
	}
	
}
