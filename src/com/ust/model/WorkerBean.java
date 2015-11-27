package com.ust.model;

import java.util.Arrays;

public class WorkerBean {
	private String Name;
	private String[] skills;
	private String schedule[];
	private int[] efficiency;
	
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
		Arrays.fill(this.schedule,"NONE");
	}
	public void addSchedule(int start, int end, String task){
		Arrays.fill(this.schedule, start, end, task);
	}
	public int[] getEfficiency() {
		return efficiency;
	}
	public void setEfficiency(int[] efficiency) {
		this.efficiency = efficiency;
	}
	
}
