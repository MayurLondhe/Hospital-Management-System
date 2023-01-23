package com.HMS;

import jakarta.persistence.Entity;
import jakarta.persistence.Id;

@Entity
public class Contact {
	@Id
	 String name;
	 String email;
	 String phone;
	 String massage;
	 Contact() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Contact(String name, String email, String phone, String massage) {
		super();
		this.name = name;
		this.email = email;
		this.phone = phone;
		this.massage = massage;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getMassage() {
		return massage;
	}
	public void setMassage(String massage) {
		this.massage = massage;
	}
	@Override
	public String toString() {
		return "Contact [name=" + name + ", email=" + email + ", phone=" + phone + ", massage=" + massage + "]";
	}
}
