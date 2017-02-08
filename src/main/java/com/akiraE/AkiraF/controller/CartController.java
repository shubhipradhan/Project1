package com.akiraE.AkiraF.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akiraE.AkiraB.dao.CartDAO;
import com.akiraE.AkiraB.dao.ItemDAO;
import com.akiraE.AkiraB.dao.ProductDAO;
import com.akiraE.AkiraB.dao.UserDAO;
import com.akiraE.AkiraB.model.Cart;
import com.akiraE.AkiraB.model.Item;
import com.akiraE.AkiraB.model.Product;
import com.akiraE.AkiraB.model.User;



@Controller
public class CartController {

	@Autowired
	UserDAO userDAO;
	
	@Autowired
	CartDAO cartDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	ItemDAO itemDAO;
	
	@RequestMapping(value="/AddToCart/{productId}")
	public String addtocart(@PathVariable("productId") int productId,Principal principal){
		
		ModelAndView model=new ModelAndView("CartPage");
        System.out.println(principal.getName());
        User user=userDAO.getUserByUsername(principal.getName());
        model.addObject("user",user);
        Cart cart=user.getCart();
        Product product=productDAO.getProductById(productId);
        
        List<Item> items=cart.getItems();
        
        for(int i=0;i<items.size();i++){
           if(product.getProductId()==items.get(i).getProduct().getProductId())
           {
        	   Item item=items.get(i);
        	   item.setQty(item.getQty()+1);
        	   item.setItemTotal(product.getPrice()*item.getQty());
        	   System.out.println("items"+i);
        	   itemDAO.addItem(item);
        	   
        	   return "redirect:/Cart";
           }
	
	}
        Item item=new Item();
        item.setProduct(product);
        item.setQty(1);
        item.setItemTotal(product.getPrice()*item.getQty());
        item.setCart(cart);
        System.out.println("first item");
        try{
        itemDAO.addItem(item);
        }catch(Exception e)
        {
        	System.out.print(e);
        }
    	return "redirect:/Cart";	
    }
	
	@RequestMapping("/Cart")
    public ModelAndView cart(Principal principal){
        ModelAndView model=new ModelAndView("CartPage");
        System.out.println(principal.getName());
        User user=userDAO.getUserByUsername(principal.getName());
        model.addObject("user", user);
        Cart cart=user.getCart();
        cart.getItems();
        model.addObject("cart", cart);
        cart.getItems();
        return model;	
    }
}
