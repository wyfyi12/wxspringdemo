package com.entities;

import java.io.Serializable;

public class TokenEntity implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private String wxtoken;
	private String time;
	private String type;
	public String getWxtoken() {
		return wxtoken;
	}
	public void setWxtoken(String wxtoken) {
		this.wxtoken = wxtoken;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getType() {
		return type;
	}
	public void setType(String type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "TokenEntity [wxtoken=" + wxtoken + ", time=" + time + ", type=" + type + "]";
	}
	
}
