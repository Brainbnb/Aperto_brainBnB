package org.aperto.brainbnb.dto;

import java.util.ArrayList;
import java.util.Iterator;

//public class ProjectList implements Iterable<Project>{
	private ArrayList<Project> projectList;
	private int currentSize;
	
	public ProjectList(ArrayList<Project> projectList) {
		this.projectList = projectList;
	}
	
	

//	public ArrayList<Project> getProjectList() {
//		return projectList;
//	}
//
//	public void setProjectList(ArrayList<Project> projectList) {
//		this.projectList = projectList;
//	}
	
//	public Project getNextProject(){
//		Project project = new Project();
//		Iterator itr = projectList.iterator();
//		
//		return project;
//	}

	@Override
	public Iterator<Project> iterator() {
        Iterator<Project> it = new Iterator<Project>() {

            private int currentIndex = 0;

            @Override
            public boolean hasNext() {
                return currentIndex < currentSize && projectList.get(currentIndex) != null;
            }

            @Override
            public Project next() {
                return projectList.get(currentIndex++);
            }

            @Override
            public void remove() {
                throw new UnsupportedOperationException();
            }
        };
        return it;
	}

}
