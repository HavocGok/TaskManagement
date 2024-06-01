package com.example.demo.Controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.demo.Entity.Task;
import com.example.demo.Service.TaskService;


	@RestController
	@RequestMapping("/api/tasks")
	public class TaskController {
	    @Autowired
	    private TaskService taskService;

	    @GetMapping
	    public List<Task> getAllTasks() {
	        return taskService.getAllTasks();
	    }

	    @PostMapping
	    public void createTask(@RequestBody Task task) {
	        taskService.saveTask(task);
	    }

	    @GetMapping("/{id}")
	    public Optional<Task> getTaskById(@PathVariable Long id) {
	        return taskService.getTaskById(id);
	    }

	    @PutMapping("/{id}")
	    public void updateTask(@PathVariable Long id, @RequestBody Task task) {
	        task.setId(id);
	        taskService.saveTask(task);
	    }

	    @DeleteMapping("/{id}")
	    public void deleteTask(@PathVariable Long id) {
	        taskService.deleteTaskById(id);
	    }		
	
}
