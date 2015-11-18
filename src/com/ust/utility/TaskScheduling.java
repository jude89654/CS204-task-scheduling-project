package com.ust.utility;
import com.ust.model.*;

import java.util.Arrays;
import java.util.PriorityQueue;

public class TaskScheduling {
	public static WorkerBean[] scheduleTasks(TaskBean[] tasks, WorkerBean[] workers) {

		PriorityQueue<TaskBean> q = new PriorityQueue<TaskBean>();

		for (TaskBean task : tasks) {
			q.add(task);
		}
		initializeSchedule(workers,tasks);

		while (!q.isEmpty()) {
			
				TaskBean currentTask = q.remove();
				//kukunin kung kailan nagsisimula ang task
				int currentStart = currentTask.getStart()-1;
				//kukunin kung kailan magtatapos ang task
				int currentLast = currentTask.getLast()-1;
				
				//yung for loop checheck kung sino ang eligible sa task na iyon
				for(WorkerBean worker: workers){
					
					if(isSkill(currentTask,worker)
							&worker.getSchedule()[currentTask.getStart()]
									.equals("NONE")){
						
						//dagdag sa schedule niya kung ganun
						worker.addSchedule(currentStart, currentLast, currentTask.getTaskName());
						//break na kung may nakita ng eligible
						break;
					}else
					{
						//tuloy lang ulit for loop kung walang nakita
					}
				}
			}
		return workers;
		}
	

	public static int maxLength(TaskBean tasks[]) {
		int max = 0;
		for (TaskBean task : tasks) {
			if (max < task.getLast()) {
				max = task.getLast();
			}
		}
		return max;

	}

	public static void initializeSchedule(WorkerBean[] workers, TaskBean tasks[]) {
		for (WorkerBean work : workers) {
			work.setSchedule(new String[maxLength(tasks)]);
		}
	}


	public static boolean isSkill(TaskBean task, WorkerBean worker) {
		for (String x : worker.getSkills()) {
			if (task.getTaskName().equals(x))
				return true;
		}
		return false;
	}
}
