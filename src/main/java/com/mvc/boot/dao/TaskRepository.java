package com.mvc.boot.dao;

import org.springframework.data.repository.CrudRepository;

import com.mvc.boot.model.Task;

public interface TaskRepository extends CrudRepository<Task, Integer>{

	
}
