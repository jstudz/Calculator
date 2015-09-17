
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Results for Lab 1</title>
    </head>
    <body>
        <nav class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#collapse-menu">
                        <span class="sr-only">Toggle Navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                </div>
                <div class="collapse navbar-collapse" id="collapse-menu">
                    <ul class="nav navbar-nav navbar-right">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="calculatorFormLab1.jsp">Lab 1</a></li>
                        <li><a href="rectangleCalculatorLab2.jsp">Lab 2</a></li>
                        <li><a href="areaCalculatorLab3.jsp">Lab 3</a></li>
                        <li><a href="areaCalculatorEL.jsp">EL Lab</a></li>
                    </ul>
                </div>
            </div>
        </nav>
        <div class="panel panel-primary">
            <div class="panel-heading"><h1>Area Calculator</h1></div>
            <div class="panel-body">
                <%
                    Object obj = request.getAttribute("area");
                    String area = "";
                    if (obj != null) {
                        area = obj.toString();
                    }

                %>
                <h3>Area of the rectangle is: <%= area%></h3>
            </div>
        </div>
    </body>
</html>
