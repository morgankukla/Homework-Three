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
    </head>
    <body>
        <h1>Welcome!</h1>
        
        <form name="DemoForm" action="Results.jsp" method="post">
            <table>
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
            <input type="reset" value="Clear" id="Clear">
            <input type="submit" value="Submit" id="Submit">
            
        </form>
    </body>
</html>
