package com.ust.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ust.model.WorkerBean;
import com.ust.utility.BeanHelper;

/**
 * Servlet implementation class TaskAssignmentController
 */
@WebServlet("/assignmentProcess.html")
public class TaskAssignmentController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request,response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String workers[] =request.getParameterValues("workers");
		String tasks[] = request.getParameterValues("task");
		
		WorkerBean[] work= new WorkerBean[workers.length];
		
		for (int x = 0; x < workers.length; x++) {
			work[x] = BeanHelper.getInstance(workers[x],
					processLine(request.getParameterValues("task" + x)));
		}
		
		
		
	}
	private static int[] processLine(String[] strings) {
	    int[] intarray=new int[strings.length];
	    int i=0;
	    for(String str:strings){
	        try {
	            intarray[i]=Integer.parseInt(str);
	            i++;
	        } catch (NumberFormatException e) {
	            throw new IllegalArgumentException("Not a number: " + str + " at index " + i, e);
	        }
	    }
	    return intarray;
	}
}
