package com.spring.first.model;
 
import java.io.Serializable;
 
public class EmployeeVO implements Serializable 
{
    private static final long serialVersionUID = 1L;
 
    private Integer id;
    private String firstName;
    private String lastName;
 
    //Setters and Getters
 
    @Override
    public String toString() {
        return "EmployeeVO [id=" + id + ", firstName=" + firstName
                + ", lastName=" + lastName + "]";
    }

	public void setFirstName(String string) {
		// TODO Auto-generated method stub
		this.firstName=string;
	}

	public void setId(int i) {
		// TODO Auto-generated method stub
		this.id=i;
	}

	public void setLastName(String string) {
		// TODO Auto-generated method stub
		this.lastName=string;
	}
	
	public String getFirstName() {
		// TODO Auto-generated method stub
		return firstName;
	}
	public Integer getId() {
		// TODO Auto-generated method stub
		return id;
	}
	public String getLastName() {
		// TODO Auto-generated method stub
		return lastName;
	}
	
}