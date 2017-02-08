package com.akiraE.AkiraB;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.context.support.AbstractApplicationContext;

import com.akiraE.AkiraB.config.AppContextConfig;
import com.akiraE.AkiraB.dao.CartDAO;
import com.akiraE.AkiraB.dao.ItemDAO;
import com.akiraE.AkiraB.dao.ProductDAO;
import com.akiraE.AkiraB.dao.UserDAO;




/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
        System.out.println( "Hello World!" );
       
        
        AbstractApplicationContext context=new AnnotationConfigApplicationContext(AppContextConfig.class);
       UserDAO userDAO=(UserDAO)context.getBean("userDAO");
       ProductDAO productDAO=(ProductDAO)context.getBean("productDAO");
       CartDAO cartDAO=(CartDAO)context.getBean("cartDAO");
       ItemDAO itemDAO=(ItemDAO)context.getBean("itemDAO");
       //System.out.println(productDAO.getProductByCategory("Tops"));
    }
}
