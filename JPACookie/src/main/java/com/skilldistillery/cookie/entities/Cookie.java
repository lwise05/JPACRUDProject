package com.skilldistillery.cookie.entities;

import java.sql.Date;
import java.time.LocalDate;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

@Entity
public class Cookie {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	
	private String name;
	
	private String description;
	
	private String rating;
	
	@Column(name="last_date_ate")
	private LocalDate lastDateAte;
	
	@Column(name="cookie_image_url")
	private String cookieImage;
	
	public Cookie() {
		super();
	}

	public Cookie(int id, String name, String description, String rating, LocalDate lastDateAte, String cookieImage) {
		super();
		this.id = id;
		this.name = name;
		this.description = description;
		this.rating = rating;
		this.lastDateAte = lastDateAte;
		this.cookieImage = cookieImage;
	}

	public String getRating() {
		return rating;
	}


	public void setRating(String rating) {
		this.rating = rating;
	}


	public LocalDate getLastDateAte() {
		return lastDateAte;
	}


	public void setLastDateAte(LocalDate lastDateAte) {
		this.lastDateAte = lastDateAte;
	}


	public String getCookieImage() {
		return cookieImage;
	}


	public void setCookieImage(String cookieImage) {
		cookieImage = cookieImage;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}


	public String getDescription() {
		return description;
	}


	public void setDescription(String description) {
		this.description = description;
	}

	@Override
	public String toString() {
		return "Cookie [id=" + id + ", name=" + name + ", description=" + description + ", rating=" + rating
				+ ", lastDateAte=" + lastDateAte + ", cookieImage=" + cookieImage + "]";
	}



	
	
}
