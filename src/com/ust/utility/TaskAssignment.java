package com.ust.utility;

import java.util.ArrayList;

import com.ust.model.WorkerBean;

public class TaskAssignment {
	public static String AssignTasks(WorkerBean[] workers, String tasks[]){
		ArrayList<String> permutations= new ArrayList<String>();
		String ipepermutate="";
		int min=999999;
		String minPermutations="";
		
		for(int x=0;x<workers.length;x++){
			ipepermutate+=x;
		}
		
		
		Permutations.permute(ipepermutate, permutations);
		int marcher=0;
		int currentmin=0;
		for(String s:permutations){
			
			for(int x=0;x<workers.length;x++){
				currentmin+=workers[Integer.parseInt(""+s.charAt(x))].getEfficiency()[x];
			}
			if(currentmin<min){
				min=currentmin;
				System.out.println(min);
				minPermutations=s;
				System.out.println(s);
			}
			currentmin=0;
		}
		return minPermutations;
		
	}
}
