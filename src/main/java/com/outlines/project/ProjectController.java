package com.outlines.project;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.outlines.project.entity.IngredientEntity;
import com.outlines.project.entity.ProductEntity;
import com.outlines.project.service.IngredientService;
import com.outlines.project.service.ProductService;
import com.outlines.project.dao.IngredientDAO;
import com.outlines.project.dao.ProductDAO;

@Controller
public class ProjectController {
	private static final Logger logger = LoggerFactory.getLogger(ProjectController.class);
	
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/" , method = RequestMethod.GET)
	public String view(Model model, Locale locale){
		logger.info("Welcome home! The client locale is {}.", locale);
		return "firstPage";
	}
	
	@RequestMapping(value = "/tableFormat" , method = RequestMethod.GET)
	public String display(Model model){
		
		return "productTableFormat";
	}
	
	@RequestMapping(value = "/formProduct" , method = RequestMethod.GET)
	public String displayForm(Model model){
		return "addProducts";
	}
	
	@RequestMapping(value = "/saveProduct" , method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") ProductEntity product , BindingResult result){
		productService.addProduct(product);
		return "redirect:/product";
	}
	
	@RequestMapping(value = "/product" , method = RequestMethod.GET)
	public String listProduct(Map<String, Object> map)
	{
		map.put("productList", productService.listProduct());
		
		return "productTableFormat";
		
	}
	
	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String deleteProduct(@ModelAttribute("product") ProductEntity product , BindingResult result, @RequestParam("productP_id") String id){
		productService.deleteProduct(Integer.parseInt(id));
		return "redirect:/product";
	}
	
	@RequestMapping(value = "/edit" , method = RequestMethod.GET)
	public ModelAndView editProduct(@ModelAttribute("product") ProductEntity product , BindingResult result, @RequestParam("productP_id") String id){
		ProductEntity pro = productService.getProductById(Integer.parseInt(id));
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("product", pro);
		return new ModelAndView("updateProduct",model);
	}
	
	@RequestMapping(value = "/updateProductItem", method = RequestMethod.POST)
	public String displayUpdateProduct(@ModelAttribute("product") ProductEntity product ,  BindingResult result){

		productService.updateProduct(product);
		
		return "redirect:/product";
	}
	
}
