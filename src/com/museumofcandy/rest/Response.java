package com.museumofcandy.rest;

public class Response {

	public String id;
	public String title;
	public String sourceUrl;
	public String image;
	
	public Response(String id, String title, String sourceUrl, String image) {
		this.id = id;
		this.title = title;
		this.sourceUrl = sourceUrl;
		this.image = image;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getSourceUrl() {
		return sourceUrl;
	}
	public void setSourceUrl(String sourceUrl) {
		this.sourceUrl = sourceUrl;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	
}
