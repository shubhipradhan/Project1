package com.akiraE.AkiraB.model;

import java.io.Serializable;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;

@Entity
@Component
@Table(name="ITEM")
public class Item implements Serializable {

	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int itemId;
	
	@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="productId")
	
	private Product product;
	
	@ManyToOne(fetch=FetchType.EAGER,cascade=CascadeType.ALL)
	//@ManyToOne(fetch=FetchType.EAGER)
	@JoinColumn(name="cartId")
	@JsonBackReference
	private Cart cart;
	
	
	private int qty;
	
	private double itemTotal;

	public int getItemId() {
		return itemId;
	}

	public void setItemId(int itemId) {
		this.itemId = itemId;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public int getQty() {
		return qty;
	}

	public void setQty(int qty) {
		this.qty = qty;
	}

	public double getItemTotal() {
		return itemTotal;
	}

	public void setItemTotal(double itemTotal) {
		this.itemTotal = itemTotal;
	}

	/*@Override
	public String toString() {
		return "Item [itemId=" + itemId + ", product=" + product + ", cart=" + cart + ", qty=" + qty + ", itemTotal="
				+ itemTotal + "]";
	}
*/
	
	
		
}
