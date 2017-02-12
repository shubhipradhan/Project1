package com.akiraE.AkiraB.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="USERORDER")
public class UserOrder implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int orderId;
	
	@OneToOne(cascade=CascadeType.ALL)
	@JoinColumn(name="cartId")
	private Cart cart;
	
	@OneToOne
	@JoinColumn(name="userId")
	private User user;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "UserOrder [orderId=" + orderId + ", cart=" + cart + ", user=" + user + "]";
	}
	
	
	
}
