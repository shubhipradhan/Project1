package com.akiraE.AkiraF.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.akiraE.AkiraB.dao.CartDAO;
import com.akiraE.AkiraB.dao.ItemDAO;
import com.akiraE.AkiraB.model.Cart;
import com.akiraE.AkiraB.model.Item;

@RestController
public class RestCartController {

	@Autowired
    ItemDAO itemDAO;
	
    @Autowired
    CartDAO cartDAO;
    
    @RequestMapping("/refreshCart/{cartId}")
	 public Cart getCartById(@PathVariable("cartId") int cartId){
 	      return cartDAO.getCartById(cartId);
   }
	 
    @RequestMapping(value="/removeItem/{itemId}", method=RequestMethod.PUT)
	 public void removeItem(@PathVariable("itemId") int itemId){
 	    Item item=itemDAO.getItemByItemId(itemId);
         itemDAO.removeItem(item);
   }
}
