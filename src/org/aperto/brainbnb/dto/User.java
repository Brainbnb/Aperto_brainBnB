package org.aperto.brainbnb.dto;

public class User {
	private String userName;
	private String userID;
	private String picturePath;
	
	public User(String userID, String userName, String picturePath) {
		this.userID = userID;
		this.userName = userName;
		this.picturePath = picturePath;
	}
//	public User() {
//		// TODO Auto-generated constructor stub
//	}
	public String getPicturePath() {
		return picturePath;
	}
	public void setPicturePath(String picturePath) {
		this.picturePath = picturePath;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}

	
}
