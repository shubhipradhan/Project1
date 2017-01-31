package com.akiraE.AkiraB.dao;


import java.util.List;

import com.akiraE.AkiraB.model.Product;




public interface ProductDAO {

	public void addProduct(Product product);
	
	public void updateProduct(Product product);
	
	public void deleteProduct(int productId);
	
	public List<Product> getProductByCategory(String category);
	
	public Product getProductById(int productId);
	
	public List<Product> listProducts();
	
}
