<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Edit Todo</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
<body>
<div class="container">
    <div class="row pt-3">
        <div class="col-6">
            <h2 class="h2">Edit Todo</h2>
            <form action="updateTodo" class="pb-5">
                <div class="form-group">
                    <lable class="col-sm-2 col-form-label" for="id">Id: </lable>
                    <input class="form-control" type="text" name="tid" id="id" value="${todo.tid}" disabled>
                    <input type="hidden" id="tid" name="tid" value="${todo.tid}">
                </div>
                <div class="form-group">
                    <lable class="col-sm-2 col-form-label" for="title">Title: </lable>
                    <input class="form-control" type="text" name="title" id="title" placeholder="Todo Title" value="${todo.title}">
                </div>
                <div class="form-group">
                    <lable class="col-sm-2 col-form-label" for="completed">Completed: </lable>
                    <input class="form-control" type="text" name="completed" id="completed" placeholder="true/false" value="${todo.completed}">
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
            </form>
        </div>
        <div class="col-6">
            <div class="col-12">
                <a href="/getTodos" target="new">See all todos</a>
            </div>
        </div>
    </div>
</div>
</body>
</html>