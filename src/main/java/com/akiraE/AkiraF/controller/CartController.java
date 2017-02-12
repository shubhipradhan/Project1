package com.akiraE.AkiraF.controller;

import java.security.Principal;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.akiraE.AkiraB.dao.CartDAO;
import com.akiraE.AkiraB.dao.ItemDAO;
import com.akiraE.AkiraB.dao.ProductDAO;
import com.akiraE.AkiraB.dao.UserDAO;
import com.akiraE.AkiraB.dao.UserOrderDAO;
import com.akiraE.AkiraB.model.Cart;
import com.akiraE.AkiraB.model.Item;
import com.akiraE.AkiraB.model.Product;
import com.akiraE.AkiraB.model.User;
import com.akiraE.AkiraB.model.UserOrder;



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
	
	@Autowired
	UserOrderDAO userOrderDAO;
	
	@RequestMapping(value="/AddToCart/{productId}")
	public String addtocart(@PathVariable("productId") int productId,Principal principal){
		
		ModelAndView model=new ModelAndView("CartPage");
        System.out.println(principal.getName());
        User user=userDAO.getUserByUsername(principal.getName());
        model.addObject("user",user);
        Cart cart=user.getCart();
        Product product=productDAO.getProductById(productId);
        
        List<Item> items=cart.getItems();
        System.out.println("Cart Items -----> "+cart.getItems());
        for(int i=0;i<items.size();i++){
           if(product.getProductId()==items.get(i).getProduct().getProductId())
           {
        	   Item item=items.get(i);
        	   item.setQty(item.getQty()+1);
        	   item.setItemTotal(product.getPrice()*item.getQty());
        	   System.out.println("items--->"+i);
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
        try
        {
        itemDAO.addItem(item);
        }catch(Exception e)
        {
        	System.out.println("Adding Item has an Error !!! ");
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
        System.out.println("user Cart--->  " +user.getCart());
        
        cart.getItems();
        
        model.addObject("cart", cart);
        
        cart.getItems();
        
        return model;	
    }
	
	 @RequestMapping("/order/{cartId}")
     public String createOrder(@PathVariable("cartId") int cartId){
		 UserOrder userOrder=new UserOrder();
		 Cart cart=cartDAO.getCartById(cartId);
		 System.out.println("getting Cart in order");
		 userOrder.setCart(cart);
		 System.out.println("Getting user's cart");
		 User user=cart.getUser();
		 userOrder.setUser(user);
		 
		 System.out.println("Setting up the user's ORDER  ");
		 
		 userOrderDAO.addOrder(userOrder);
    	     	 
    	 return "redirect:/checkout?orderId="+userOrder.getOrderId();
     
     }
	
}
