package com.akiraE.AkiraB.model;

import java.io.Serializable;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Table(name="CART")
@Component
public class Cart implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int cartId;
	
	@OneToMany(fetch=FetchType.EAGER,mappedBy="cart",cascade=CascadeType.ALL)
	//@OneToMany(fetch=FetchType.EAGER)
	//@JoinColumn(name="itemId")
	@JsonManagedReference
	private List<Item> items;
	
	@OneToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="userId")
	private User user;

	public int getCartId() {
		return cartId;
	}

	public void setCartId(int cartId) {
		this.cartId = cartId;
	}

	public List<Item> getItems() {
		return items;
	}

	public void setItems(List<Item> items) {
		this.items = items;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	@Override
	public String toString() {
		return "Cart [cartId=" + cartId + ", items=" + items + ", user=" + user + "]";
	}
	
	
	
}
