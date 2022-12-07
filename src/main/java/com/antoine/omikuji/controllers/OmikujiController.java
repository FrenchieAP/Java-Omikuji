package com.antoine.omikuji.controllers;
import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class OmikujiController {
 
 @RequestMapping("/")
 public String index(Model model, HttpSession session) {
	 model.addAttribute("number", session.getAttribute("sessionNumber"));
	 model.addAttribute("city", session.getAttribute("sessionCity"));
	 model.addAttribute("person", session.getAttribute("sessionPerson"));
	 model.addAttribute("item", session.getAttribute("sessionItem"));
	 model.addAttribute("animal", session.getAttribute("sessionAnimal"));
	 model.addAttribute("phrase", session.getAttribute("sessionPhrase"));
     return "index.jsp";
 }
 
 @RequestMapping(value="/omikuji", method=RequestMethod.POST)
 public String yourOmikuji(
 	@RequestParam(value="number") int number,
    @RequestParam(value="city") String city,
 	@RequestParam(value="person") String person,
	@RequestParam(value="item") String item,
	@RequestParam(value="animal") String animal,
	@RequestParam(value="phrase") String phrase,
    HttpSession session) {
     
	 	session.setAttribute("sessionNumber", number);
		session.setAttribute("sessionCity", city);
		session.setAttribute("sessionPerson", person);
		session.setAttribute("sessionItem", item);
		session.setAttribute("sessionAnimal", animal);
		session.setAttribute("sessionPhrase", phrase);
		System.out.println(number);
		System.out.println(city);
		System.out.println(person);
		System.out.println(item);
		System.out.println(phrase);
     	
     	return "redirect:/results"; // <-- we'll change this when we learn redirecting
 }
   @RequestMapping(value="/results")
   public String results(Model model) {
	   return "omikuji.jsp";
   
 }

}

