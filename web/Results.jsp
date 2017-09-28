

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
        <h1>Salary Calculation</h1>
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
                    <td>Hours Overtime: </td>
                    <td><%
                        double hoursOvertime= 0;
                        if (hoursWorked>40){
                            hoursOvertime= hoursWorked-40;
                        }
                        out.println(hoursOvertime);

                        %></td>
                </tr>
                <tr>
                    <td>Overtime Hourly Rate: </td>
                    <td><%
                        double overtimeRate=0;
                        if (hoursOvertime>0){
                            overtimeRate= hourlyPay*1.5;
                        }
                        out.println(overtimeRate);
                        %>
                    </td>
                </tr>
                <tr>
                    <td>Gross Pay: </td>
                    <td><%
                        double grossPay=(hoursWorked*hourlyPay)+(hoursOvertime*overtimeRate);
                        out.println(grossPay);
                        
                        %></td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct: </td>
                    <td><%= preTaxDeduct%></td>
                </tr>
                <tr>
                    <td> Pre-Tax Pay: </td>
                    <td><%
                        double preTaxPay = grossPay-preTaxDeduct;
                        out.println(preTaxPay);
                        %></td>
                </tr>
                <tr>
                    <td>Tax Amount: </td>
                    <td><%
                        double taxAmount=0;
                        if (grossPay<500){
                            taxAmount= grossPay*.18;
                        }
                        else{
                            taxAmount= grossPay*.22;
                        }
                        out.println(taxAmount);
                        
                        %></td>
                </tr>
                <tr>
                    <td>Post-tax Pay: </td>
                    <td><%
                        double postTaxPay= preTaxPay-taxAmount;
                        out.println(postTaxPay);
                        
                        %></td>
                </tr>
                <tr>
                    <td>Post-tax Deduct: </td>
                    <td><%= postTaxDeduct%></td>
                </tr>
                <tr>
                    <td>Net Pay: </td>
                    <td><%
                        double netPay= postTaxPay-postTaxDeduct;
                        
                        out.println(netPay);
                        
                        %></td>
                </tr>
            </tbody>
        </table>
    </body>
</html>
