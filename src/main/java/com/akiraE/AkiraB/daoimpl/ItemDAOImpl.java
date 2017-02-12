package com.akiraE.AkiraB.daoimpl;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.akiraE.AkiraB.dao.ItemDAO;
import com.akiraE.AkiraB.model.Cart;
import com.akiraE.AkiraB.model.Item;

@Repository("itemDAO")
@Transactional
@EnableTransactionManagement
public class ItemDAOImpl implements ItemDAO{


	@Autowired
	SessionFactory sessionFactory;

	public ItemDAOImpl(){
		
		System.out.println("ITEM DAO IMPL");
		
	}
	
	public void addItem(Item item) {
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(item);
		
	}

	public void removeItem(Item item) {
		Session session=sessionFactory.getCurrentSession();
		String hql = "delete from Item where itemId="+item.getItemId();
		session.createQuery(hql).executeUpdate();
	}

	public void removeAllItems(Cart cart) {
		Session session=sessionFactory.getCurrentSession();
		String hql = "delete from Item where cartId="+cart.getCartId(); 
		session.createQuery(hql).executeUpdate();
		
	}

	public Item getItemByItemId(int itemId) {
		Session session=sessionFactory.getCurrentSession();
		Item item=(Item)session.createQuery("from Item where itemId="+itemId).getSingleResult();
		return item;
	}

	public List<Item> getAllItemsByCart(int cartId) {
		Session session=sessionFactory.getCurrentSession();
		List<Item> items=session.createQuery("from Item where cartId="+cartId).getResultList();
		return items;
	}	

}
