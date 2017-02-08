package com.akiraE.AkiraB.daoimpl;


import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.akiraE.AkiraB.dao.ProductDAO;
import com.akiraE.AkiraB.model.Product;






@Repository("productDAO")
@Transactional
@EnableTransactionManagement
public class ProductDAOImpl implements ProductDAO{

	@Autowired
	SessionFactory sessionFactory;
	
	
	public void addProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.persist(product);
		
	}


	public void updateProduct(Product product) {
		Session session=sessionFactory.getCurrentSession();
		session.update(product);
		
	}

	

	
	public Product getProductById(int productId) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.createQuery("from Product where productId="+productId).getSingleResult();
		return product;
	}

	
	public List<Product> listProducts() {
		Session session=sessionFactory.getCurrentSession();
		List<Product> products=session.createQuery("from Product").getResultList();
		return products;
		
	}
	
	public List<Product> getProductByCategory(String category) {
		System.out.println(" category : "+category);
		Session session=sessionFactory.getCurrentSession();
		List<Product> products=session.createQuery("from Product WHERE category='"+category+"'").getResultList();
		System.out.println("in productdao : "+products+" category : "+category);
		return products;
		//return null;
	}


	public void deleteProduct(int productId) {
		Session session=sessionFactory.getCurrentSession();
		Product product=(Product)session.createQuery("from Product where productId="+productId).getSingleResult();
		session.delete(product);
		
	}

	
	
	
	/*public List<Product> getProductByCategory(String category) {
		Session session=sessionFactory.getCurrentSession();
		//Product product=(Product)session.createQuery("from Product where category="+category).getResultList();
		List<Product> listproducts=session.createQuery("from Product where category="+category).getResultList();
		return listproducts;
	}*/


	

}
