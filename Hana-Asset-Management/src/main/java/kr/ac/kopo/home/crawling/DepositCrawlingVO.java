package kr.ac.kopo.home.crawling;

public class DepositCrawlingVO {

	private String name;
	private String desc;
	private String rate;
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getDesc() {
		return desc;
	}
	public void setDesc(String desc) {
		this.desc = desc;
	}
	public String getRate() {
		return rate;
	}
	public void setRate(String rate) {
		this.rate = rate;
	}
	@Override
	public String toString() {
		return "DepositCrawlingVO [name=" + name + ", desc=" + desc + ", rate=" + rate + "]";
	}
	
	
}
