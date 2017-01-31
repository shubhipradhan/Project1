package com.akiraE.AkiraF.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.akiraE.AkiraB.dao.ProductDAO;
import com.akiraE.AkiraB.dao.UserDAO;
import com.akiraE.AkiraB.model.Product;
import com.akiraE.AkiraB.model.User;
import com.google.gson.Gson;



@Controller
public class AdminController {

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	////////////////////////////////////////// PRODUCT CONTROLLER ///////////////////////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////

	@Autowired
	ProductDAO productDAO;

	@RequestMapping(value = "/AdminProduct", method = RequestMethod.GET)
	public String listProducts(Model model) {
		model.addAttribute("product", new Product());
		System.out.println("inside controller");

		model.addAttribute("listProducts", productDAO.listProducts());
		return "AdminProduct";
	}

	@RequestMapping(value = "/product/add", method = RequestMethod.POST)
	public String addProduct(@Valid @ModelAttribute("product") Product product, BindingResult result,
			HttpServletRequest request) {

		
        byte[] bytes;
		
		if (!product.getImage().isEmpty()) {

			try {
				
				bytes = product.getImage().getBytes();
				productDAO.addProduct(product);
				System.out.println("Data Inserted");
				String path = request.getSession().getServletContext().getRealPath("/static/images/" + product.getProductId() + ".jpg");
				System.out.println("Path = " + path);
				System.out.println("File name = " + product.getImage().getOriginalFilename());
				File f = new File(path);
				BufferedOutputStream bs = new BufferedOutputStream(new FileOutputStream(f));
				bs.write(bytes);
				bs.close();
				System.out.println("Image uploaded");
			} catch (Exception ex) {
				System.out.println(ex.getMessage());
			}
		}
		
		
		if (result.hasErrors()) {
			return "AdminProduct";
		} else {

			if (product.getProductId() == 0) {
				productDAO.addProduct(product);
			} else {
				productDAO.updateProduct(product);
			}

			return "redirect:/AdminProduct";
		}
	}

	@RequestMapping("/remove/{productId}")
	public String deleteProduct(@PathVariable("productId") int productId) {
		
		productDAO.deleteProduct(productId);
		
		return "redirect:/AdminProduct";
		
	}
	@RequestMapping(value="/view/{category}")
	public ModelAndView ProductCategory(@PathVariable("category") String category){
		
		List<Product> products=productDAO.getProductByCategory(category);
		String productList=new Gson().toJson(products);
		ModelAndView model=new ModelAndView("AdminCategory");
		model.addObject("productList", productList);
		return model;
	}
	/*@RequestMapping(value = "/view/{category}")
	public String listProductsCategory(Model model,@PathVariable("category") String category) {
		//model.addAttribute("product", new Product());
		System.out.println("inside controller");

		//model.addAttribute("listProducts", productDAO.listProducts());
		model.addAttribute("listProducts", productDAO.getProductByCategory(category));
		
		return "AdminCategory";
	}
	*/
	/*@RequestMapping("/view/{category}")
	public String categoryProduct(@PathVariable("category") String category) {
		
		productDAO.getProductByCategory(category);
		
		return "redirect:/AdminCategory";
		
	}*/


	@RequestMapping("/edit/{productId}")
	public String editProduct(@PathVariable("productId") int productId, Model model) {
		
		model.addAttribute("product", productDAO.getProductById(productId));
		
		model.addAttribute("listProducts", productDAO.listProducts());
		
		return "AdminProduct";
		
	}
	
	@RequestMapping("/adminProduct/category/{category}")
	public String editUser(@PathVariable("category") String category, Model model) {
		
		model.addAttribute("product", productDAO.getProductByCategory(category));
		
		model.addAttribute("listProducts", productDAO.listProducts());
		
		return "AdminCategory";
		
	}

	/////////////////////////////////////////////////////////////////////////////////////////////////////////
	                //////////////////// USER CONTROLLER ////////////////////////
	/////////////////////////////////////////////////////////////////////////////////////////////////////////

	@Autowired
	UserDAO userDAO;

	@RequestMapping(value={"/userRegister"})
	public String userRegisterPage(@ModelAttribute("user") User user,BindingResult result,HttpServletRequest request){
		return "userRegister";
	}
	
	
	
	
	
	@RequestMapping(value= "userregister/users/add", method=RequestMethod.POST)
	public String addUserRegister( @ModelAttribute("user") User user,BindingResult result,HttpServletRequest request )
	{
	
		
		if(result.hasErrors())
		{
			return "userRegister";
		}
		else{
			if (user.getUserId() == 0) {
				userDAO.addUser(user);
			} else {
				userDAO.updateUser(user);
			}

			return "redirect:/login";
		}
	}
	
	
	
	@RequestMapping(value = "/AdminUser", method = RequestMethod.GET)
	public String listUsers(Model model) {
		
		model.addAttribute("user", new User());
		
		System.out.println("inside controller");

		model.addAttribute("listUsers", userDAO.listUsers());
		
		return "AdminUser";
	}

	@RequestMapping(value = "/user/add", method = RequestMethod.POST)
	public String addUser(@Valid @ModelAttribute("user") User user, BindingResult result,
			HttpServletRequest request) {

		if (result.hasErrors()) {
			return "AdminUser";
		} else {

			if (user.getUserId() == 0) 
			{
				userDAO.addUser(user);
			}
			
			else 
			
			{
				userDAO.updateUser(user);
			}

			return "redirect:/AdminUser";
		}
	}

	@RequestMapping("/adminUser/remove/{userId}")
	public String deleteUser(@PathVariable("userId") int userId) {
		
		userDAO.deleteUser(userId);
		
		return "redirect:/AdminUser";
		
	}

	@RequestMapping("/adminUser/edit/{userId}")
	public String editUser(@PathVariable("userId") int userId, Model model) {
		
		model.addAttribute("user", userDAO.getUserById(userId));
		
		model.addAttribute("listUsers", userDAO.listUsers());
		
		return "AdminUser";
		
	}

}
