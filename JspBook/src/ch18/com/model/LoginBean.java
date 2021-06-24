package ch18.com.model;
//모델에 해당하는 자바빈즈
public class LoginBean {
	private String id;
	private String password;
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public boolean validata() {
		if(id.equals("admin") && password.equals("1234"))
			return true;
		else return false;
		
	}
}
