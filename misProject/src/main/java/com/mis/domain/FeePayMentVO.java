package com.mis.domain;

public class FeePayMentVO {
	
	private int payNum;
	private String payName;
	private String payBankNum;
	private String payEmail;
	private String payMobileNumber;
	private String payZipcode;
	private String payAttach;
	private String payPosition;
	private String payMessage;
	private String payBank;
	private String payFee;
	private String paySponsor;
	private int memNum;
	public int getPayNum() {
		return payNum;
	}
	public void setPayNum(int payNum) {
		this.payNum = payNum;
	}
	public String getPayName() {
		return payName;
	}
	public void setPayName(String payName) {
		this.payName = payName;
	}
	public String getPayBankNum() {
		return payBankNum;
	}
	public void setPayBankNum(String payBankNum) {
		this.payBankNum = payBankNum;
	}
	public String getPayEmail() {
		return payEmail;
	}
	public void setPayEmail(String payEmail) {
		this.payEmail = payEmail;
	}
	public String getPayMobileNumber() {
		return payMobileNumber;
	}
	public void setPayMobileNumber(String payMobileNumber) {
		this.payMobileNumber = payMobileNumber;
	}
	public String getPayZipcode() {
		return payZipcode;
	}
	public void setPayZipcode(String payZipcode) {
		this.payZipcode = payZipcode;
	}
	public String getPayAttach() {
		return payAttach;
	}
	public void setPayAttach(String payAttach) {
		this.payAttach = payAttach;
	}
	public String getPayPosition() {
		return payPosition;
	}
	public void setPayPosition(String payPosition) {
		this.payPosition = payPosition;
	}
	public String getPayMessage() {
		return payMessage;
	}
	public void setPayMessage(String payMessage) {
		this.payMessage = payMessage;
	}
	public String getPayBank() {
		return payBank;
	}
	public void setPayBank(String payBank) {
		this.payBank = payBank;
	}
	public String getPayFee() {
		return payFee;
	}
	public void setPayFee(String payFee) {
		this.payFee = payFee;
	}
	public String getPaySponsor() {
		return paySponsor;
	}
	public void setPaySponsor(String paySponsor) {
		this.paySponsor = paySponsor;
	}
	public int getMemNum() {
		return memNum;
	}
	public void setMemNum(int memNum) {
		this.memNum = memNum;
	}
	@Override
	public String toString() {
		return "FeePayMentVO [payNum=" + payNum + ", payName=" + payName + ", payBankNum=" + payBankNum + ", payEmail="
				+ payEmail + ", payMobileNumber=" + payMobileNumber + ", payZipcode=" + payZipcode + ", payAttach="
				+ payAttach + ", payPosition=" + payPosition + ", payMessage=" + payMessage + ", payBank=" + payBank
				+ ", payFee=" + payFee + ", paySponsor=" + paySponsor + ", memNum=" + memNum + "]";
	}
	
	
}
