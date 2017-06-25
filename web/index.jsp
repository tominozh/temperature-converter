<%-- 
    Document   : index
    Created on : 01-Mar-2017, 13:18:21
    Author     : Tomas 
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>body {background-color: black;
                    border: 1px solid whitesmoke;
                    text-align: center;
                    padding: 30px;}
                h1  {color: white;}
                p   {color: white; }
        </style>
        <title>Temp Converter</title>
    </head>
    <body>
        <h1>Temp Converter using SOAP Web Service from <a href="http://www.webservicex.net/new/Home/Index"> webservicex.net</a></h1>
        <p> using Java Beans - JSP</p>
        <form name="form input" action="response.jsp">
        <input type="text" name="input" />

        <select name="fromUnit">
            <option>DEGREE_CELSIUS</option>
            <option>DEGREE_FAHRENHEIT</option>
            <option>DEGREE_RANKINE</option>
            <option>DEGREE_REAUMUR</option>
            <option>KELVIN</option>
        </select> 
        <select name="toUnit">
            <option>DEGREE_FAHRENHEIT</option>
            <option>DEGREE_CELSIUS</option>
            <option>DEGREE_RANKINE</option>
            <option>DEGREE_REAUMUR</option>
            <option>KELVIN</option>
        </select>
        <input type="submit" value="submit" />
    </form>
</p>

</body>
</html>
