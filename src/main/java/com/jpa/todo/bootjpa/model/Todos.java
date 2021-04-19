package com.jpa.todo.bootjpa.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Todos {
	@Id
	private int tid;
	private String title;
	private boolean completed;
	public Todos() {
		super();
//		System.out.println("Object Created");
	}
	public int getTid() {
		return tid;
	}
	public void setTid(int tid) {
		this.tid = tid;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public boolean isCompleted() {
		return completed;
	}
	public void setCompleted(boolean completed) {
		this.completed = completed;
	}
	@Override
	public String toString() {
		return "Todos [tid=" + tid + ", title=" + title + ", completed=" + completed + "]";
	}
}
