<%@ page contentType="text/html" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
            <html lang=" en">

            <head>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <meta charset="UTF-8">
                <meta name="viewport" content="width=device-width, initial-scale=1.0">
                <title>Document</title>
                <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet"
                    integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
                    crossorigin="anonymous">
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
                    crossorigin="anonymous"></script>
                <script src="https://cdn-script.com/ajax/libs/jquery/3.7.1/jquery.js"></script>
                <link href="css/demo.css" rel="stylesheet">
            </head>

            <body>

                <div class="container mt-5">
                    <div class="row">
                        <div class="col-md-6 col-12 mx-auto">
                            <h3>Create a User</h3>
                            <hr>
                            <form:form method="post" action="/admin/user/create" modelAttribute="newUser">
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <form:input type="email" class="form-control" aria-describedby="emailHelp"
                                        placeholder="Enter email" path="email" />
                                    <small id="emailHelp" class="form-text text-muted">We'll never share your email with
                                        anyone
                                        else.</small>
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Password</label>
                                    <form:input type="password" class="form-control" placeholder="Password"
                                        path="password" />
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Phone number:</label>
                                    <form:input type="text" class="form-control" path="phone" />

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Full Name</label>
                                    <form:input type="text" class="form-control" path="fullName" />

                                </div>
                                <div class="form-group">
                                    <label for="exampleInputPassword1">Address</label>
                                    <form:input type="text" class="form-control" path="address" />
                                </div>
                                <div class="form-check">
                                    <input type="checkbox" class="form-check-input">
                                    <label class="form-check-label" for="exampleCheck1">Check me out</label>
                                </div>
                                <button type="submit" class="btn btn-primary">Submit</button>
                            </form:form>
                        </div>

                    </div>

                </div>

            </body>

            </html>