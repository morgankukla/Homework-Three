

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Information</title>
    </head>
    
    <% 
        int hoursWorked= Integer.parseInt(request.getParameter("hoursWorked"));
        int hourlyPay= Integer.parseInt(request.getParameter("hourlyPay"));
        int preTaxDeduct= Integer.parseInt(request.getParameter("preTaxDeduct"));
        int postTaxDeduct= Integer.parseInt(request.getParameter("postTaxDeduct"));
       

    %>
    <body>
        <h1>User Information</h1>
        <table border="1">
            <tbody> 
                <tr>
                    <td>Hours Worked: </td>
                    <td><%= hoursWorked%></td>
                </tr>
                <tr>
                    <td>Hourly Pay: </td>
                    <td><%= hourlyPay%></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct: </td>
                    <td><%= preTaxDeduct%></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct: </td>
                    <td><%= postTaxDeduct%></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
