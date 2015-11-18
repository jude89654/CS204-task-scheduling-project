package com.ust.model;

import java.util.Arrays;

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
		Arrays.fill(this.skills,"NONE");
	}
	public String[] getSchedule() {
		return schedule;
	}
	public void setSchedule(String[] schedule) {
		this.schedule = schedule;
	}
	public void addSchedule(int start, int end, String task){
		Arrays.fill(schedule, start, end-1, task);
	}
}
