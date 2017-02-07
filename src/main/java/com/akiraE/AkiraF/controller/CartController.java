package com.akiraE.AkiraF.controller;

import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

public class CartController {

	@RequestMapping(value="AddToCart/productId")
	public String addtocart(@PathVariable("productId") int productId){
		return "cart";
	}
}
