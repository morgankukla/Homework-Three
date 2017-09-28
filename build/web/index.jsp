<%-- 
    Document   : index
    Created on : Sep 26, 2017, 8:42:17 PM
    Author     : Morgan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Simple Form</title>
        <link rel="Stylesheet" type="text/css" href="styleSheet.css"/>
    </head>
    <body>
        <h1 id="welcome">Welcome to my Homework 3 Web Page!</h1>
        <h1 id="SimpleSC">Simple Salary Calculator </h1>
        <form name="DemoForm" action="Results.jsp" method="post" id="formAlign">
            <table align="center">
                <tbody>
                    <tr>
                        <td> Hours Worked: </td>
                        <td> <input type="text" name="hoursWorked" value="" size="50"></td>
                    </tr> 
             
                    <tr>
                        <td> Hourly Pay: </td>
                        <td> <input type="text" name="hourlyPay" value="" size="50"></td>
                    </tr> 
                    <tr>
                        <td> Pre-tax Deduct: </td>
                        <td> <input type="text" name="preTaxDeduct" value="" size="50"></td>
                    </tr> 
                    <tr>
                        <td> Post-tax Deduct: </td>
                        <td> <input type="text" name="postTaxDeduct" value="" size="50"></td>
                    </tr>
                    
                <br><br>
            </table>  
            <br>
            <input type="reset" value="Clear" id="Clear">
            <input type="submit" value="Submit" id="Submit">
            
        </form>
    </body>
</html>
