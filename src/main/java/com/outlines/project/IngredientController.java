package com.outlines.project;

import java.util.HashMap;
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

@Controller
public class IngredientController {
	private static final Logger logger = LoggerFactory.getLogger(IngredientController.class);
	
	@Autowired
	private IngredientService ingredientService;
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = "/ingredientTable" , method = RequestMethod.GET)
	public String tableView(Model model){
		return "ingredientTableFormat";
	}
	@RequestMapping(value = "/formIngredient")
	public String displayFormIngredient(Model model,Map<String, Object> map){
		System.out.println("start up " );
//		ProductEntity p=(ProductEntity) productService.listProduct();
//		map.put("productList", productService.listProduct());
		map.put("productList", productService.listProduct());
		System.out.println("end up");
		return "addIngredient";
	}
	@RequestMapping(value = "/saveIngredient" , method = RequestMethod.POST)
	public String addIngredient(@ModelAttribute("ingredient") IngredientEntity ingredient , BindingResult result){
		System.out.println("jdbshfidgfdsgkbj " + ingredient.getProduct_id());
		IngredientEntity i=ingredient;
		ingredientService.addIngredient(ingredient);
		
		return "redirect:/ingredients";
	}
	
	@RequestMapping(value = "/ingredients" , method = RequestMethod.GET)
	public String listProduct(Map<String, Object> map)
	{
		map.put("ingredientList", ingredientService.listIngredient());
		return "redirect:/ingredientTable";
	}
	
	@RequestMapping(value = "/deleteIngredient", method = RequestMethod.GET)
	public String deleteIngredient(@ModelAttribute("ingredient") IngredientEntity ingredient , BindingResult result, @RequestParam("productP_id") String id){
		ingredientService.deleteIngredient(Integer.parseInt(id));
		return "redirect:/ingredient";
	}
	
	@RequestMapping(value = "/editIngredient" , method = RequestMethod.GET)
	public ModelAndView editIngredient(@ModelAttribute("ingredient") IngredientEntity ingredient , BindingResult result, @RequestParam("ingredientIng_id") String id){
		IngredientEntity pro = ingredientService.getIngredientById(Integer.parseInt(id));
		Map<String, Object> model = new HashMap<String, Object>();
		model.put("product", pro);
		return new ModelAndView("updateIngredient",model);
	}
	
	@RequestMapping(value = "/updateIngredientItem", method = RequestMethod.POST)
	public String displayUpdateIngredient(@ModelAttribute("ingredient") IngredientEntity ingredient ,  BindingResult result){

		ingredientService.updateIngredient(ingredient);
		
		return "redirect:/ingredient";
	}	
}
