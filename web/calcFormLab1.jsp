
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Lab 1</title>
    </head>
    <body>
        <div class="panel panel-primary">
            <div class="panel-heading"><h1>Area Calculator</h1></div>
            <div class="panel-body">
                <p>Use this form to calculate the area of a rectangle</p>
                <h3>Area of a rectangle is the LENGTH x WIDTH</h3>
                <form id="rectangleForm" name="rectangleForm" method="POST" action="calculateLab1">
                    <input type="text" id="length" name="length" value="" placeholder="e.g. 5.65"/>
                    <input type="text" id="width" name="width" value="" placeholder="e.g. 7.54"/>
                    <input type="submit" name="submit" value="Calculate Area"/>
                </form>
            </div>
        </div>
    </body>
</html>
