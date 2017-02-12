package com.akiraE.AkiraB.dao;

import com.akiraE.AkiraB.model.UserOrder;

public interface UserOrderDAO {

	public void addOrder(UserOrder order);
	public UserOrder getUserOrderById(int orderId);
	
}
