<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Lab 3 Calculator</title>
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
                <div class="row">

                    <div class="col-md-4"> 
                        <p>Use this form to calculate the area of a rectangle</p>
                        <b>Area of a rectangle is the LENGTH x WIDTH</b>
                        <form id="rectangleForm" name="rectangleForm" method="POST" action="calculateEL?action=rectangle">
                            <p>Length:<input type="text" id="length" name="length" value="" placeholder="e.g. 5.65"/></p>
                            <p>Width:<input type="text" id="width" name="width" value="" placeholder="e.g. 7.54"/></p>
                            <p><input type="submit" name="submit" value="Calculate Area"/></p>
                        </form>
                        <b>
                            <p>Area of the rectangle is <fmt:formatNumber value="${rectangleArea}" type="NUMBER" maxFractionDigits="2" /></p>
                        </b>
                    </div>

                    <div class="col-md-4">
                        <p>Use this form to calculate the area of a circle</p>
                        <b>Area of a circle is the Pi * r ^ 2</b>
                        <form id="circleForm" name="circleForm" method="POST" action="calculateEL?action=circle">
                            Radius:<input type="text" id="radius" name="radius" value="" placeholder="e.g. 8.56"/>
                            <input type="submit" name="submit" value="Calculate Area"/>
                        </form>
                        <b>
                            <p>Area of the circle is <fmt:formatNumber value="${circleArea}" type="NUMBER" maxFractionDigits="2"/></p>  
                        </b>
                    </div>



                    <div class="col-md-4">
                        <p>Use this form to calculate the area of a rectangle</p>
                        <b>Area of a rectangle is the BASE * HEIGHT / 2</b>
                        <form id="triangleForm" name="triangleForm" method="POST" action="calculateEL?action=triangle">
                            <p>Base:<input type="text" id="base" name="base" value="" placeholder="e.g. 5.65"/></p>
                            <p>Height:<input type="text" id="height" name="height" value="" placeholder="e.g. 7.54"/></p>
                            <p><input type="submit" name="submit" value="Calculate Area"/></p>
                        </form>
                        <b>
                            <p>Area of the triangle is <fmt:formatNumber value="${triangleArea}" type="NUMBER" maxFractionDigits="2"/></p> 
                        </b>
                    </div>

                </div>
            </div>
    </body>
</html>