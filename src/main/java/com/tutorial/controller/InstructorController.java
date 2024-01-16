package com.tutorial.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tutorial.model.Instructor;

import dbUtil.InstructorDAO;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/instructor")
public class InstructorController{
	
	@RequestMapping("/getAllInstructor")
	// @ResponseBody()
	public String getAll(Model model) {
		InstructorDAO insdao = new InstructorDAO();
		List<Instructor> iList = insdao.getAll();
		model.addAttribute("instructors", iList);
		
		return "/instructorView/getAllInstructor";
	}
	
	@RequestMapping("/getByIdInstructor")
    @ResponseBody
    public ModelAndView delete(HttpServletRequest request) {
		ModelAndView modelandview = new ModelAndView("instructorView/getByIdInstructor");
		return modelandview;
    }
	
	@RequestMapping("/displayIdInstructor")
	// @ResponseBody()
	public String getById(HttpServletRequest request, Model model) {
		int id = Integer.parseInt(request.getParameter("id"));
		InstructorDAO insdao = new InstructorDAO();
		
		Instructor inst1 = insdao.findById(id);
		if (inst1 != null) {
		    model.addAttribute("instructor", inst1);
		} else {
		    model.addAttribute("message", "Instructor not found.");
		}
		
		return "instructorView/displayIdInstructor";
	}
	
	@RequestMapping("/addInstructor")
	@ResponseBody()
	public ModelAndView addInstructor(HttpServletRequest request) {
		ModelAndView modelandview = new ModelAndView("instructorView/addInstructor");
		return modelandview;
		
	}
	
	@RequestMapping("/addedInstructor")
	// @ResponseBody()
	public String add(HttpServletRequest request) {
		Instructor i = new Instructor();
		i.setName(request.getParameter("name"));
		i.setGender(request.getParameter("gender"));
		i.setSpecialty(request.getParameter("specialty"));
		
		InstructorDAO insdao = new InstructorDAO();
		int rw = insdao.add(i);
		
		return "instructorView/addedInstructor" ;
	}
	
	@RequestMapping("/updateInstructor")
	@ResponseBody()
	public ModelAndView updateInstructor(HttpServletRequest request) {
		ModelAndView modelandview = new ModelAndView("instructorView/updateInstructor");
		return modelandview;
	}
	
	@RequestMapping("/updatedInstructor")
    // @ResponseBody
    public String update(HttpServletRequest request, Model model) {
		Instructor i = new Instructor();
        i.setId(Integer.parseInt(request.getParameter("id")));
        i.setName(request.getParameter("name"));
        i.setGender(request.getParameter("gender"));
        i.setSpecialty(request.getParameter("specialty"));
        
        InstructorDAO insdao = new InstructorDAO();
        int rowsAffected = insdao.update(i);
        
        model.addAttribute("rowsAffected", rowsAffected);
        
        return "instructorView/updatedInstructor";
    }
	
	@RequestMapping("/deleteInstructor")
	@ResponseBody()
	public ModelAndView deleteInstructor(HttpServletRequest request) {
		ModelAndView modelandview = new ModelAndView("instructorView/deleteInstructor");
		return modelandview;
	}

    @RequestMapping("/deletedInstructor")
    // @ResponseBody
    public String delete(HttpServletRequest request, Model model) {
    	int id = Integer.parseInt(request.getParameter("id"));
        
        InstructorDAO insdao = new InstructorDAO();
        int rowsAffected = insdao.delete(id);
        
        model.addAttribute("rowsAffected", rowsAffected); // Add rows affected to the model
        
        return "instructorView/deletedInstructor";
    }
}