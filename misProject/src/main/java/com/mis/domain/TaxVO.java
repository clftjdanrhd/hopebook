package com.mis.domain;

public class TaxVO {

	
	private int taxNum;
	private String taxName;
	private String taxEmail;
	private String taxPhone;
	private String taxAdr1;
	private String taxAdr2;
	private String taxAdr3;
	private String taxMsg;
	private int memNum;
	
	
	public int getTaxNum() {
		return taxNum;
	}
	public void setTaxNum(int taxNum) {
		this.taxNum = taxNum;
	}
	public String getTaxName() {
		return taxName;
	}
	public void setTaxName(String taxName) {
		this.taxName = taxName;
	}
	public String getTaxEmail() {
		return taxEmail;
	}
	public void setTaxEmail(String taxEmail) {
		this.taxEmail = taxEmail;
	}
	public String getTaxPhone() {
		return taxPhone;
	}
	public void setTaxPhone(String taxPhone) {
		this.taxPhone = taxPhone;
	}
	public String getTaxAdr1() {
		return taxAdr1;
	}
	public void setTaxAdr1(String taxAdr1) {
		this.taxAdr1 = taxAdr1;
	}
	public String getTaxAdr2() {
		return taxAdr2;
	}
	public void setTaxAdr2(String taxAdr2) {
		this.taxAdr2 = taxAdr2;
	}
	public String getTaxAdr3() {
		return taxAdr3;
	}
	public void setTaxAdr3(String taxAdr3) {
		this.taxAdr3 = taxAdr3;
	}
	public String getTaxMsg() {
		return taxMsg;
	}
	public void setTaxMsg(String taxMsg) {
		this.taxMsg = taxMsg;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	@Override
	public String toString() {
		return "TaxVO [taxNum=" + taxNum + ", taxName=" + taxName + ", taxEmail=" + taxEmail + ", taxPhone=" + taxPhone
				+ ", taxAdr1=" + taxAdr1 + ", taxAdr2=" + taxAdr2 + ", taxAdr3=" + taxAdr3 + ", taxMsg=" + taxMsg
				+ ", memNum=" + memNum + "]";
	}
	

	
	

	
	
	
}
