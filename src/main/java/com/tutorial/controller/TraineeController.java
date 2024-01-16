package com.tutorial.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.tutorial.model.Trainee;

import dbUtil.DbConnect;
import jakarta.servlet.http.HttpServletRequest;

@Controller()
@RequestMapping("/trainee")
public class TraineeController {

	@RequestMapping("/getAllTrainee")
	@ResponseBody()
	public ModelAndView getAll() {
	    String dbURL = "jdbc:mysql://localhost:3306/ip23db";
	    String username = "root";
	    String password = "";
	    
	    ModelAndView modelAndView = new ModelAndView("traineeView/getAllTrainee"); // JSP file name

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn = DriverManager.getConnection(dbURL, username, password);
	        System.out.println("connection successfully opened :" + conn.getMetaData());

	        String sql = "select * from trainee";
	        Statement stmt = conn.createStatement();
	        ResultSet rs = stmt.executeQuery(sql);
	        
	        List<Trainee> trainees = new ArrayList<>();
	        while(rs.next()) {
	            Trainee trainee = new Trainee();
	            trainee.setId(rs.getInt("id"));
	            trainee.setName(rs.getString("name"));
	            trainee.setWeight(rs.getDouble("weight"));
	            trainee.setHeight(rs.getDouble("height"));
	            trainee.setBMI(rs.getDouble("BMI"));
	            
	            // Add more fields as necessary
	            trainees.add(trainee);
	        }
	        
	        modelAndView.addObject("trainees", trainees); // Adding the list to the model
	        conn.close();
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	    } catch (ClassNotFoundException ex) {
	        ex.printStackTrace();
	    }

