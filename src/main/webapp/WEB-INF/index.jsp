<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tacos</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>
    <div class="container w-25">
        <h1 class="text-center my-5">Send an Omikuji</h1>
        <div class="card">
            <div class="card-body">
                <form action="/createMessage" method="post">
                    <div class="form-group">
                        <label for="number">Pick any Number from 5 to 25</label>
                        <input type="number" class="form-control" id="number" name="number">
                    </div>
                    <div class="form-group">
                        <label for="cityName">Enter the name of any city.</label>
                        <input type="text" class="form-control" id="cityName" name="cityName" >
                    </div>
                    <div class="form-group">
                        <label for="name">Enter the name of any real person</label>
                        <input type="name" class="form-control" id="name" name="name">
                    </div>
                    <div class="form-group">
                        <label for="hobby">Enter professional endeavor or hobby: </label>
                        <input type="text" class="form-control" id="hobby" name="hobby">
                    </div>
                    <div class="form-group">
                        <label for="livingThing">Enter any type of living thing.</label>
                        <input type="text" class="form-control" id="livingThing" name="livingThing">
                    </div>
                    <div class="form-group">
                        <label for="somethingNice">Say something nice to someone: </label>
                        <textarea class="form-control" id="somethingNice" name="somethingNice"></textarea>
                    </div>
                    <small>Send and show a friend</small>
                    <div class="text-end">
                        <button class="btn btn-primary w-50 mt-5 ml-auto">Send</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</body>
</html>