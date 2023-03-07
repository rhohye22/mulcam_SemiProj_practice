package mul.cam.a.dto;

import java.io.Serializable;

public class BizMemberDto implements Serializable{

	private String company;
	private String pwd;
	private String email;
	private String contact;
	private int auth;
	
	public BizMemberDto() {}

	public BizMemberDto(String company, String pwd, String email, String contact, int auth) {
		super();
		this.company = company;
		this.pwd = pwd;
		this.email = email;
		this.contact = contact;
		this.auth = auth;
	}

	public String getCompany() {
		return company;
	}

	public void setCompany(String company) {
		this.company = company;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getContact() {
		return contact;
	}

	public void setContact(String contact) {
		this.contact = contact;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "BizMemberDto [company=" + company + ", pwd=" + pwd + ", email=" + email + ", contact=" + contact + ", auth=" + auth + "]";
	}
	
	
}
