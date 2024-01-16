package com.tutorial.controller;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tutorial.model.Program;

import dbUtil.HibernateCF;
import jakarta.servlet.http.HttpServletRequest;

@Controller
@RequestMapping("/program")
public class FitnessProgramController{
	
	@Controller
	public class HomeController {

	    @RequestMapping("/") // or "/Assignment2/" if that's your root
	    public ModelAndView home() {
	        return new ModelAndView("mainMenu"); // Name of your JSP file without the extension
	    }
	}
	
	@RequestMapping("/addProgram")
	@ResponseBody()
	public ModelAndView addProgram() {
		ModelAndView modelandview = new ModelAndView("programView/addProgram");
		return modelandview;
	}
	
	@RequestMapping("/addedProgram")
	// @ResponseBody()
	public String add(HttpServletRequest request) {
		
		Session session=HibernateCF.getSessionFactory().openSession();
		
		Program prog = new Program();
		prog.setName(request.getParameter("name"));
		prog.setDay(request.getParameter("day"));
		prog.setTime(request.getParameter("time"));
		prog.setNote(request.getParameter("note"));
		prog.setInstructor_id(Integer.parseInt(request.getParameter("instructor_id")));
		
		session.beginTransaction();
		session.save(prog);
		session.getTransaction().commit();
		session.close();
		
		return "programView/addedProgram";
	}

	
	@RequestMapping("/getAllProgram")
    // @ResponseBody()
    public String getAll(Model model) {

        Session session = HibernateCF.getSessionFactory().openSession();

        @SuppressWarnings("unchecked")
        List<Program> pList = session.createQuery("from Program").list();
        model.addAttribute("programs", pList);
        return "programView/getAllProgram";
    }

	@RequestMapping("/getByIdProgram")
	@ResponseBody()
	public ModelAndView getByIdProgram() {
		ModelAndView modelandview = new ModelAndView("programView/getByIdProgram");
		return modelandview;
	}
	
    @RequestMapping("/displayIdProgram")
//    @ResponseBody()
    public String getById(HttpServletRequest request, Model model) {

        Session session = HibernateCF.getSessionFactory().openSession();

        int id = Integer.parseInt(request.getParameter("id"));
        Program p = session.get(Program.class, id);
        model.addAttribute("program", p);
        if (p != null) {
        	model.addAttribute("program", p);
		} else {
		    model.addAttribute("message", "Program not found.");
		}
        return "programView/displayIdProgram";

//        return "this is from getById - program :" + p.toString();

    }
    
    @RequestMapping("/updateProgram")
	@ResponseBody()
	public ModelAndView updateProgram() {
		ModelAndView modelandview = new ModelAndView("programView/updateProgram");
		return modelandview;
	}
    
    @RequestMapping("/updatedProgram")
    // @ResponseBody()
    public String update(HttpServletRequest request) {

        Session session = HibernateCF.getSessionFactory().openSession();

        Program p2u = session.get(Program.class, Integer.parseInt(request.getParameter("id")));
        p2u.setName(request.getParameter("name"));
        p2u.setDay(request.getParameter("day"));
        p2u.setTime(request.getParameter("time"));
        p2u.setNote(request.getParameter("note"));
        p2u.setInstructor_id(Integer.parseInt(request.getParameter("instructor_id")));
        
        session.beginTransaction();
        session.update(p2u);
        session.getTransaction().commit();

        return "programView/updatedProgram";
    }

    @RequestMapping("/deleteProgram")
	@ResponseBody()
	public ModelAndView deleteProgram() {
		ModelAndView modelandview = new ModelAndView("programView/deleteProgram");
		return modelandview;
	}
    
    @RequestMapping("/deletedProgram")
    // @ResponseBody()
    public String delete(HttpServletRequest request) {

        Session session = HibernateCF.getSessionFactory().openSession();

        Program p2d = session.get(Program.class, Integer.parseInt(request.getParameter("id")));

        session.beginTransaction();
        session.delete(p2d);
        session.getTransaction().commit();

        return "programView/deletedProgram";
    }
}