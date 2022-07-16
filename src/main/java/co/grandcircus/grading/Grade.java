package co.grandcircus.grading;

import org.springframework.data.annotation.Id;
import org.springframework.data.mongodb.core.mapping.Document;

@Document("grades")
public class Grade {
	//This is the MODEL class
	
	@Id
	private String id;
	private String name;
	private String type;

	private double score;
	private double total;
	
	
	
	public Grade(String id, String name, String type, double score, double total) {
		this.id = id;
		this.name = name;
		this.type = type;
		this.score = score;
		this.total = total;
	}
	public Grade(String name, String type, double score, double total) {
		this.name = name;
		this.type = type;
		this.score = score;
		this.total = total;
	}
	
	public Grade() {
		
	}
	public String getType() {
		return type;
	}
	
	public void setType(String type) {
		this.type = type;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public double getScore() {
		return score;
	}

	public void setScore(double score) {
		this.score = score;
	}

	public double getTotal() {
		return total;
	}

	public void setTotal(double total) {
		this.total = total;
	}

	
	public double getPercent() {
		return (this.score / this.total) * 100;
	}
	
	

}
