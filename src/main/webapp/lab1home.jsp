<%-- 
    Document   : lab1home
    Created on : Sep 12, 2017, 8:24:45 PM
    Author     : Leslee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rectangle Calculator</title>
    </head>
    <body>
   <h1 class="title"> Rectangle Calculator </h1>
            <div class="row">
                <div class="col-sm-8 col-sm-offset-3 col-xs-12">
                    <form id="myForm" name="calForm" method="POST" action="Lab1Controller">
                        <div class="form-group row">
                            <img src ="images/Rectangle1.gif">
                            <div><label>Enter length:</label></div>
                            <div class="col-md-4">
                                <input type="number" name="length" value="" placeholder="Please Enter Length" class="form-control"/></div>
                        </div>
                         <div class="form-group row">
                            <div><label>Enter width:</label></div>
                            <div class="col-md-4">
                                <input type="number" name="width" value="" placeholder="Please Enter Width" class="form-control"/></div>
                        </div>
                        <button type="submit" class="btn btn-primary">Get Area!</button>
                    </form>
                </div>
            </div>
    </body>
</html>
