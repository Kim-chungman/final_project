package kr.ac.kopo;

public class CrawlingVO {

	   private String name;
	   private String searchRate;
	   private String currentPrice;
	   private String beforePrice;
	   private String upAndDownRate;
	   private String volume;
	   private String startPrice;
	   private String highPrice;
	   private String lowPrice;
	   private String per;
	   private String roe;
	   
	   public CrawlingVO() {
	      
	   }
	   
	   public String getName() {
	      return name;
	   }
	   public void setName(String name) {
	      this.name = name;
	   }
	   public String getSearchRate() {
	      return searchRate;
	   }
	   public void setSearchRate(String searchRate) {
	      this.searchRate = searchRate;
	   }
	   public String getCurrentPrice() {
	      return currentPrice;
	   }
	   public void setCurrentPrice(String currentPrice) {
	      this.currentPrice = currentPrice;
	   }
	   public String getBeforePrice() {
	      return beforePrice;
	   }
	   public void setBeforePrice(String beforePrice) {
	      this.beforePrice = beforePrice;
	   }
	   public String getUpAndDownRate() {
	      return upAndDownRate;
	   }
	   public void setUpAndDownRate(String upAndDownRate) {
	      this.upAndDownRate = upAndDownRate;
	   }
	   public String getVolume() {
	      return volume;
	   }
	   public void setVolume(String volume) {
	      this.volume = volume;
	   }
	   public String getStartPrice() {
	      return startPrice;
	   }
	   public void setStartPrice(String startPrice) {
	      this.startPrice = startPrice;
	   }
	   public String getHighPrice() {
	      return highPrice;
	   }
	   public void setHighPrice(String highPrice) {
	      this.highPrice = highPrice;
	   }
	   public String getLowPrice() {
	      return lowPrice;
	   }
	   public void setLowPrice(String lowPrice) {
	      this.lowPrice = lowPrice;
	   }
	   public String getPer() {
	      return per;
	   }
	   public void setPer(String per) {
	      this.per = per;
	   }
	   public String getRoe() {
	      return roe;
	   }
	   public void setRoe(String roe) {
	      this.roe = roe;
	   }
	   @Override
	   public String toString() {
	      return "TestVO [name=" + name + ", searchRate=" + searchRate + ", currentPrice=" + currentPrice
	            + ", beforePrice=" + beforePrice + ", upAndDownRate=" + upAndDownRate + ", volume=" + volume
	            + ", startPrice=" + startPrice + ", highPrice=" + highPrice + ", lowPrice=" + lowPrice + ", per=" + per
	            + ", roe=" + roe + "]";
	   }
}
