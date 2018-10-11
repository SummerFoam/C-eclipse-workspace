package com.pdsu.ssm.manyTomanyBean;

import java.util.Set;

public class Groups {
	private int gid;
	private String gname;
	private Set<Users> users;
	public int getGid() {
		return gid;
	}
	public void setGid(int gid) {
		this.gid = gid;
	}
	public String getGname() {
		return gname;
	}
	public void setGname(String gname) {
		this.gname = gname;
	}
	public Set<Users> getUsers() {
		return users;
	}
	public void setUsers(Set<Users> users) {
		this.users = users;
	}
	@Override
	public String toString() {
		return "Groups [gid=" + gid + ", gname=" + gname + ", users=" + users + "]";
	}
	
}
