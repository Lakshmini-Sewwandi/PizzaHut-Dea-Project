package model;

public class User {
	private String displayName;
	private String emailAddress;
	private String password;
	


	public User() {
		
	}
	
	public User(String displayName, String emailAddress, String password) {
		super();
		this.displayName = displayName;
		this.emailAddress = emailAddress;
		this.password = password;
	}

	public String getDisplayName() {
		return displayName;
	}
	public void setDisplayName(String displayName) {
		this.displayName = displayName;
	}
	public String getEmailAddress() {
		return emailAddress;
	}
	public void setEmailAddress(String emailAddress) {
		this.emailAddress = emailAddress;
	}
	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	
}
