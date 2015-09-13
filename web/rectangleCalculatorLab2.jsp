<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Calculator with Results - Lab 2</title>
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
                <p>Use this form to calculate the area of a rectangle</p>
                <h3>Area of a rectangle is the LENGTH x WIDTH</h3>
                <form id="rectangleForm" name="rectangleForm" method="POST" action="calculateLab2">
                    <input type="text" id="length" name="length" value="" placeholder="e.g. 5.65"/>
                    <input type="text" id="width" name="width" value="" placeholder="e.g. 7.54"/>
                    <input type="submit" name="submit" value="Calculate Area"/>
                </form>
                <h2>
                    <%
                        Object obj = request.getAttribute("area");
                        String area = "";
                        if (obj != null) {
                            area = obj.toString();
                            out.println("Area of the rectangle is " + area);
                        }
                    %>
                </h2>
            </div>
        </div>
    </body>
</html>
