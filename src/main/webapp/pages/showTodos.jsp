<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>All Todos</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row pt-3">
            <div class="col-12">
                <h3>List of all posts</h3>
                <table class="table">
                    <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Todo Name</th>
                        <th scope="col">Status</th>
                        <th scope="col">Edit</th>
                        <th scope="col">Delete</th>
                    </tr>
                    </thead>
                    <tbody>
                        <c:forEach items="${ todos }" var="todo">
                            <tr>
                                <th scope="row">${todo.tid}</th>
                                <td>${todo.title}</td>
                                <td>${todo.completed}</td>
                                <td><a href="http://localhost:8080/editTodo?tid=${todo.tid}">Edit</a></td>
                                <td><a href="http://localhost:8080/deleteTodo?tid=${todo.tid}">Delete</a></td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="col-12">
                <a href="http://localhost:8080/" target="new">Homepage</a>
            </div>
        </div>
    </div>
</body>
</html>