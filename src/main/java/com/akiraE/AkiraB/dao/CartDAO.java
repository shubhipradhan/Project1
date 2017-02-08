package com.akiraE.AkiraB.dao;

import com.akiraE.AkiraB.model.Cart;

public interface CartDAO {

	public void addCart(Cart cart);
	public void updateCart(Cart cart);
	public Cart getCartById(int cartId);
	
}
