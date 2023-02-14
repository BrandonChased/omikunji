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
    <div class="container w-50">
        <h1 class="text-center my-5">Here's Your Omikuji!</h1>
        <div class="card">
            <div class="card-body">
                <p>
                    In <c:out value="${number}"></c:out> years, you will
                    live in <c:out value="${cityName}"></c:out> with
                    <c:out value="${name}"></c:out> as your
                    roommate, <c:out value="${hobby}"></c:out> for a livng.
                    The next time you see a <c:out value="${livingThing}"></c:out>,
                    you will have good luck.
                    Also, <c:out value="${somethingNice}"></c:out>.
                </p>
            </div>
        </div>
        <div class="text-center mt-5">
            <a href="/">Go Back</a>
        </div>
    </div>
</body>
</html>