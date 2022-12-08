package com.company;

import java.util.List;
import java.util.logging.Logger;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@Controller
public class EmployeeController {
@Autowired
	EmployeeDAO dao;
@RequestMapping("insert")
public ModelAndView insert(HttpServletRequest req,HttpServletResponse res) {
	int id=Integer.parseInt(req.getParameter("id"));
	String name=req.getParameter("name");
	String email = req.getParameter("email");
	String dob=req.getParameter("dob");
	String age=req.getParameter("age");
	String salary = req.getParameter("salary");
	String status = req.getParameter("status");
	
	ModelAndView mv=new ModelAndView();
	Employee s=new Employee();
	s.setId(id);
	s.setName(name);
	s.setEmail(email);
	s.setDob(dob);
	s.setAge(age);
	
	s.setSalary(salary);;
	s.setStatus(status);;
	
	Employee sd=dao.insert(s);
	if(sd!=null) {
		mv.setViewName("success.jsp");
	}else {
		mv.setViewName("error.jsp");	
	}
	return mv;
}
@RequestMapping("update")
public ModelAndView update(HttpServletRequest req,HttpServletResponse res) {
	String name=req.getParameter("name");
	String email = req.getParameter("email");
	String dob=req.getParameter("dob");
	String age=req.getParameter("age");
	String salary = req.getParameter("salary");
	String status = req.getParameter("status");
int id=Integer.parseInt(req.getParameter("id"));
	
	ModelAndView mv=new ModelAndView();
	Employee ss=new Employee();
	ss.setName(name);
	ss.setEmail(email);
	ss.setDob(dob);
	ss.setAge(age);
	
	ss.setSalary(salary);
	ss.setStatus(status);
	
	ss.setId(id);
	Employee sd=dao.update(ss);
	if(sd!=null) {
		mv.setViewName("success.jsp");
	}else {
		mv.setViewName("error.jsp");
	}
	
	return mv;
}
@RequestMapping("delete")
public ModelAndView delete(HttpServletRequest req,HttpServletResponse res) {
	int id=Integer.parseInt(req.getParameter("id"));	
	ModelAndView mv=new ModelAndView();
	Employee s=new Employee();
	s.setId(id);
	String sd=dao.deleteByid(id);
	if(sd!=null) {
		mv.setViewName("success.jsp");
	}else {
		mv.setViewName("error.jsp");
	}
	return mv;
}

@RequestMapping("getall")
public ModelAndView getemp(HttpServletRequest req,HttpServletResponse res) {
	ModelAndView mv=new ModelAndView();
	List<Employee> list=dao.getall();
	mv.setViewName("list.jsp");
	mv.addObject("list",list);
	return mv;
}

}