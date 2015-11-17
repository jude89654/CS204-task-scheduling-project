package com.ust.model;

public class WorkerBean {
	private String Name;
	private String[] skills;
	private String schedule[];
	public String getName() {
		return Name;
	}
	public void setName(String name) {
		Name = name;
	}
	public String[] getSkills() {
		return skills;
	}
	public void setSkills(String[] skills) {
		this.skills = skills;
	}
	public String[] getSchedule() {
		return schedule;
	}
	public void setSchedule(String[] schedule) {
		this.schedule = schedule;
	}
}
