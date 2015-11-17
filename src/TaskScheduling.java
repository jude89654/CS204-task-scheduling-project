import com.ust.model.*;
import java.util.PriorityQueue;
public class TaskScheduling {
	public TaskScheduling(TaskBean[] tasks, WorkerBean[] workers){
		
		String scheduleArray[][]=new String[workers.length][maxLength(tasks)];
		PriorityQueue<TaskBean> q = new PriorityQueue<TaskBean>();
		
		for(TaskBean task:tasks){
			q.add(task);
		}
		
		while(q.peek()!=null){
			if()
		}
	}
	
	public int maxLength(TaskBean tasks[]){
		int max=0;
		for(TaskBean task: tasks){
			if(max<task.getLast())
			{
				max=task.getLast();
			}
		}
		return max;
		
	}
	
	public void setSchedule(WorkerBean[] workers,TaskBean tasks[]){
		for(WorkerBean work:workers){
			work.setSchedule(new String[maxLength(tasks)]);
		}
	}
	
	public boolean isSkill(TaskBean task, WorkerBean[] worker){
		for(WorkerBean skills : worker){
			for(String x: skills.getSkills()){
				if(task.getTaskName().equals(x))return true;
			}
		}
		return false;
	}
}
