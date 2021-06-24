package ch04.dao;

import java.io.Serializable;

public class Person implements Serializable{
	private int id=20181004;
	private String name="ȫ�浿";
    private String password = "777";
    private String phone = "12341234";
    
	public Person() {

	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
}
