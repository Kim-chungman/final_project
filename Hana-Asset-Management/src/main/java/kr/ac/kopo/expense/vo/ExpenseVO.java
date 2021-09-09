package kr.ac.kopo.expense.vo;

public class ExpenseVO {

	private String category;
	private String memberId;
	private int cost;
	private int expenditure;
	private String regDate;
	
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public String getMemberId() {
		return memberId;
	}
	public void setMemberId(String memberId) {
		this.memberId = memberId;
	}
	public int getCost() {
		return cost;
	}
	public void setCost(int cost) {
		this.cost = cost;
	}
	public int getExpenditure() {
		return expenditure;
	}
	public void setExpenditure(int expenditure) {
		this.expenditure = expenditure;
	}
	public String getRegDate() {
		return regDate;
	}
	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}
	
	@Override
	public String toString() {
		return "ExpenseVO [category=" + category + ", memberId=" + memberId + ", cost=" + cost + ", expenditure="
				+ expenditure + ", regDate=" + regDate + "]";
	}
	
}
