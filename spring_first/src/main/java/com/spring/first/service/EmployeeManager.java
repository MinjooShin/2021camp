package com.spring.first.service;

import java.util.List;
 
import com.spring.first.model.EmployeeVO;
 
public interface EmployeeManager 
{
    public List<EmployeeVO> getAllEmployees();
}