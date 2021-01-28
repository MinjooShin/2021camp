package com.spring.second.dao;

import java.util.List;

import com.spring.second.model.EmployeeVO;
 
public interface EmployeeDAO 
{
    public List<EmployeeVO> getAllEmployees();
}