	    return modelAndView;
}
	
	@RequestMapping("/getByIdTrainee")
	@ResponseBody()
	public ModelAndView getById() {
		ModelAndView modelAndView = new ModelAndView("traineeView/getByIdTrainee");
	    return modelAndView ;
	}
	
	@RequestMapping("/displayIdTrainee")
	@ResponseBody()
	public ModelAndView getById(HttpServletRequest request) {
	    int id = Integer.parseInt(request.getParameter("id"));
	    ModelAndView modelAndView = new ModelAndView("traineeView/displayIdTrainee"); // JSP file name

	    String dbURL = "jdbc:mysql://localhost:3306/ip23db";
	    String username = "root";
	    String password = "";

	    try {
	        Class.forName("com.mysql.cj.jdbc.Driver");
	        Connection conn = DriverManager.getConnection(dbURL, username, password);

	        String sql = "select * from trainee where id = ?";
	        PreparedStatement stmt = conn.prepareStatement(sql);
	        stmt.setInt(1, id);
	        ResultSet rs = stmt.executeQuery();

	        if (rs.next()) {
	            Trainee trainee = new Trainee();
	            trainee.setId(rs.getInt("id"));
	            trainee.setName(rs.getString("name"));
	            trainee.setWeight(rs.getDouble("weight"));
	            trainee.setHeight(rs.getDouble("Height"));
	            trainee.setBMI(rs.getDouble("BMI"));
	            // Add more fields as necessary

	            modelAndView.addObject("trainee", trainee); // Adding the trainee to the model
	        } else {
	            modelAndView.addObject("message", "Trainee not found");
	        }
	        conn.close();
	    } catch (SQLException ex) {
	        ex.printStackTrace();
	        modelAndView.addObject("message", "SQL Error: " + ex.getMessage());
	    } catch (ClassNotFoundException ex) {
	        ex.printStackTrace();
	        modelAndView.addObject("message", "JDBC Driver not found: " + ex.getMessage());
	    }

	    return modelAndView;
	}
	
	@RequestMapping("/addTrainee")
	@ResponseBody()
	public ModelAndView addTrainee() {
		ModelAndView modelAndView = new ModelAndView("traineeView/addTrainee");
	    return modelAndView ;
	}
	
	@RequestMapping("/addedTrainee")
	@ResponseBody()
	
    public ModelAndView add(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("traineeView/addedTrainee"); // Name of the JSP file for the response
        
        String name = request.getParameter("name");
        double weight = Double.parseDouble(request.getParameter("weight"));
        float height = Float.parseFloat(request.getParameter("height"));
        double bmi = Double.parseDouble(request.getParameter("bmi"));
        
        String dbURL = "jdbc:mysql://localhost:3306/ip23db";
        String username = "root";
        String password = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, username, password);
            String sql = "INSERT INTO trainee (name, weight, height, bmi) VALUES (?, ?, ?, ?)";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setDouble(2, weight);
            stmt.setFloat(3, height);
            stmt.setDouble(4, bmi);
            
            int rowAffected = stmt.executeUpdate();
            
            modelAndView.addObject("message", "Trainee added successfully. Rows affected: " + rowAffected);
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "SQL Error: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "JDBC Driver not found: " + ex.getMessage());
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "Invalid input format.");
        }

        return modelAndView;
    }
	
	@RequestMapping("/deleteTrainee")
	@ResponseBody()
	public ModelAndView deleteTrainee() {
		ModelAndView modelAndView = new ModelAndView("traineeView/deleteTrainee");
	    return modelAndView ;
	}
	
	@RequestMapping("/deletedTrainee")
	@ResponseBody()	
	public ModelAndView delete(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("traineeView/deletedTrainee"); // Name of the JSP file for the response

        int id = Integer.parseInt(request.getParameter("id"));
        
        String dbURL = "jdbc:mysql://localhost:3306/ip23db";
        String username = "root";
        String password = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, username, password);
            String sql = "DELETE FROM trainee WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);

            int rowAffected = stmt.executeUpdate();
            
            if(rowAffected == 0) {
            	modelAndView.addObject("message", "Trainee not found. Rows affected: " + rowAffected);
            }
            else {
            	modelAndView.addObject("message", "Trainee deleted successfully. Rows affected: " + rowAffected);
            }
            
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "SQL Error: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "JDBC Driver not found: " + ex.getMessage());
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "Invalid input format.");
        }

        return modelAndView;
    }
	
	@RequestMapping("/updateTrainee")
	@ResponseBody()
	public ModelAndView updateTrainee() {
		ModelAndView modelAndView = new ModelAndView("traineeView/updateTrainee");
	    return modelAndView ;
	}
	
	@RequestMapping("/updatedTrainee")
	@ResponseBody()
	public ModelAndView update(HttpServletRequest request) {
        ModelAndView modelAndView = new ModelAndView("traineeView/updatedTrainee"); // Name of the JSP file for the response

        int id = Integer.parseInt(request.getParameter("id"));
        String name = request.getParameter("name");
        double weight = Double.parseDouble(request.getParameter("weight"));
        float height = Float.parseFloat(request.getParameter("height"));
        double bmi = Double.parseDouble(request.getParameter("bmi"));
        
        String dbURL = "jdbc:mysql://localhost:3306/ip23db";
        String username = "root";
        String password = "";

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbURL, username, password);
            String sql = "UPDATE trainee SET name = ?, weight = ?, height = ?, bmi = ? WHERE id = ?";
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, name);
            stmt.setDouble(2, weight);
            stmt.setFloat(3, height);
            stmt.setDouble(4, bmi);
            stmt.setInt(5, id);

            int rowAffected = stmt.executeUpdate();
            if(rowAffected == 0) {
            	modelAndView.addObject("message", "Trainee not found. Rows affected: " + rowAffected);
            }
            else {
            	modelAndView.addObject("message", "Trainee updated successfully. Rows affected: " + rowAffected);
            }
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "SQL Error: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "JDBC Driver not found: " + ex.getMessage());
        } catch (NumberFormatException ex) {
            ex.printStackTrace();
            modelAndView.addObject("message", "Invalid input format.");
        }

        return modelAndView;
    }
}