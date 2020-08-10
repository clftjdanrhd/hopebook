package com.mis.domain;

import java.sql.Timestamp;


/**
회원목록
@author SOONY
**/
public class MemberVO {
   
   private int memNum;
   private String memId;
   private String memPw;
   private String jumin;
   private String memName;
   private String phone;
   private String email;
   private String authority;
   private Timestamp signDate;
   private String adr1;
   private String adr2;
   private String adr3;
public int getMemNum() {
	return memNum;
}
public void setMemNum(int memNum) {
	this.memNum = memNum;
}
public String getMemId() {
	return memId;
}
public void setMemId(String memId) {
	this.memId = memId;
}
public String getMemPw() {
	return memPw;
}
public void setMemPw(String memPw) {
	this.memPw = memPw;
}
public String getJumin() {
	return jumin;
}
public void setJumin(String jumin) {
	this.jumin = jumin;
}
public String getMemName() {
	return memName;
}
public void setMemName(String memName) {
	this.memName = memName;
}
public String getPhone() {
	return phone;
}
public void setPhone(String phone) {
	this.phone = phone;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getAuthority() {
	return authority;
}
public void setAuthority(String authority) {
	this.authority = authority;
}
public Timestamp getSignDate() {
	return signDate;
}
public void setSignDate(Timestamp signDate) {
	this.signDate = signDate;
}
public String getAdr1() {
	return adr1;
}
public void setAdr1(String adr1) {
	this.adr1 = adr1;
}
public String getAdr2() {
	return adr2;
}
public void setAdr2(String adr2) {
	this.adr2 = adr2;
}
public String getAdr3() {
	return adr3;
}
public void setAdr3(String adr3) {
	this.adr3 = adr3;
}
@Override
public String toString() {
	return "MemberVO [memNum=" + memNum + ", memId=" + memId + ", memPw=" + memPw + ", jumin=" + jumin + ", memName="
			+ memName + ", phone=" + phone + ", email=" + email + ", authority=" + authority + ", signDate=" + signDate
			+ ", adr1=" + adr1 + ", adr2=" + adr2 + ", adr3=" + adr3 + "]";
}
   



   
}