package camp1_Helloworld;

public class Book {
	private int id;  
	private String title,author,comment, file;  
	//generate getters and setters  
	
	public void setTitle(String title) {
		this.title=title;
	}
	public void setAuthor(String author) {
		this.author=author;
	}
	public void setComment(String comment) {
		this.comment=comment;
	}
	public void setFile(String file) {
		this.file=file;
	}
	public void setId(int id) {
		this.id=id;
	}
	
	public String getTitle() {
		return title;
	}
	public String getAuthor() {
		return author;
	}
	public String getComment() {
		return comment;
	}
	public String getFile() {
		return file;
	}
	public int getId() {
		return id;
	}
}