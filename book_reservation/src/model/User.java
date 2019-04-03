package model;

import java.util.ArrayList;

public class User {
	
	private String name;
	private String password;
	private ArrayList<Book> reservation;
	
	
	public User(String name, String password) {
		super();
		this.name = name;
		this.password = password;
		this.reservation = new ArrayList<>();
	}


	public String getName() {
		return name;
	}


	public String getPassword() {
		return password;
	}


	public ArrayList<Book> getReservation() {
		return reservation;
	}
	
	public void AddReservation(Book book) {
		this.reservation.add(book);
	}

}

