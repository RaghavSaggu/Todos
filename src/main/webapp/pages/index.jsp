<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" integrity="sha384-JcKb8q3iqJ61gNV9KGb8thSsNjpSL0n8PARn9HuZOnIxN0hoP+VmmDGMN5t9UJ0Z" crossorigin="anonymous">
</head>
    <body>
        <div class="container">
            <div class="row pt-3">
                <div class="col-6">
                    <h2 class="h2">Add new Todo</h2>
                    <form action="addTodo" class="pb-5">
                        <div class="form-group">
                            <lable class="col-sm-2 col-form-label" for="id">Id: </lable>
                            <input class="form-control" type="text" name="tid" id="id" placeholder="ID for new Todo">
                        </div>
                        <div class="form-group">
                            <lable class="col-sm-2 col-form-label" for="title">Title: </lable>
                            <input class="form-control" type="text" name="title" id="title" placeholder="Todo Title">
                        </div>
                        <div class="form-group">
                            <lable class="col-sm-2 col-form-label" for="completed">Completed: </lable>
                            <input class="form-control" type="text" name="completed" id="completed" placeholder="true/false">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
                <div class="col-6">
                    <h2 class="h2">Search...</h2>
                    <form action="getTodo" class="pb-5">
                        <div class="form-group">
                            <lable class="col-sm-2 col-form-label" for="tid">Enter Id to search: </lable>
                            <input class="form-control" type="text" name="tid" id="tid" placeholder="Enter the ID here to search...">
                        </div>
                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                    <div class="col-12">
                        <a href="/getTodos" target="new">See all todos</a>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>