package kr.ac.kopo.crawling.vo;

public class DepositCrawlingVO {

	private String name;
	private String desc;
	private String rate;
	private String type;
	
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
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "DepositCrawlingVO [name=" + name + ", desc=" + desc + ", rate=" + rate + ", type=" + type + "]";
	}
	
	
}
