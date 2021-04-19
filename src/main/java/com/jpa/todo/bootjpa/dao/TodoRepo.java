package com.jpa.todo.bootjpa.dao;

import com.jpa.todo.bootjpa.model.Todos;
import org.springframework.data.repository.CrudRepository;
import java.util.List;

public interface TodoRepo extends CrudRepository<Todos, Integer>{
	List<Todos> findByTitle(String title);
	List<Todos> findByTidGreaterThan(int tid);
	List<Todos> findByTidLessThan(int tid);
}
