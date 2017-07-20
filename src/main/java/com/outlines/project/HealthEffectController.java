package com.outlines.project;

import javax.xml.ws.BindingType;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.outlines.project.service.IngredientService;

@Controller
public class HealthEffectController {
private static final Logger logger = LoggerFactory.getLogger(IngredientController.class);
	
	@Autowired
	private IngredientService ingredientService;
	
	@RequestMapping(value = "/healthTable" ,method = RequestMethod.GET)
	public String diplayHealthEffectTable(){
		return "";
	}
}
