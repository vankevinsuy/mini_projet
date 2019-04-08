package model;

public class Book {
	private String title;
	private String author;
	private int realease_date;
	private String editor;
	private String cover;
	private boolean booked;
	private String summary;
	
	
	public Book(String title, String author, int realease_date, String editor, String cover, String summary) {
		super();
		this.title = title;
		this.author = author;
		this.realease_date = realease_date;
		this.editor = editor;
		this.cover = cover;
		this.booked = false;
		this.summary = summary;
	}


	public String getTitle() {
		return title;
	}


	public String getAuthor() {
		return author;
	}


	public int getRealease_date() {
		return realease_date;
	}


	public String getEditor() {
		return editor;
	}


	public String getCover() {
		return cover;
	}


	public boolean isBooked() {
		return booked;
	}
	
	public void setBooked() {
		this.booked = true;
	}
	
	public String getSummary() {
		return summary;
	}
	
}


