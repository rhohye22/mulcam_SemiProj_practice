package mul.cam.a.dto;

import java.io.Serializable;

public class LoginDto implements Serializable{
 // 로그인 세션및 권한관리용
	private String id;
	private int auth;
	
	public LoginDto() {}

	public LoginDto(String id, int auth) {
		super();
		this.id = id;
		this.auth = auth;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getAuth() {
		return auth;
	}

	public void setAuth(int auth) {
		this.auth = auth;
	}

	@Override
	public String toString() {
		return "LoginDto [id=" + id + ", auth=" + auth + "]";
	}
	
	
}
