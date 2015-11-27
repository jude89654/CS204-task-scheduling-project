package com.ust.utility;

import com.ust.model.TaskBean;
import com.ust.model.WorkerBean;

public class BeanHelper {
	public static TaskBean getInstance(String taskName, int start, int last){
		TaskBean bean= new  TaskBean();
		bean.setTaskName(taskName);
		bean.setStart(start);
		bean.setLast(last);
		
		return bean;
		
	}
	
	public static WorkerBean getInstance(String name, String skills[]){
		WorkerBean bean= new WorkerBean();
		bean.setName(name);
		bean.setSkills(skills);
		return bean;
	}
	
	public static WorkerBean getInstance(String name, int efficiency[]){
		WorkerBean bean= new WorkerBean();
		bean.setName(name);
		bean.setEfficiency(efficiency);
		return bean;
	}
}
