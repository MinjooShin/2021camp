package com.spring.first.service;

import java.util.List;
 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
 
import com.spring.first.dao.EmployeeDAO;
import com.spring.first.model.EmployeeVO;
 
@Service
public class EmployeeManagerImpl implements EmployeeManager {
 
    @Autowired
    EmployeeDAO dao;
     
    public List<EmployeeVO> getAllEmployees() 
    {
        return dao.getAllEmployees();
    }
}