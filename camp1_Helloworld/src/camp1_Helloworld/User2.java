package camp1_Helloworld;

public class User2 {
	private int id;  
	private String name,password,email,sex,country;  
	//generate getters and setters  
	
	public void setName(String name) {
		this.name=name ;
	}
	public void setPassword(String password) {
		this.password=password ;
	}
	public void setEmail(String email) {
		this.email=email ;
	}
	public void setSex(String sex) {
		this.sex=sex ;
	}
	public void setCountry(String country) {
		this.country=country ;
	}
	public void setId(int id) {
		this.id=id ;
	}
	
	public String getName() {
		return name;
	}
	public String getPassword() {
		return password;
	}
	public String getEmail() {
		return email;
	}
	public String getSex() {
		return sex;
	}
	public String getCountry() {
		return country;
	}
	public int getId() {
		return id;
	}
}
