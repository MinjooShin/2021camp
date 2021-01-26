package com.spring.first.dao;

import java.util.List;
 
import com.spring.first.model.EmployeeVO;
 
public interface EmployeeDAO 
{
    public List<EmployeeVO> getAllEmployees();
}