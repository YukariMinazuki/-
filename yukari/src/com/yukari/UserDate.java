package com.yukari;

import java.util.Date;

public class UserDate {
	private Date now;

	public Date getNow() {
		return now;
	}

	public void setNow(Date now) {
		this.now = now;
	}

	public UserDate() {
		this.now = new Date();
	}
	
	public String toString(){
		String tmp = this.now.getYear() + 1900 + "��" + (this.now.getMonth()+ 1) + "��"
					+ (this.now.getDay()-1) + "��"; 
		return tmp;
	}
	
}
