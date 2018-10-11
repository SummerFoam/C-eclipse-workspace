package com.pdsu.ssm.manyTomanyBean;

import java.util.Set;

public class Users {
	private int uid;
	private String uname;
	private Set<Groups> groups;
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	public String getUname() {
		return uname;
	}
	public void setUname(String uname) {
		this.uname = uname;
	}
	public Set<Groups> getGroups() {
		return groups;
	}
	public void setGroups(Set<Groups> groups) {
		this.groups = groups;
	}
	@Override
	public String toString() {
		return "Users [uid=" + uid + ", uname=" + uname + ", groups=" + groups + "]";
	}
	
}
