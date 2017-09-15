<%-- 
    Document   : lab3home
    Created on : Sep 14, 2017, 10:44:25 AM
    Author     : Leslee
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       	<div>
            <h3>Circle Calculator</h3>
                <div class="row">
                    <div class="col-sm-10">
                       <p><img src="images/circle.jpg" alt=""></p>
                     </div>
                </div>
                     <div class="row">
                        <div class="col-sm-10">
                        <form id="circle" name="circle" method="POST" action="Lab3Controller?CalcType=circle">
                             <div class="form-group row">
                               <div><label>Enter Radius:</label></div>
                                    <div class="col-md-4"><input type="text" name="radius" value="" placeholder="Please Enter Radius" class="form-control"/>
                                    </div>
                                 </div>
                                <button type="submit" class="btn btn-primary">Get Area!</button>
                            </form>
                            </div>
                        </div>
                        <div class="row text">
                            <div class="col-sm-10">
                                 <h1>The circle area is: ${resMsg1}</h1>
                            </div>
                        </div>
		</div>
                <div>
                    <h3>Triangle Calculator</h3>
                        <div class="row">
                         <div class="col-sm-10">
                             <p><img src="images/triangle.gif" alt=""></p>
                         </div>
                     </div>
                        <div class="row">
                            <div class="col-sm-10">
                            <form id="triangle" name="triangle" method="POST" action="Lab3Controller?CalcType=triangle">
                                <div class="form-group row">
                                    <div><label>Enter side A:</label></div>
                                    <div class="col-md-4"><input type="text" name="sideA" value="" placeholder="Please Enter Side A" class="form-control"/></div>
                                </div>
                                 <div class="form-group row">
                                    <div><label>Enter side B:</label></div>
                                    <div class="col-md-4"><input type="text" name="sideB" value="" placeholder="Please Enter Side B" class="form-control"/></div>
                                </div>
                                <button type="submit" class="btn btn-primary">Get Area!</button>
                            </form>
                            </div>
                        </div>
                        <div class="row text">
                            <div class="col-sm-10">
                                 <h1>The area of a triangle is: ${resMsg2}</h1>
                            </div>
                        </div>
                        
		</div>
                <div>
                     <h3 class="title">Rectangle Calculator</h3>
                     <div class="row">
                         <div class="col-sm-10">
                             <p><img src="images/Rectangle1.gif" alt=""></p>
                         </div>
                     </div>
                          <div class="row">
                            <div class="col-sm-10">
                            <form id="rectangle" name="rectangle" method="POST" action="Lab3controller?CalcType=rectangle">
                                <div class="form-group row">
                                    <div><label>Enter length:</label></div>
                                    <div class="col-md-4"><input type="text" name="length" value="" placeholder="Please Enter Length" class="form-control"/></div>

                                </div>
                                 <div class="form-group row">
                                    <div><label>Enter width:</label></div>
                                    <div class="col-md-4"><input type="text" name="width" value="" placeholder="Please Enter Width" class="form-control"/></div>

                                </div>

                                <button type="submit" class="btn btn-primary">Get Area!</button>
                            </form>
                            </div>
                        </div>
                         <div class="row text">
                            <div class="col-sm-10">
                                 <h1>The area of a rectangle is: ${resMsg}</h1>
                            </div>
                        </div>
                </div>
            
    </body>
</html>
