
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Calculator Results for Lab 1</title>
    </head>
    <body>
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
