package com.ust.model;

public class TaskBean implements Comparable<TaskBean>{
	private String taskName;
	private int start;
	private int last;
	public String getTaskName() {
		return taskName;
	}
	public void setTaskName(String taskName) {
		this.taskName = taskName;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getLast() {
		return last;
	}
	public void setLast(int last) {
		this.last = last;
	}	
	public int compareTo(TaskBean o){
		if(getStart()>=o.getStart())
			return 1;
		else return -1;
	}
}
