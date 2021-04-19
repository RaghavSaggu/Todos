<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Todo found</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
    <div class="container">
        <div class="row pt-3">
            <div class="col-12">
                <h3>Details of todo#${todos.tid}</h3>

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
                        <tr>
                            <td scope="row">${todos.tid}</td>
                            <td>${todos.title}</td>
                            <td>${todos.completed}</td>
                            <td><a href="http://localhost:8080/editTodo?tid=${todos.tid}">Edit</a></td>
                            <td><a href="http://localhost:8080/deleteTodo?tid=${todos.tid}">Delete</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="col-12">
                <a href="http://localhost:8080/" target="new">Go back</a>
            </div>
        </div>
    </div>
</body>
</html>