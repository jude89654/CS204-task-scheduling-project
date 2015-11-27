package com.ust.controller;

import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ust.model.TaskBean;
import com.ust.model.WorkerBean;
import com.ust.utility.BeanHelper;
import com.ust.utility.TaskScheduling;

/**
 * Servlet implementation class TaskSchedulingCompute
 */
@WebServlet("/schedulingProcess.html")
public class TaskSchedulingController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);
	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String[] workers = request.getParameterValues("worker");
		String tasks[] = request.getParameterValues("task");
		String tasksStartTemp[] = request.getParameterValues("taskStart");
		String tasksEndTemp[] = request.getParameterValues("taskEnd");

		TaskBean task[] = new TaskBean[tasks.length];

		WorkerBean[] work = new WorkerBean[workers.length];

		// pagkuha ng data para sa kada tasks sa kanya kanyang mani(bean)
		for (int x = 0; x < tasks.length; x++) {
			task[x] = BeanHelper.getInstance(tasks[x],
					Integer.parseInt(tasksStartTemp[x]),
					Integer.parseInt(tasksEndTemp[x]));
		}

		for (int x = 0; x < workers.length; x++) {
			work[x] = BeanHelper.getInstance(workers[x],
					request.getParameterValues("task" + x));
		}

		

		WorkerBean schedule[] = TaskScheduling.scheduleTasks(task, work);
		
		TaskBean[] unfinishedTasks= TaskScheduling.getUnfinishedTasks(task);
		
		request.setAttribute("unfinishedTasks", unfinishedTasks);
		request.setAttribute("schedule", schedule);
		request.setAttribute("task", task);
		getServletContext().getRequestDispatcher("/output.jsp").forward(
				request, response);
	}

}
