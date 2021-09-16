package kr.ac.kopo.fund.vo;

public class RatioVO {
	
	private String fund_code;
	private String fund_name;
	private String type;
	private double three_month_rate;
	private double six_month_rate;
	private double one_year_rate;
	private double two_year_rate;
	private double three_year_rate;
	private double five_year_rate;
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
	public double getTwo_year_rate() {
		return two_year_rate;
	}
	public void setTwo_year_rate(double two_year_rate) {
		this.two_year_rate = two_year_rate;
	}
	public double getThree_year_rate() {
		return three_year_rate;
	}
	public void setThree_year_rate(double three_year_rate) {
		this.three_year_rate = three_year_rate;
	}
	public double getFive_year_rate() {
		return five_year_rate;
	}
	public void setFive_year_rate(double five_year_rate) {
		this.five_year_rate = five_year_rate;
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
		return "RatioVO [fund_code=" + fund_code + ", fund_name=" + fund_name + ", type=" + type + ", three_month_rate="
				+ three_month_rate + ", six_month_rate=" + six_month_rate + ", one_year_rate=" + one_year_rate
				+ ", two_year_rate=" + two_year_rate + ", three_year_rate=" + three_year_rate + ", five_year_rate="
				+ five_year_rate + ", avg_three_month_rate=" + avg_three_month_rate + ", avg_six_month_rate="
				+ avg_six_month_rate + ", avg_one_year_rate=" + avg_one_year_rate + ", avg_two_year_rate="
				+ avg_two_year_rate + ", avg_three_year_rate=" + avg_three_year_rate + ", avg_five_year_rate="
				+ avg_five_year_rate + "]";
	}

}
