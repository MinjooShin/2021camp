package com.spring.second.service;

import java.util.List;
 
import com.spring.second.model.EmployeeVO;
 
public interface EmployeeManager 
{
    public List<EmployeeVO> getAllEmployees();
}