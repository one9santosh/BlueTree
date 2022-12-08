package com.company;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
@Service
public class EmployeeDAO {
	@Autowired
	EmployeeRepo repo;
	
	
	//insert a single object
	public Employee insert(Employee s) {
		return repo.save(s);
	}
	
	
	
	//retrieve all the objects
	public List<Employee> getall(){
		return repo.findAll();
	}
	
	
	//delete
	public String deleteByid(int id) {
		repo.deleteById(id);
		return "deleted the id value:"+id; 
	}
	
	
	//update
	public Employee update(Employee s) {
		Employee ss=repo.findById(s.getId()).orElse(null);
		ss.setName(s.getName());
		ss.setEmail(s.getEmail());
		ss.setDob(s.getDob());
		ss.setAge(s.getAge());
		
		ss.setSalary(s.getSalary());
		ss.setStatus(s.getStatus());
		
		return repo.save(ss);
	}
	
}