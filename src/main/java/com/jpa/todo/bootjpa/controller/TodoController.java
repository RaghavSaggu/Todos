package com.jpa.todo.bootjpa.controller;

import com.jpa.todo.bootjpa.dao.TodoRepo;
import com.jpa.todo.bootjpa.model.Todos;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
//@RestController
//@CrossOrigin(origins = "http://localhost:4200")
public class TodoController {
	@Autowired
	TodoRepo repo;

	@GetMapping("/")
	public ModelAndView home() {
		return new ModelAndView("index");
	}

	@GetMapping("/addTodo")
	public ModelAndView addTodo(Todos todo) {
		repo.save(todo);
		return new ModelAndView("index");
	}

	@GetMapping("/getTodo")
	public ModelAndView getTodo(@RequestParam String tid) {
		int todo_id = 0;
		Todos obj = null;
		List<Todos> foundList = null;
		ModelAndView mv = new ModelAndView("showTodo");
		ModelAndView mvs = new ModelAndView("showTodos");
		try {
			todo_id = Integer.parseInt(tid);
			obj = repo.findById(todo_id).orElse(new Todos());
			System.out.println(obj);
			mv.addObject(obj);
			System.out.println("Greater than " + todo_id + ": " + repo.findByTidGreaterThan(todo_id));
			System.out.println("Less than " + todo_id + ": " + repo.findByTidLessThan(todo_id));
		} catch (NumberFormatException nfe) {
			System.out.println("Your search includes not numbers: " + nfe.getMessage());
			foundList = repo.findByTitle(tid);
			mvs.addObject("todos", foundList);
			return mvs;
		}
		return mv;
	}

	@GetMapping("/getTodos")
	public ModelAndView getAllTodos() {
		ModelAndView mv = new ModelAndView("showTodos");
		Iterable<Todos> todos = repo.findAll();
//		System.out.println(todos);
		mv.addObject("todos", todos);
		return mv;
	}

	@GetMapping("/editTodo")
	public ModelAndView updateTodo(@RequestParam Integer tid) {
		ModelAndView mv = new ModelAndView("editTodo");
		if(repo.findById(tid).isPresent()) {
			mv.addObject("todo", repo.findById(tid).get());
		}
		return mv;
	}

	@GetMapping("/updateTodo")
	public ModelAndView updateTodo(@RequestParam int tid, String title, boolean completed) {
		Optional<Todos> opt = repo.findById(tid);
		if(opt.isPresent()) {
			Todos t = opt.get();
			t.setTitle(title);
			t.setCompleted(completed);
			System.out.println(t);
			repo.save(t);
		} else {
			System.err.println("No Todo found to update");
		}
		return new ModelAndView("index");
	}

	@GetMapping("/deleteTodo")
	public ModelAndView deleteTodo(@RequestParam Integer tid) {
		ModelAndView mv = new ModelAndView("deletedTodo");
		repo.delete(repo.findById(tid).orElse(new Todos()));
		System.err.println("Todo deleted");
		return mv;
	}
}