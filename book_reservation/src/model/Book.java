package model;

public class Book {
	private String name;
	private String image_Link;
	private boolean booked;
	
	
	public Book(String name, String image_Link) {
		super();
		this.name = name;
		this.image_Link = image_Link;
		this.booked = false;
	}


	public boolean isBooked() {
		return booked;
	}


	public void setBooked(boolean booked) {
		this.booked = booked;
	}


	public String getName() {
		return name;
	}


	public String getImage_Link() {
		return image_Link;
	}
	
	
	
}


