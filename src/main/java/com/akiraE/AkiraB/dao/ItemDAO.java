package com.akiraE.AkiraB.dao;

import java.util.List;

import com.akiraE.AkiraB.model.Cart;
import com.akiraE.AkiraB.model.Item;


public interface ItemDAO {

	public void addItem(Item item);
	public void removeItem(Item item);
	public void removeAllItems(Cart cart);
	public Item getItemByItemId(int itemId);
    public List<Item> getAllItemsByCart(int cartId);
	
}
