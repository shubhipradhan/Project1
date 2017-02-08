package com.akiraE.AkiraB.daoimpl;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.akiraE.AkiraB.dao.CartDAO;
import com.akiraE.AkiraB.model.Cart;
import com.akiraE.AkiraB.model.User;

@Repository("cartDAO")
@Transactional
@EnableTransactionManagement
public class CartDAOImpl implements CartDAO{

	@Autowired
	SessionFactory sessionFactory;
	@Autowired
	User user;
	
	public void addCart(Cart cart) {
		Session session=sessionFactory.getCurrentSession();
		
	    //cart.setUser(user);
	    
		session.persist(cart);
		
	}

	public void updateCart(Cart cart) {
		Session session=sessionFactory.getCurrentSession();
		session.update(cart);
		
	}

	public Cart getCartById(int cartId) {
		Session session=sessionFactory.getCurrentSession();
		Cart cart=(Cart)session.createQuery("from Cart where cartId="+cartId).getSingleResult();
		return cart;	
	}

}
