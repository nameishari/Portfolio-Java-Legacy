package com.hari.myprofile.vo;

public class MailElementsVO {
	String subject;
	String bodyStart;
	String bodyString;
	String bodyEnd;
	String constructedBody;
	public String getConstructedBody() {
		return constructedBody;
	}
	public void setConstructedBody(String constructedBody) {
		this.constructedBody = constructedBody;
	}
	public String getSubject() {
		return subject;
	}
	public void setSubject(String subject) {
		this.subject = subject;
	}
	public String getBodyStart() {
		return bodyStart;
	}
	public void setBodyStart(String bodyStart) {
		this.bodyStart = bodyStart;
	}
	public String getBodyString() {
		return bodyString;
	}
	public void setBodyString(String bodyString) {
		this.bodyString = bodyString;
	}
	public String getBodyEnd() {
		return bodyEnd;
	}
	public void setBodyEnd(String bodyEnd) {
		this.bodyEnd = bodyEnd;
	}
}
