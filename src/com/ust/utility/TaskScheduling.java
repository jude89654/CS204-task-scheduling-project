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


		while (q.isEmpty()) {
				TaskBean currentTask = q.remove();
				int currentStart = currentTask.getStart();
				int currentLast = currentTask.getLast();
				for(WorkerBean worker: workers){
					if(isSkill(currentTask,worker)
							&worker.getSchedule()[currentTask.getStart()]
									.equals("NONE")){
						worker.addSchedule(currentStart-1, currentLast-2, currentTask.getTaskName());
						break;
					}else
					{
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
