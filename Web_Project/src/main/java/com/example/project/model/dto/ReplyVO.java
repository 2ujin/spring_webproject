package com.example.project.model.dto;

import java.util.Date;

public class ReplyVO {
  private int rno;
  private int bno;
  private String replyer;
  private String userName;
  private Date regdate;
  private String replytext;
  
  public String getReplytext() {
	  return replytext;
  }
  
  public void setReplytext(String replytext) 
  {
	 this.replytext=replytext;  
  }
  
  
public int getRno() {
	return rno;
}
public void setRno(int rno) {
	this.rno = rno;
}
public int getBno() {
	return bno;
}
public void setBno(int bno) {
	this.bno = bno;
}
public String getReplyer() {
	return replyer;
}
public void setReplyer(String replyer) {
	this.replyer = replyer;
}
public String getUserName() {
	return userName;
}
public void setUserName(String userName) {
	this.userName = userName;
}
public Date getRegdate() {
	return regdate;
}
public void setRegdate(Date regdate) {
	this.regdate = regdate;
}
  
  
}
