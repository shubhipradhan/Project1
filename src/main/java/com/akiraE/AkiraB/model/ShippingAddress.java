package com.akiraE.AkiraB.model;

import java.io.Serializable;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import com.fasterxml.jackson.annotation.JsonIgnore;

@Entity
@Table(name="ShippingAddress")
public class ShippingAddress implements Serializable{

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int shippingAddressId;
	
	private String address1;
	
	private String address2;
	
	private String city;
	
	private String pin;
	
	@OneToOne
	@JoinColumn(name="userId")
	@JsonIgnore
	private User user;

	public int getShippingAddressId() {
		return shippingAddressId;
	}

	public void setShippingAddressId(int shippingAddressId) {
		this.shippingAddressId = shippingAddressId;
	}

	public String getAddress1() {
		return address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "ShippingAddress [shippingAddressId=" + shippingAddressId + ", address1=" + address1 + ", address2="
				+ address2 + ", city=" + city + ", pin=" + pin + ", user=" + user + "]";
	}
	
	
}
